function pares_na_tabela(tabela)
    local pares = {}

    for i, numero in ipairs(tabela) do
        if tonumber(numero) % 2 == 0 then
            table.insert(pares, numero)
        end
    end

    return pares
end

local tabela = {}
local x

print("Insira os números na tabela (digite 'stop' quando terminar): ")
x = io.read()
while x ~= "stop" do
    table.insert(tabela, x)
    x = io.read()
end

local todos_os_pares = pares_na_tabela(tabela)

print("Os números pares presentes nessa tabela são: ")
for i, par in ipairs(todos_os_pares) do
    print(par)
end