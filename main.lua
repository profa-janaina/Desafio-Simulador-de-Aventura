-- Dependencies
local GameData = require 'game_data'
local utils    = require 'utils'

local nodeLoader= require "node_loader"
local Engine    = require "engine"

--Enable warnings
warn("@on")

--Enable warnings
utils.enableUTF8()

-- Enable UTF-8 on terminal
os.execute("chcp 65001 > NUL")

 -- Create GameData
 local gameData = GameData:new() ---@type GameData
 _G.game = gameData  --Singleton

 -- Carregar node 
 nodeLoader.loadNodes()

 -- Node inicial
 game.activeNode = nodeLoader.getInitialNode()

-- Imprimir nodes
--  for id, node in pairs(nodeLoader.getNodes()) do
--     print(id .. ": " .. node.title)
--  end

-- Verifica erros nos nodes
if nodeLoader.findError() then
    print("Found erros on NodeLoader, aborting execution!")
    os.exit()
end

--Start engine
local engine = Engine:new() ---@type Engine
engine:runMainLoop()
