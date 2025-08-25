local tabela = {}
local x

print("Insira os números na tabela (digite 'stop' quando terminar): ")
x = io.read()
while x ~= "stop" do
    table.insert(tabela, x)
    x = io.read()
end

local maior = tabela[1]
for i, n in ipairs(tabela) do
    if tonumber(n) > tonumber(maior) then
        maior = n
    end
end

print("O maior elemento dessa tabela é: " .. maior)