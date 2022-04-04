fx_version 'cerulean'
game 'gta5'

description 'QB-Storage'
version '0.0.1'

shared_scripts {
	'config.lua',
}

client_script 'client.lua'
server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server.lua'
}