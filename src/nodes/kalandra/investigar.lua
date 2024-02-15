-- Constantes
local ID = 'kalandra.investigar'

--Dependencies
local Node = require('node')
local Choice = require('choice')

--Create node
local node = Node:new(ID) ---@type Node
node.title = 'Praia de kalandra'
node.description = [[Ao explorar a praia atrás de pistas, você se depara com uma trilha que leva a uma caverna. Parece inabitada há tempos. 

Ao entrar um pouco mais, você vê desenhos e escrituras. Você já conhece esta estória, é a Lenda do Octaren. Uma impiedosa e temida criatura do mar. 

O que tudo indica é que não é apenas uma lenda e existe uma magia que pode derrotá-lo.
]]
node.header = [[%{blue}
      .'.'
      .'-'.
  .  (  o O)
   \_ `  _,   _
-.___'.) ( ,-'
     '-.O.'-..-..       
 ./\/\/ | \_.-._
        ;
     ._/
]]

--Create choices
table.insert(node.choices, Choice:new(
    'kalandra.curtir',
    'Quanta bobagem! Vou gastar o meu tempo curtindo a praia'
))

table.insert(node.choices, Choice:new(
    'kalandra.explorar_caverna',
    'Interessante! Vou explorar esta caverna para descobrir mais pistas'
))

table.insert(node.choices, Choice:new(
    'kalandra.octaren_game_over',
    'Não existe polvo gigante. Não vi nenhum durante o mergulho. Para mostrar que isso é bobagem, vou mergulhar novamente.'
))

return node