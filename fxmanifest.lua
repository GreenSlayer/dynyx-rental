fx_version 'cerulean'
game 'gta5'

name "dynyx-rental"
description "Vehicle Rental Script Made For DynyxRP"
author "Green"
version "1.0."

client_scripts {
	'@PolyZone/client.lua',
	'@PolyZone/BoxZone.lua',
	'client/*.lua',
        'config.lua',
}

server_scripts {
	'server/*.lua',
}

dependencies {
	'PolyZone',
	'qb-target',
}
