fx_version 'cerulean'
game 'gta5'

description 'Soviet BlackMarket'
version '1.0.0'

client_scripts {
    "nui.lua",
    "config.lua",
    "client.lua"
}

shared_script '@qb-core/import.lua'

server_script "server.lua"

files {
    'html/index.html',
    'html/index.js',
    'html/index.css',
    'images/*.png'
}
ui_page "html/index.html"
