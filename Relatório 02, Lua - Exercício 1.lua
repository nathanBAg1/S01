local M
local N
print("Digite o início do intervalo: ")
M = io.read()
print("Digite o final do intervalo: ")
N = io.read()

local X
print("Digite mais um inteiro: ")
X= io.read()

print("Os múltiplos de " .. X .. " no intervalo de " .. M .. " a " .. N .. " são:")
for i=M, N, 1 do
    if M % X == 0 then
        print(M)
    end
    
    M = M + 1
end