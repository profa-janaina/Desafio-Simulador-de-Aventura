--Constantes
local ID = 'nyff.topo'

--Dependencies
local Node = require("node")
local Choice = require("choice")

--Create node
local node = Node:new(ID) ---@type Node
node.title = "Contemple a vista"
node.description = [[A sua estratégia deu certo. Nossa que apuro! Que aventura!
Você recupera o fôlego e continua a sua aventura. O topo está cada vez mais perto.

Após algumas horas, você chega ao topo. Que felicidade e alívio. Você deslumbra a bela vista. Senta-se para admirá-la. 

Mas algo chama a sua atenção. O que é aquilo brilhante? Você chega mais perto e vê uma chave de ouro.
]]
node.header=[[
%{yellow}     ooo,    .---.
%{yellow}    o`  o   /    |\________________
%{yellow}   o`   'oooo()  | ________   _   _)
%{yellow}   `oo   o` \    |/        | | | |
%{yellow}     `ooo'   `---'         "-" |_|
                                       
]]

-- Create choices
table.insert(node.choices, Choice:new(
    "kalandra.start",
    "Achado não é roubado! O jeito é pegar a chave e voltar para Kalandra. Curtir uma praia e aquecer a alma.",
    nil,
    function()
        game.hasKey = true
    end
))

return node