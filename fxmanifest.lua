fx_version 'cerulean'

game 'gta5'

author 'rraayy'

version '1.0'

shared_script '@es_extended/imports.lua'

server_scripts {
	'Shared/Config.lua',
	'Server/sv_main.lua'
}

client_scripts {
	'Shared/Config.lua',
	'Client/cl_main.lua'
}