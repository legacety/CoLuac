script_name('debug_template')
script_author('legacy.')
script_version('1.0')

require 'lib.moonloader'
local sampev = require 'lib.samp.events'

local script_config = { debug = true }

local function debugPrint(msg)
    if script_config.debug then
        sampAddChatMessage("[DEBUG] " .. tostring(msg), 0x00FF00)
    end
end

function main()
    repeat wait(0) until isSampAvailable()
    sampAddChatMessage("{C285FF}[Debug Chat]{FFFFFF} загружен | Автор: {FFD700}legacy.", -1)
    while true do
        wait(0)
    end
end

function sampev.onServerMessage(color, text)
    debugPrint("Сервер: " .. text)
end
