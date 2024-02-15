-- Constants
local ID = "kalandra.curtir"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Fim da aventura"
node.gameWon = true
node.description = "Foi um dia incrível. Você curtiu e descansou bastante. O sol já está se pondo e você decidiu voltar para casa."

return node