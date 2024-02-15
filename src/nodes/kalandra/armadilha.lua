--Constantes
local ID = 'kalandra.armadilha'

--Dependencies
local Node = require("node")
local Choice = require("choice")

--Create node
local node = Node:new(ID) ---@type Node
node.title = "Armadilha ativada"
node.gameOver = true
node.description = [[%{red}Você achou mesmo que seria tão óbvio? As armadilhas foram ativadas. Flechas foram lançadas das paredes e a sua aventura chega ao fim.]]

return node