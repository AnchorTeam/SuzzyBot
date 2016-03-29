return {
	bot_api_key = '202632737:AAF4SNuF3L9pnVo72_ibS6s1PrznGD4Wis0', --Your Bot API Key (token from bot father)
	google_api_key = '',
	google_cse_key = '',
	thecatapi_key = '',
	time_offset = 0,
	lang = 'en',
	cli_port = 4567,
	admin = 000000000,
	admin_name = 'My Admin',
	
	
	errors = {
		connection = 'Connection error.',
		results = 'No results found.',
		argument = 'Invalid argument.',
		syntax = 'Invalid syntax.',
		antisquig = 'This group is English only.',
		moderation = 'I do not moderate this group.',
		not_mod = 'This command must be run by a moderator.',
		not_admin = 'This command must be run by an administrator.',
		chatter_connection = 'I don\'t feel like talking right now.',
		chatter_response = 'I don\'t know what to say to that.'
	},
	moderation = {
		admins = {
			['000000000'] = 'myadminname',
			['000000000'] = 'myadminname'
		},
		admin_group = -00000000,
		realm_name = 'My Realm'
	},
	plugins = {
       help.lua	
       meme.lua	
       reactions.lua	
       time.lua	
       translate.lua	
       weather.lua	
       who.lua	
       wikipedia.lua	
       youtube.lua
	}
}
