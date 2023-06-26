-- fx info
fx_version 'cerulean'
use_experimental_fxv2_oal 'yes'
lua54 'yes'
game 'gta5'


-- information
name 'mi_housing'
author 'MI_Agimir'
version '1.0.0'
repository 'https://github.com/MIAgimir/mi_housing'
description 'Tired of living under a bridge? Too bad'


-- manifest
shared_scripts {
	'@ox_lib/init.lua',
    'shared/housing.lua',
	'shared/config.lua'
}

client_scripts {
    '@ox_core/imports/client.lua',
    'client/utils.lua',
    'client/main.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    '@ox_core/imports/server.lua',
    'server/main.lua'
}


-- start shells
this_is_a_map 'yes'

files {
      'starter_shells_k4mb1.ytyp'
}

data_file 'DLC_ITYP_REQUEST' 'starter_shells_k4mb1.ytyp'