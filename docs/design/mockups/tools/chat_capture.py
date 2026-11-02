"""What the addon prints in the chat frame for a few commands, captured from the addon itself (needs lupa).

The addon is loaded as the offline tests load it: Lua 5.1 through lupa, the simulated client of Tests/MockWoWAPI.lua and
every language and regional pack of the download. A slash command is then run and the lines it prints are returned,
with the addon's prefix, exactly as built by the code. So /au help can never disagree with UI/Commands.lua, and
/au debug shows the lines Core/Diagnostics.lua builds; its client values (build, capabilities, counts) are the ones of
the simulated client, not of a real one.

    python -I -X utf8 docs/design/mockups/tools/chat_capture.py help all     (prints the lines, for a quick look)
"""
import os
import sys

from lupa import lua51

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.dirname(HERE))))
ADDON = os.path.join(ROOT, "AzerothUnspoken")
_LUA = None


def _toc_files(folder, name):
    lines = open(os.path.join(folder, name + ".toc"), encoding="utf-8").read().splitlines()
    return [l.strip() for l in lines if l.strip() and not l.lstrip().startswith("#")]


def runtime():
    """The addon, loaded once, after PLAYER_ENTERING_WORLD (the steps of Tests/check_docs.py new_runtime)."""
    global _LUA
    if _LUA is not None:
        return _LUA
    lua = lua51.LuaRuntime(unpack_returned_tuples=True)
    lua.execute(open(os.path.join(ROOT, "Tests", "MockWoWAPI.lua"), encoding="utf-8").read())
    loader = lua.eval("function(src, name) return assert(loadstring(src, name)) end")
    ns = lua.table()
    for f in _toc_files(ADDON, "AzerothUnspoken"):
        src = open(os.path.join(ADDON, f.replace("\\", "/")), encoding="utf-8").read()
        loader(src, "@" + f)("AzerothUnspoken", ns)
    packs = [d for d in sorted(os.listdir(ROOT)) if d.startswith("AzerothUnspoken_")
             and os.path.isfile(os.path.join(ROOT, d, d + ".toc"))
             and "## X-AzerothUnspoken-" in open(os.path.join(ROOT, d, d + ".toc"), encoding="utf-8").read()]
    lua.globals().INSTALL_PACKS(ROOT.replace("\\", "/"), lua.table_from(packs), True)
    lua.globals().FIRE("ADDON_LOADED", "AzerothUnspoken")
    lua.execute("AzerothUnspoken.Packs:ActivateAll()")
    lua.globals().FIRE("PLAYER_ENTERING_WORLD", True, False)
    _LUA = lua
    return lua


def run(command):
    """The lines printed by `/au <command>`, each with the addon's prefix (NS:Print)."""
    lua = runtime()
    lua.execute("SENT = {}")
    lua.globals().SlashCmdList.AZEROTHUNSPOKEN(command)
    sent = lua.globals().SENT
    out = []
    for i in range(1, len(sent) + 1):
        line = sent[i]
        if line.startswith("PRINT: "):
            out.append(line[len("PRINT: "):])
    return out


if __name__ == "__main__":
    for l in run(" ".join(sys.argv[1:]) or "help"):
        print(l)
