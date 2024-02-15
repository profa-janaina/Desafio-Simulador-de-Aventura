-- Constants
local ID = "kalandra.mergulhar"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.description = "Você está desbravando a vida submarina e de repente se depara com uma embarcação naufragada. Contudo, há algo que te chama a atenção. Algumas bolhas de ar saem de dentro dele."
node.header=[[
                 |~
           |/    w
          / (   (|   \
         /( (/   |)  |\
  ____  ( (/    (|   | )  ,
 |----\ (/ |    /|   |'\ /^;
\---*---Y--+-----+---+--/(
 \------*---*--*---*--/
   '~~ ~~~~~~~~~~~~~~~
]]

-- Create choices
table.insert(node.choices, Choice:new(
    "kalandra.octaren_game_over",
    "Tenho que descobri o que há neste navio."
))
table.insert(node.choices, Choice:new(
    "kalandra.octaren_game_over",
    "Não devo me preocupar. Devem ser apenas peixes que usam o navio de abrigo."
))
table.insert(node.choices, Choice:new(
    "kalandra.start",
    "Chega de banho. Já está na hora de voltar para a praia.",
    nil,
    function()
        game.medoDoMar = true
    end
))

return node