
-- Criatura
local nomeMonstro = "CREEPER"
local descricao = "Um monstro furtivo com um temperamento explosivo."
local emoji = "💥"
local som = "Tssssss"
local periodoFavorito = "Noturno"
local item = "Pólvora"

-- Atributos
local ataque = 10
local defesa = 1
local vida = 5
local velocidade = 7
local inteligencia = 2

-- Função que recebe um atributo e nos retorna uma barra de progresso em string / texto
local function criarBarra(atributo)
    local tamanhoBarra = 10 
    local positivo = "⬛"
    local vazio = "⬜"

    local resultado = ""
    for i = 1, tamanhoBarra, 1 do
        if i <= atributo then
            resultado = resultado .. positivo
        else
            resultado = resultado .. vazio    
        end
    end
    return resultado
end

-- Variáveis que criam a interface
local linha = string.rep("=", 65)
local coluna = "| "

-- Interface
print(linha)
print(coluna .. "Nome: " .. nomeMonstro)
print(coluna .. "Descrição: " .. descricao)
print(coluna)
print(coluna .. "Item: " .. item)
print(coluna .. "Som: " .. som)
print(coluna .. "Emoji Favorito: " .. emoji)
print(coluna .. "Período Favorito: " .. periodoFavorito)
print(coluna)
print(coluna .. "ATRIBUTOS")
print(coluna .. "Ataque:       " .. criarBarra(ataque))
print(coluna .. "Defesa:       " .. criarBarra(defesa))
print(coluna .. "Vida:         " .. criarBarra(vida))
print(coluna .. "Velocidade:   " .. criarBarra(velocidade))
print(coluna .. "Inteligência: " .. criarBarra(inteligencia))
print(coluna)
print(linha)
