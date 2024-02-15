-- Constants
local ID = "nyff.trilha"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Aventura pela trilha"
node.description = [[Antes de partir, um dos Villagers te fornece um pouco de comida.
Você segue pela trilha. Tudo está calmo e frio. Até que o silêncio é quebrado com um rangido feroz. 

Assustado, você olha para trás e vê o animal do som ameaçador. É um enorme urso. 
]]
node.header = [[
%{yellow}    .--.              .--.
%{yellow}   : (\ ". _......_ ." /) :
%{yellow}    '.    `        `    .'
%{yellow}     /'   _        _   `\
%{yellow}    /     0}      {0     \
%{yellow}   |       /      \       |
%{yellow}   |     /'        `\     |
%{yellow}    \   | .  .==.  . |   /
%{yellow}     '._ \.' \__/ './ _.'
%{yellow}     /  ``'._-''-_.'``  \
]]

-- Create choices
table.insert(node.choices, Choice:new(
    "nyff.correr",
    "Vou correr mais que o Usain Bolt."
))
table.insert(node.choices, Choice:new(
    "nyff.topo",
    "Vou dividir a minha comida para distraí-lo e sair de fininho."
))

return node