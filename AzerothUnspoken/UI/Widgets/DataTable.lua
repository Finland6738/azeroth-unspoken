-- Azeroth Unspoken: the DataTable of the NEBULA look (UI-ECO step UI-3; adapted from the sister addon's
-- UI/Widgets/DataTable.lua): a header on surface-2 **outside** the list, sortable columns (the sorted one in accent-text
-- and marked with an arrow, not by colour only), fixed and flexible columns, mono numbers. Lua 5.1; ordinary frames.
-- The rows come from one of three backends, the first one the client has (Core/Compat.lua makes each one):
--   "scrollbox"  the client's ScrollBox with a linear view and a DataProvider (FDCP §3, the spec's first choice);
--   "faux"       a FauxScrollFrame with its scroll bar over a pool of rows;
--   "pool"       a fixed pool of rows scrolled with the mouse wheel (always works; the tests use it).
-- A failure while the ScrollBox is filled moves the table to the next backend for good, reported to the diagnostics.
-- Not tried in the game client: the ScrollBox and the FauxScrollFrame are predictions until the owner tries them.
--
-- columns: { { id, title (translated), width? (fixed), flex? (share of the free width), align? "LEFT" | "RIGHT" | "CENTER",
--   sortable? (default true), mono? (numbers, in accent-text unless token says otherwise), text = function(data) -> string,
--   token? = function(data) -> token, value? = function(data) -> sort key (default: the text),
--   render? = function(cell, data, row) (custom cell) } }
-- opts: { rowHeight (32, at least 24), headerHeight (28), pool (rows made for "faux" and "pool", 40), backend? (force one),
--   onRowClick(data, row), rowSetup(row) (a row frame is made), rowUpdate(row, data) (a row is filled) }
-- Methods: :SetData(list), :SortBy(id, descending), :Refresh(), :SetOffset(n), :VisibleRows(), :GetData(), :GetSort(),
--   :SetEmptyText(text), :Backend(), :ClearSort(), :SetSortable(bool), :SetHeaderShown(bool).
local ADDON, NS = ...
local W, Theme, Compat = NS.Widgets, NS.Theme, NS.Compat

local floor, max, min = math.floor, math.max, math.min
local tableSeq = 0

local function textOf(col, data)
	local v = col.text and col.text(data)
	return v == nil and "" or tostring(v)
end

local function keyOf(col, data)
	if col.value then return col.value(data) end
	local v = textOf(col, data)
	return tonumber(v) or v:lower()
end

---The backend a new table uses in this client: "scrollbox", "faux" or "pool".
---@return string
function W.TableBackend()
	if Compat:HasScrollBox() then return "scrollbox" end
	if Compat:HasFauxScroll() then return "faux" end
	return "pool"
end

function W.DataTable(parent, columns, opts)
	opts = opts or {}
	local rowH, headH = max(opts.rowHeight or 32, 24), max(opts.headerHeight or 28, 24)
	local t = CreateFrame("Frame", nil, parent)
	t.columns, t.data, t.sorted, t.rows = columns, {}, {}, {}
	t.offset, t.rowH, t.headH = 0, rowH, headH
	t.sortId, t.sortDesc = nil, false

	t.head = CreateFrame("Frame", nil, t)
	t.head:SetHeight(headH)
	t.head:SetPoint("TOPLEFT", t, "TOPLEFT", 0, 0)
	t.head:SetPoint("TOPRIGHT", t, "TOPRIGHT", 0, 0)
	t.head.fill = Theme.Slice(t.head, "rr_fill_8", "surface-2", "BACKGROUND")
	t.head.fill:SetAllPoints(t.head)
	t.list = CreateFrame("Frame", nil, t)
	t.list:SetPoint("TOPLEFT", t.head, "BOTTOMLEFT", 0, -2)
	t.list:SetPoint("BOTTOMRIGHT", t, "BOTTOMRIGHT", 0, 0)
	t.empty = Theme.NewText(t.list, "Body", "text-3")
	t.empty:SetPoint("TOPLEFT", t.list, "TOPLEFT", 12, -12)

	-- the column positions: the fixed ones keep their width, the flexible ones share what is left
	local function widths()
		local total = (t:GetWidth() or 0) > 50 and t:GetWidth() or 800
		local fixed, flex = 0, 0
		for _, c in ipairs(columns) do
			if c.width then fixed = fixed + c.width else flex = flex + (c.flex or 1) end
		end
		local free = max(total - fixed - 16, 0)
		local out, x = {}, 8
		for i, c in ipairs(columns) do
			local w = c.width or (flex > 0 and floor(free * (c.flex or 1) / flex) or 0)
			out[i] = { x = x, w = w }
			x = x + w
		end
		return out
	end

	local function place(fs, frame, col, pos)
		fs:ClearAllPoints()
		fs:SetWidth(max(pos.w - 8, 1))
		fs:SetJustifyH(col.align or "LEFT")
		fs:SetPoint("LEFT", frame, "LEFT", pos.x, 0)
	end

	-- header: one button per column, at least 24 units wide and high
	t.heads = {}
	for i, c in ipairs(columns) do
		local b = CreateFrame("Button", nil, t.head)
		b:SetHeight(headH)
		b:SetWidth(max(c.width or 24, 24))
		b.label = Theme.NewText(b, "Th", "text-3")
		b.label:SetAllPoints(b)
		b.label:SetJustifyH(c.align or "LEFT")
		b.arrow = W.Icon(b, "chevron", 12, "accent-text", "ARTWORK")
		b.arrow:Hide()
		b.col = c
		if c.sortable ~= false then b:SetScript("OnClick", function() if t.sortable ~= false then t:SortBy(c.id) end end) end
		t.heads[i] = b
	end
	local function titles()
		for _, b in ipairs(t.heads) do b.label:SetText((b.col.title or ""):upper()) end
	end
	titles()

	function t:Layout()
		local pos = widths()
		self.pos = pos
		for i, b in ipairs(self.heads) do
			b:ClearAllPoints()
			b:SetPoint("LEFT", self.head, "LEFT", pos[i].x, 0)
			b:SetWidth(max(pos[i].w - 4, 24))
			b.arrow:ClearAllPoints()
			b.arrow:SetPoint("RIGHT", b, "RIGHT", -4, 0)
		end
		for _, r in ipairs(self.rows) do
			if r.cells then for i, fs in ipairs(r.cells) do place(fs, r, columns[i], pos[i]) end end
		end
		if self.backendName == "scrollbox" and self.box and self.box.ForEachFrame then
			pcall(self.box.ForEachFrame, self.box, function(r)
				if r.cells then for i, fs in ipairs(r.cells) do place(fs, r, columns[i], pos[i]) end end
			end)
		end
	end

	-- a row frame gets its parts once (the pool makes them at once, the ScrollBox when it first hands a frame over)
	local function setupRow(r)
		if r.cells then return end
		r:SetHeight(rowH)
		r.hover = r:CreateTexture(nil, "BACKGROUND")
		Theme.Fill(r.hover, "surface-2", 0)
		r.hover:SetAllPoints(r)
		r.line = r:CreateTexture(nil, "BORDER")
		Theme.Fill(r.line, "border-subtle")
		r.line:SetPoint("BOTTOMLEFT", r, "BOTTOMLEFT", 0, 0)
		r.line:SetPoint("BOTTOMRIGHT", r, "BOTTOMRIGHT", 0, 0)
		r.line:SetHeight(Theme.Px(1))
		r.cells = {}
		for ci, c in ipairs(columns) do
			r.cells[ci] = Theme.NewText(r, c.mono and "Mono" or "Body", c.mono and "accent-text" or "text-1")
			if r.cells[ci].SetWordWrap then r.cells[ci]:SetWordWrap(false) end
		end
		r:HookScript("OnEnter", function(self) Theme.Fill(self.hover, "surface-2", 1) end)
		r:HookScript("OnLeave", function(self) Theme.Fill(self.hover, "surface-2", 0) end)
		r:SetScript("OnClick", function(self) if opts.onRowClick and self.data then opts.onRowClick(self.data, self) end end)
		if t.pos then for i, fs in ipairs(r.cells) do place(fs, r, columns[i], t.pos[i]) end end
		if opts.rowSetup then opts.rowSetup(r) end
	end

	local function fillRow(r, data)
		setupRow(r)
		r.data = data
		for ci, c in ipairs(columns) do
			local fs = r.cells[ci]
			if c.render then
				c.render(fs, data, r)
			else
				fs:SetText(textOf(c, data))
				Theme.Text(fs, c.token and c.token(data) or (c.mono and "accent-text" or "text-1"))
			end
		end
		if opts.rowUpdate then opts.rowUpdate(r, data) end
	end

	-- --- backends ---
	local backend = opts.backend or W.TableBackend()

	local function makePool(withScroll)
		if t.poolMade then return end
		t.poolMade = true
		for i = 1, opts.pool or 40 do
			local r = CreateFrame("Button", nil, t.list)
			r:SetPoint("TOPLEFT", t.list, "TOPLEFT", 0, -(i - 1) * rowH)
			r:SetPoint("TOPRIGHT", t.list, "TOPRIGHT", withScroll and -26 or 0, -(i - 1) * rowH)
			setupRow(r)
			r:Hide()
			t.rows[i] = r
		end
		t.list:EnableMouseWheel(true)
		t.list:SetScript("OnMouseWheel", function(_, delta) t:SetOffset(t.offset - delta * 3) end)
	end

	local function useFaux()
		tableSeq = tableSeq + 1
		local scroll = Compat:FauxScrollFrame(t.list, "AzerothUnspokenTable" .. tableSeq)
		if not scroll then return false end
		t.scroll = scroll
		scroll:SetPoint("TOPLEFT", t.list, "TOPLEFT", 0, 0)
		scroll:SetPoint("BOTTOMRIGHT", t.list, "BOTTOMRIGHT", -26, 0)
		scroll:SetScript("OnVerticalScroll", function(self, value)
			Compat:FauxScrolled(self, value, rowH, function()
				t.offset = Compat:FauxOffset(self)
				t:Paint()
			end)
		end)
		makePool(true)
		return true
	end

	local function useScrollBox()
		local box = Compat:ScrollBoxList(t.list, rowH, function(row, data)
			local ok, err = pcall(fillRow, row, data)
			if not ok and NS.Diagnostics then NS.Diagnostics:Error("widgets:table", tostring(err)) end
		end)
		if not box then return false end
		t.box = box
		box:SetPoint("TOPLEFT", t.list, "TOPLEFT", 0, 0)
		box:SetPoint("BOTTOMRIGHT", t.list, "BOTTOMRIGHT", 0, 0)
		return true
	end

	local function choose(name)
		if name == "scrollbox" and useScrollBox() then t.backendName = "scrollbox"; return end
		if (name == "scrollbox" or name == "faux") and useFaux() then t.backendName = "faux"; return end
		makePool(false)
		t.backendName = "pool"
	end
	choose(backend)

	function t:Backend() return self.backendName end

	-- the number of rows the list shows at once
	function t:Capacity()
		local h = self.list:GetHeight() or 0
		if h < rowH then h = rowH * 14 end
		local n = max(floor(h / rowH), 1)
		if self.backendName ~= "scrollbox" then n = min(#self.rows, n) end
		return n
	end

	function t:SortBy(id, descending)
		local col
		for _, c in ipairs(columns) do if c.id == id then col = c end end
		if not col then return false end
		if descending == nil then descending = (self.sortId == id) and not self.sortDesc or false end
		self.sortId, self.sortDesc = id, descending
		local order = {}
		for i, d in ipairs(self.data) do order[i] = { d = d, i = i, k = keyOf(col, d) } end
		table.sort(order, function(a, b)
			if a.k ~= b.k then
				local ta, tb = type(a.k), type(b.k)
				local less
				if ta ~= tb then less = ta == "number" else less = a.k < b.k end
				if descending then return not less end
				return less
			end
			return a.i < b.i
		end)
		self.sorted = {}
		for i, o in ipairs(order) do self.sorted[i] = o.d end
		for i, b in ipairs(self.heads) do
			local active = columns[i].id == id
			Theme.Text(b.label, active and "accent-text" or "text-3")
			b.arrow:SetShown(active)
			-- the chevron of the sheet points right: down for a descending order, up for an ascending one
			if active and b.arrow.SetRotation then b.arrow:SetRotation(descending and -math.pi / 2 or math.pi / 2) end
		end
		self.offset = 0
		self:Refresh()
		return true
	end

	function t:GetSort() return self.sortId, self.sortDesc end

	---Back to the order of the data: no column is the sorted one (a view that lists in a meaningful order of its own).
	function t:ClearSort()
		self.sortId, self.sortDesc = nil, false
		for _, b in ipairs(self.heads) do
			Theme.Text(b.label, "text-3")
			b.arrow:Hide()
		end
		self:SetData(self.data)
	end

	---false: a click on a header does nothing (the rows are a text to read in order, not a table to sort).
	function t:SetSortable(on) self.sortable = on ~= false end

	---Shows or hides the header; the list rises to the top when it is hidden.
	function t:SetHeaderShown(shown)
		self.head:SetShown(shown ~= false)
		self.list:ClearAllPoints()
		if shown == false then
			self.list:SetPoint("TOPLEFT", self, "TOPLEFT", 0, 0)
		else
			self.list:SetPoint("TOPLEFT", self.head, "BOTTOMLEFT", 0, -2)
		end
		self.list:SetPoint("BOTTOMRIGHT", self, "BOTTOMRIGHT", 0, 0)
	end
	function t:GetData() return self.sorted end

	function t:SetData(list)
		self.data = list or {}
		if self.sortId then self:SortBy(self.sortId, self.sortDesc) else
			self.sorted = {}
			for i, d in ipairs(self.data) do self.sorted[i] = d end
			self.offset = 0
			self:Refresh()
		end
	end

	-- the pool's rows from the offset (backends "faux" and "pool")
	function t:Paint()
		if self.painting then return end
		self.painting = true
		local cap = self:Capacity()
		for i, r in ipairs(self.rows) do
			local data = i <= cap and self.sorted[self.offset + i] or nil
			if data then fillRow(r, data); r:Show() else r.data = nil; r:Hide() end
		end
		self.painting = false
	end

	function t:SetOffset(n)
		local top = max(#self.sorted - self:Capacity(), 0)
		self.offset = min(max(n, 0), top)
		if self.backendName == "scrollbox" then
			pcall(self.box.ScrollToElementDataIndex, self.box, self.offset + 1)
		elseif self.backendName == "faux" and self.scroll.SetVerticalScroll then
			pcall(self.scroll.SetVerticalScroll, self.scroll, self.offset * rowH)
			self:Refresh()
		else
			self:Refresh()
		end
	end

	function t:Refresh()
		if not self.pos then self:Layout() end
		self.empty:SetShown(#self.sorted == 0)
		if self.backendName == "scrollbox" then
			local ok, err = Compat:SetTableData(self.box, self.sorted)
			if ok then return end
			-- the ScrollBox failed in this client: the table goes on with the next backend
			if NS.Diagnostics then NS.Diagnostics:Error("widgets:table", tostring(err)) end
			self.box:Hide()
			self.box = nil
			choose("faux")
			self:Layout()
		end
		local cap = self:Capacity()
		self.offset = min(self.offset, max(#self.sorted - cap, 0))
		if self.backendName == "faux" then Compat:FauxUpdate(self.scroll, #self.sorted, cap, rowH) end
		self:Paint()
	end

	function t:VisibleRows()
		local out = {}
		if self.backendName == "scrollbox" and self.box then
			pcall(self.box.ForEachFrame, self.box, function(r) if r:IsShown() and r.data then out[#out + 1] = r end end)
			return out
		end
		for _, r in ipairs(self.rows) do if r:IsShown() then out[#out + 1] = r end end
		return out
	end

	function t:SetEmptyText(text) self.empty:SetText(text or "") end
	function t:SetTitles(list)
		for i, c in ipairs(columns) do if list[c.id] then c.title = list[c.id] end end
		titles()
	end

	t:SetScript("OnSizeChanged", function() t:Layout(); t:Refresh() end)
	t:Layout()
	return t
end
