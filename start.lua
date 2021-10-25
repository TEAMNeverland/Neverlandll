serpent = dofile("./File_Libs/serpent.lua")
https = require("ssl.https")
http = require("socket.http")
JSON = dofile("./File_Libs/JSON.lua")
local database = dofile("./File_Libs/redis.lua").connect("127.0.0.1", 6379)
Server_Neverland = io.popen("echo $SSH_CLIENT | awk '{ print $1}'"):read('*a')
local AutoFiles_Neverland = function() 
local Create_Info = function(Token,Sudo,UserName)  
local Neverland_Info_Sudo = io.open("sudo.lua", 'w')
Neverland_Info_Sudo:write([[
token = "]]..Token..[["

Sudo = ]]..Sudo..[[  

UserName = "]]..UserName..[["
]])
Neverland_Info_Sudo:close()
end  
if not database:get(Server_Neverland.."Token_Neverland") then
print("\27[1;34m»» Send Your Token Bot :\27[m")
local token = io.read()
if token ~= '' then
local url , res = https.request('https://api.telegram.org/bot'..token..'/getMe')
if res ~= 200 then
io.write('\n\27[1;31m»» Sorry The Token is not Correct \n\27[0;39;49m')
else
io.write('\n\27[1;31m»» The Token Is Saved\n\27[0;39;49m')
database:set(Server_Neverland.."Token_Neverland",token)
end 
else
io.write('\n\27[1;31mThe Tokem was not Saved\n\27[0;39;49m')
end 
os.execute('lua start.lua')
end
------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------
if not database:get(Server_Neverland.."UserName_Neverland") then
print("\27[1;34m\n»» Send Your UserName Sudo : \27[m")
local UserName = io.read():gsub('@','')
if UserName ~= '' then
local Get_Info = http.request("http://TshAkE.ml/info/?user="..UserName)
if Get_Info:match('Is_Spam') then
io.write('\n\27[1;31m»» Sorry The server is Spsm \nتم حظر السيرفر لمدة 5 دقايق بسبب التكرار\n\27[0;39;49m')
return false
end
local Json = JSON:decode(Get_Info)
if Json.Info == false then
io.write('\n\27[1;31m»» Sorry The UserName is not Correct \n\27[0;39;49m')
os.execute('lua start.lua')
else
if Json.Info == 'Channel' then
io.write('\n\27[1;31m»» Sorry The UserName Is Channel \n\27[0;39;49m')
os.execute('lua start.lua')
else
io.write('\n\27[1;31m»» The UserNamr Is Saved\n\27[0;39;49m')
database:set(Server_Neverland.."UserName_Neverland",Json.Info.Username)
database:set(Server_Neverland.."Id_Neverland",Json.Info.Id)
end
end
else
io.write('\n\27[1;31mThe UserName was not Saved\n\27[0;39;49m')
end 
os.execute('lua start.lua')
end
local function Files_Neverland_Info()
Create_Info(database:get(Server_Neverland.."Token_Neverland"),database:get(Server_Neverland.."Id_Neverland"),database:get(Server_Neverland.."UserName_Neverland"))   
local RunNeverland = io.open("Neverland", 'w')
RunNeverland:write([[
#!/usr/bin/env bash
cd $HOME/Neverland
token="]]..database:get(Server_Neverland.."Token_Neverland")..[["
rm -fr Neverland.lua
wget "https://raw.githubusercontent.com/TeamNeverland/Neverland/master/Neverland.lua"
while(true) do
rm -fr ../.telegram-cli
./tg -s ./Neverland.lua -p PROFILE --bot=$token
done
]])
RunNeverland:close()
local RunTs = io.open("ts", 'w')
RunTs:write([[
#!/usr/bin/env bash
cd $HOME/Neverland
while(true) do
rm -fr ../.telegram-cli
screen -S Neverland -X kill
screen -S Neverland ./Neverland
done
]])
RunTs:close()
end
Files_Neverland_Info()
database:del(Server_Neverland.."Token_Neverland");database:del(Server_Neverland.."Id_Neverland");database:del(Server_Neverland.."UserName_Neverland")
sudos = dofile('sudo.lua')
os.execute('./install.sh ins')
end 
local function Load_File()  
local f = io.open("./sudo.lua", "r")  
if not f then   
AutoFiles_Neverland()  
var = true
else   
f:close()  
database:del(Server_Neverland.."Token_Neverland");database:del(Server_Neverland.."Id_Neverland");database:del(Server_Neverland.."UserName_Neverland")
sudos = dofile('sudo.lua')
os.execute('./install.sh ins')
var = false
end  
return var
end
Load_File()
