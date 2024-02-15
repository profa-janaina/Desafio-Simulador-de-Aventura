-- Constants
local ID = "kalandra.explorar_caverna"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Salão de Kalandra"
node.description = [["
Você encontra um salão com estátuas de animais. Algumas feitas de pedras outras de metais. Um caminho cravejado de cristais leva até uma porta dourada do outro lado do salão.

Na lateral do salão há também uma passagem estreita que leva até a porta dourada. Contudo, estão faltando alguns trechos do caminho. 
    
Antes de seguir, lembre-se, há a possibilidade de haver armadilhas."
    ]]

node.header=[[
%{white}                                  %{yellow} .''.       
%{white}       .''.      .  %{white}      *''*    %{yellow}:_\/_:   %{cyan}   . 
%{white}      :_\/_:   _\(/_%{white}  .:.*_\/_*   %{yellow}: /\ :   %{cyan}.'.:.'.
%{white}  .''.: /\ :   ./)\ %{white}  ':'* /\ * : %{yellow} '..'.   %{cyan}-=:o:=-
%{white} :_\/_:'%{magenta}.:::.  %{blue}  ' *''*    *%{green} '.\'/.'%{magenta} _\(/_ %{cyan}'.':'.'
%{white} : /\ : %{magenta}:::::  %{blue}   *_\/_*    %{green} -= o =-%{magenta}  /)\  %{cyan}   '  *
%{white}  '..'  %{magenta}':::'  %{blue}   * /\ *    %{green} .'/.\'.%{magenta}   '
%{white}      *        %{blue}    *..*     %{green}    :
%{white}jgs     *
%{white}        *
]]
     
-- Create choices
table.insert(node.choices, Choice:new(
    "kalandra.armadilha",
    "Eu quero matar o monstro, é algo bom, por que teria armadilhas? Vou seguir pelo caminho de cristais."
))
table.insert(node.choices, Choice:new(
    "kalandra.lateral",
    "Já vi muito filme de aventura. O melhor é seguir pela passagem lateral."
))


return node