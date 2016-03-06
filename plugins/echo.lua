local command = 'meme'
local doc = [[```
/meme <style> <toptext> <bottomtext>
create a meme
you can see style list by this link :```
[Meme List](http://hastebin.com/elexebuxoz)
]]

local triggers = {
	"^/meme"
}

download_file = function(url, filename)

	local respbody = {}
	local options = {
		url = url,
		sink = ltn12.sink.table(respbody),
		redirect = true
	}

	local response = nil

	if url:match('^https') then
		options.redirect = false
		response = { HTTPS.request(options) }
	else
		response = { HTTP.request(options) }
	end

	local code = response[2]
	local headers = response[3]
	local status = response[4]

	if code ~= 200 then return false end

	filename = filename or './' .. os.time()

	local file = io.open(filename, 'w+')
	file:write(table.concat(respbody))
	file:close()

	return filename

end
--------------------------------------------------------------------
local action = function(msg)
local matches = { string.match(msg.text, "^/meme (.*) (.*) (.*)") }
	if matches[1] then
  local url = "http://apimeme.com/meme?meme="..matches[1].."&top="..matches[2].."&bottom="..matches[3]
  local file = download_file(url,'meme.webp')
      sendSticker(msg.chat.id,file)
	sendChatAction(msg.chat.id,'upload_document')
	else
	sendMessage(msg.chat.id,doc,true,nil,true)
end
end
return {
	action = action,
	triggers = triggers,
	doc = doc,
	command = command
}
