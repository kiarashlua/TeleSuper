local function run(msg,matches)  
local id = msg.from.id
local idgp = msg.to.id 
local cmd = msg.text 
local user = msg.from.username 
local name = msg.from.first_name 
local phone = msg.from 
local gpname = msg.to.title  
local hash = 'group:'..msg.to.id
  local group_lang = redis:hget(hash,'lang')
  if group_lang then
return "نام= "..name.."\n\nیوزرنیم= @"..(msg.from.username or 'Dont Have!').."\n\nایدی= "..id.."\n\nتلفن= "..(msg.from.phone or 'Dont Saved!').."\n\nدستور= "..cmd
else
return "Name= "..name.."\n\nUserName= @"..(msg.from.username or 'Dont Have!').."\n\nID= "..id.."\n\nPhone= "..(msg.from.phone or 'Dont Saved!').."\n\nCMD= "..cmd
end 
end
return { 
patterns = { 
"^[!/#]([Ii][Nn][Ff][Oo])$" 
}, 
run = run 
}