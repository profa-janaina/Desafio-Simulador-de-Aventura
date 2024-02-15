--Constantes
local ID = 'kalandra.octaren_game_over'

--Dependencies
local Node = require("node")
local Choice = require("choice")

--Create node
local node = Node:new(ID) ---@type Node
node.title = "O monstro Octaren"
node.gameOver = true
node.description = [[%{red}Para o seu azar é o horripilante Octaren. A criatura mais temida dos mares. Pensavam que era apenas uma lenda. Contudo, você acaba de descobrir que o mito é verdadeiro e mortal.]]

return node