-- Constants
local ID = "nyff.iglu"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Montanhas de Nyff"
node.description = [[Você não imaginava que era tão talentoso ao ponto de construir um iglu. Parabéns! Embora o frio esteja impeduoso, esta noite você vai dormir um pouco mais protegido.

Contudo, ao amanhecer você percebeu que está mais frio. É uma nevasca. Você está com fome e frio. O clima só piora. O que fazer?
]]
node.header = [[
%{blue}                 *  .  *
%{blue}                 . _\/ \/_ .
%{blue}                  \  \ /  /             .      .
%{blue}    ..    ..    -==>: X :<==-           _\/  \/_
%{blue}    '\    /'      / _/ \_ \              _\/\/_
%{blue}      \\//       '  /\ /\  '         _\_\_\/\/_/_/_
%{blue} _.__\\\///__._    *  '  *            / /_/\/\_\ \
%{blue}  '  ///\\\  '                           _/\/\_
%{blue}      //\\                               /\  /\
%{blue}    ./    \.                            '      '
%{blue}    ''    ''                            
]]

-- Create choices
table.insert(node.choices, Choice:new(
    "nyff.congelou",
    "Ir lá fora não é uma boa opção, melhor esperar mais um pouco."
))
table.insert(node.choices, Choice:new(
    "nyff.floresta",
    "Abandonar o iglu e ir para a floresta congelada."
))

return node