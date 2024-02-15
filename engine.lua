local class = require "src.bib.middleclass"
local ansicolors = require "src.bib.ansicolors"
local nodeLoader = require "node_loader"
local utils    = require 'utils'

---@class Engine
local Engine = class("Engine")

function Engine:initialize()
    
end


--Apply colors to the text in terminal
local function print(...)
   _G.print(ansicolors(...)) 
end

local function iowrite(...)
   io.write(ansicolors(...)) 
end

function Engine:runMainLoop()
    
    --Loop principal
    while not game.isOver do
        -- Obtém o node ativo
        local node = game.activeNode

        -- Limpa o terminal
        utils.clearScreen()

        --Imprimi o node
        self:printNode(node)
        
        --Processar fim do jogo
        if node.gameOver then
            print()
            print('%{red}===== Game Over =====')
            os.exit()
            print()
        elseif node.gameWon then
            print()
            print('%{green}===== Victory =====')
            os.exit()            
            print()
        end

        -- Varre as opções válidas
        local validChoices = self:getValidChoices(node)
        if #validChoices == 0 then
            warn('Nenhuma escolha válida para o node'..node.id)
            os.exit()
        end

        --Imprimi as opções
        self:showChoices(validChoices)

        --Captura a escolha do usuário
        local choiceIndex = self:askForInput(#validChoices)
        local choice = validChoices[choiceIndex]

        --Executar a rotina da escolha
        choice:runRoutine()

        --Avançar para o próximo node
        local destinationId = choice.destination
        local destinationNode = nodeLoader.getNode(destinationId)
        game.activeNode = destinationNode

        -- game.isOver = true
    end
    
end

local function createSeparator(title)
    local width = 40
    local result = "%{white}-----------------"
    local length = 3

    if title then
        result = string.format('%s %%{magenta}%s %%{white}', result, title:upper())
        length = length + 2 + title:len()
    end

    for i = length, width, 1 do
        result = result .. "-"
    end
    
    return result
end

---Imprimi o node atual e as opções do jogo
---@param node Node
function Engine:printNode(node)
    if node.header then
        print(node.header) 
        
    elseif node.gameOver then
        print(utils.getHeaderGamerOver())

    elseif node.gameWon then
        print(utils.getHeaderGamerWin())
    end

    print(createSeparator(node.title))
    print(node.description)
    print(createSeparator())
end

---Verifica as opções válidas
---@param node Node
---@return Choice[]
function Engine:getValidChoices(node)
    local result = {} ---@type Choice[]
    for _, choice in ipairs(node.choices) do
        if (not choice:hasCondition()) or (choice:runCondition() and choice:hasCondition()) then
            table.insert(result, choice)
        end
    end
    return result
end

---Mostra as opções para o usuário
---@param choices Choice[]
function Engine: showChoices(choices)
    for i, choice in ipairs(choices) do
        print(string.format("%%{white}%d) %%{yellow}%s", i, choice.description))
    end
    print()
end

---Armazena a opção escolhida pelo usuário
---@param amount number
---@return number
function Engine:askForInput(amount)
    while true do
        iowrite('> ')
        local answerString = io.read()
        local answer = tonumber(answerString)
        local isAnswerValid = answer ~= nil and answer >= 1 and answer <= amount

        if isAnswerValid then
            return answer
        end
        print("%{red}Resposta inválida, tente novamente. \n")
    end
end


return Engine