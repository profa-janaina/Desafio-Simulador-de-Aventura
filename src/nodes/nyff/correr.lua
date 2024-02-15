--Constantes
local ID = 'nyff.correr'

--Dependencies
local Node = require("node")
local Choice = require("choice")

--Create node
local node = Node:new(ID) ---@type Node
node.title = "Ursinho feliz"
node.gameOver = true
node.description = [[%{yellow}Você não correu como um raio e virou banquete de urso. 
Você foi a última refeição antes dele hibernar feliz.]]

return node