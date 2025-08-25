local n1, n2
local operador

function calculadora(n1, n2, operador)
    local resultado = "O resultado é: "
    if operador == "+" then
        resultado = resultado .. n1 + n2
    elseif operador == "-" then
        resultado = resultado .. n1 - n2
    elseif operador == "*" then
        resultado = resultado .. n1 * n2
    elseif operador == "/" then
        resultado = resultado .. n1 / n2
    else
        resultado = "Erro. Operador Inválido."
    end

    return resultado
end

print("Insira o primeiro número: ")
n1 = io.read()
print("Insira o segundo número: ")
n2 = io.read()
print("Insira o operador: ")
operador = io.read()

local valor = calculadora(n1, n2, operador)
print(valor)