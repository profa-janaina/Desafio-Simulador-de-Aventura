-- Constants
local ID = "nyff.floresta"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Nyffville"
node.description = [[Depois de muito andar você encontrou uma pequena e modesta vila no meio da floresta. Você está com sorte, os habitantes são bem acolhedores e estão comemorando a boa colheita com um banquete! A comida e o abrigo de hoje estão garantidos.

O dia amanheceu, é hora de continuar a aventura. Mas qual o próximo passo? Um dos Villagers sugere que você siga a trilha que da a volta na montanha, pois é o caminho mais longo e também mais seguro.]]
node.header = [[
~         ~~          __
       _T      .,,.    ~--~ ^^
 ^^   // \                    ~
      ][O]    ^^      ,-~ ~
   /''-I_I         _II____
__/_  /   \ ______/ ''   /'\_,__
  | II--'''' \,--:--..,_/,.-{ },
; '/__\,.--';|   |[] .-.| O{ _ }
:' |  | []  -|   ''--:.;[,.'\,/
'  |[]|,.--'' '',   ''-,.    |
  ..    ..-''    ;       ''. '
]]

-- Create choices
table.insert(node.choices, Choice:new(
    "nyff.trilha",
    "Seguir pela trilha que dá a volta na montanha."
))
table.insert(node.choices, Choice:new(
    "nyff.escalar",
    "Não vamos perder tempo, vamos escalar a montanha!"
))

return node