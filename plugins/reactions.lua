local command = 'reactions'
local doc = '`Returns a list of "reaction" emoticon commands.`'

local triggers = {
	['Â¯\\_(ãƒ„)_/Â¯'] = '/shrug$',
	['( Í¡Â° ÍœÊ– Í¡Â°)'] = '/lenny$',
	['(â•¯Â°â–¡Â°ï¼‰â•¯ï¸µ â”»â”â”»'] = '/flip$',
	['â”Œï¼ˆâ”Œã€€ï¼¾oï¼¾ï¼‰â”'] = '/homo$',
	['à² _à² '] = '/look$',
	['SHOTS FIRED'] = '/shots?$'
}

 -- Generate a "help" message triggered by "/reactions".
local help = ''
for k,v in pairs(triggers) do
	help = help .. v:gsub('%$', ': '):gsub('?', '') .. k .. '\n'
end
triggers[help] = '^/reactions$'

local action = function(msg)

	for k,v in pairs(triggers) do
		if string.match(msg.text_lower, v) then
			sendMessage(msg.chat.id, k)
			return
		end
	end

end

return {
	action = action,
	triggers = triggers,
	doc = doc,
	command = command
}
