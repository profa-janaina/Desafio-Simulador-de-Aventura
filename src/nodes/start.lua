--Constantes
local ID = 'start'

--Dependencies
local Node = require("node")
local Choice = require("choice")

--Create node
local node = Node:new(ID) ---@type Node
node.title = "Uma nova aventura"
node.description = "Em uma bela manhã ensolarada você acorda e se prepara para embarcar em uma nova aventura, mas uma importante decisão deve ser tomada. Para onde você vai?"
node.header = [[
%{white}    .+"+.+"+.+"+.+"+.+"+.+"+.+"+.+"+.+"+.+"+.+"+.+"+.+"+.+"+.+"+. 
%{white}    (   %{magenta}      _       _                 _                    %{white}     )
%{white}     )  %{magenta}     / \   __| |_   _____ _ __ | |_ _   _ _ __ ___   %{white}    ( 
%{white}    (   %{magenta}    / _ \ / _` \ \ / / _ \ '_ \| __| | | | '__/ _ \  %{white}     )
%{white}     )  %{magenta}   / ___ \ (_| |\ V /  __/ | | | |_| |_| | | |  __/  %{white}    ( 
%{white}    (   %{magenta}  /_/__ \_\__,_| \_/ \___|_| |_|\__|\__,_|_|  \___|  %{white}     )
%{white}     )  %{magenta}  / ___|(_)_ __ ___  _   _| | __ _| |_ ___  _ __     %{white}    ( 
%{white}    (   %{magenta}  \___ \| | '_ ` _ \| | | | |/ _` | __/ _ \| '__|    %{white}     )
%{white}     )  %{magenta}   ___) | | | | | | | |_| | | (_| | || (_) | |       %{white}    ( 
%{white}    (   %{magenta}  |____/|_|_| |_| |_|\__,_|_|\__,_|\__\___/|_|       %{white}     )
%{white}     )                                                           ( 
%{white}    (                                                             )
%{white}     "+.+"+.+"+.+"+.+"+.+"+.+"+.+"+.+"+.+"+.+"+.+"+.+"+.+"+.+"+.+" 
]]

--Create choices
table.insert(node.choices, Choice:new(
    "kalandra.start",
    "Para a praia ensolarada de Kalandra"
))
table.insert(node.choices, Choice:new(
    "nyff.start",
    "Para as montanhas geladas de Nyff"
))


return node