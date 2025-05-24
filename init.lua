--[[

This is the init.lua file which neovim will try to find in its stdpath. Neovim can be configured here.

       _               _      _                _
     (_)    _ _      (_)    | |_             | |    _  _    __ _
    | |   | ' \     | |    |  _|     _      | |   | +| |  / _` |
  _|_|_  |_||_|   _|_|_   _\__|   _(_)_   _|_|_   \_,_|  \__,_|
_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|
"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'

--]]

-- set non-plugin specific options in options.lua
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
--  NOTE: All .lua files have to be in lua folder. See https://youtu.be/U0TqE__vSno?list=PLx2ksyallYzW4WNYHD9xOFrPRYGlntAft&t=691 for more info
require("options")

-- set non-plugin specific mappings in mappings.lua
require("mappings")

-- set custom autocmd here
require("auto_cmd")

-- set up lazy.nvim and plugins
require("plugins")
