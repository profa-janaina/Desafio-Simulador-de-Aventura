-- Constants
local ID = "kalandra.lateral"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Salão de Kalandra"
node.description = [[
Foi difícil e assustador. Você se esforçou bastante e finalmente chegou até a porta dourada! Ela é exuberante! Mas e agora?
Você percebe que há uma fechadura.]]
node.header=[[
                   _____                        _____               
    |    |        [     ]                      [     ]        |    |
    |    |       [_______][ ][ ][ ][][ ][ ][ ][_______]       |    |
    |    [ ][ ][ ]|     |  ,----------------,  |     |[ ][ ][ ]    |
    |             |     |/' %{yellow}   ____..____   %{white} '\|     |             |
     \            |     |   %{yellow} /'    ||    '\ %{white}   |     |            /
      |           |     |   %{yellow}|o     ||     o|%{white}   |     |           |
      |           | %{yellow} _ %{white} |   %{yellow}|     _||_     |%{white}   | %{yellow} _ %{white} |           |
      |           | %{yellow}(_)%{white} |   %{yellow}|    (_||_)    |%{white}   | %{yellow}(_)%{white} |           |
      |           |     |   %{yellow}|     (||)     |%{white}   |     |           |
      |           |     |   %{yellow}|      ||      |%{white}   |     |           |
    /''           |     |   %{yellow}|o     ||     o|%{white}   |     |           ''\
   [_____________[_______]--%{yellow}'------''------'%{white}--[_______]_____________]
]]

-- Create choices
table.insert(node.choices, Choice:new(
    "kalandra.sucesso",
    "Usar a chave de ouro",
    function()
        return game.hasKey == true
    end
))
table.insert(node.choices, Choice:new(
    "kalandra.start",
    "Chega de aventura. Vou voltar para a praia."
))
table.insert(node.choices, Choice:new(
    "kalandra.armadilha",
    "Esqueci a chave. Mas eu não cheguei até aqui em vão. Vou abrir à força."
))

return node