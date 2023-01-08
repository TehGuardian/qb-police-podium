fx_version 'cerulean'
game 'gta5'

author 'Guardian'
version '1.0'

client_scripts {
	'@PolyZone/client.lua',
	'@PolyZone/BoxZone.lua',
	'@PolyZone/ComboZone.lua',
	'client.lua',
}

server_script {
	'server.lua',
	'@oxmysql/lib/MySQL.lua',
}

shared_scripts {
    'config.lua',
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
    'locales/*.lua'
}

lua54 'yes'