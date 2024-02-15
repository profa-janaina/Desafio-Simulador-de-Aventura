-- Constants
local ID = "nyff.escalar"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "O arrependimento chegou logo"
node.gameOver = true
node.description = [[%{cyan}Você estava empolgado para escalar as lendárias montanhas de Nyff. Contudo, uma forte nevasca caiu. Intensificando o frio e a neve. Derrepente, uma avalanche se forma, e você está na trajetória. Não há tempo para escapar, apenas há tempo de se arrepender de não ter escolhido a trilha.]]


return node