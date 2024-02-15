local nodeLoader = {}

local nodeDictionary = {} ---@type table<string,Node>
local initialNode = nil ---@type Node

local hasErrors = false

---Verifica os nodes
---@param path string
---@return Node
local function loadNode(path)
    local success, nodeOrErr = pcall(function()
        return require(path)
    end)
    if not success then
        warn("Falha ao carregar o node ".. path .." O node não existe")
        hasErrors = true
        return nil
    end
    local node = nodeOrErr ---@type Node
    if nodeDictionary[node.id] ~= nil then
        warn("Falha ao carregar o node ".. path .. "O ID " ..node.id .." já está registrado")
        hasErrors = true
        return nil
    end
    nodeDictionary[node.id] = node
    return node
end

---comment
---@param parentNode Node
local function loadNodeFromChoices(parentNode)
    for _, choice in ipairs(parentNode.choices) do
       local destinationId = choice.destination
       if not nodeDictionary[destinationId] then
        local childNode = loadNode('src.nodes.' .. destinationId) 
        if childNode then
            loadNodeFromChoices(childNode)
        end        
       end
    end
end

---Carrega todos os nodes internamente
function nodeLoader.loadNodes()
    nodeDictionary = {}

    --load initial node
    initialNode = require("src.nodes.start")
    nodeDictionary[initialNode.id] = initialNode

    --load other nodes recursively
    loadNodeFromChoices(initialNode)

    -- loadNode("src.nodes.nyff.start")
    -- loadNode("src.nodes.kalandra.start")
    -- loadNode("src.nodes.nyff.congelou")

    --Validate destinations
    for id, node in ipairs(nodeDictionary) do
      for _, choice in ipairs(node.choices) do
        local destinationId = choice.destination
        local destinationNode = nodeDictionary[destinationId] 
        if destinationNode == nil then
            warn(string.format("Uma das escolhas do node %s tem como destino um node inexistente: %s", node.id, destinationId))   
            hasErrors = true     
        end
      end  
    end
end

---Retorna todos os nodes criados por esse script
---@return table<string, Node>
function nodeLoader.getNodes()
    return nodeDictionary
end

---Retorna o node associado com o ID
---@param nodeId string
---@return Node
function nodeLoader.getNode(nodeId)
    return nodeDictionary[nodeId]    
end

---Retorna o node inicial do simulador
---@return Node
function nodeLoader.getInitialNode()
    return initialNode
    
end

------Verifica erros no código durante a execução
---@return boolean
function nodeLoader.findError()
    return hasErrors
end


return nodeLoader