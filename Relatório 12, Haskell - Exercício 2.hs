data Item = Item {nome :: String, categoria :: String, preco :: Double}
  deriving(Show, Eq)

data StatusCompra = Aberta | Finalizada | Devolvida
  deriving(Show, Eq)

data CompraZelda = CompraZelda {itensComprados :: [Item], statusCompra :: StatusCompra}
  deriving(Show, Eq)

calculaDesconto :: [Item] -> Double
calculaDesconto itens
  | total < 200 = 0.0
  | otherwise = desconto
  where 
    total = sum (map preco itens)
    desconto = sum (map preco itens) * 0.1

valorFinal :: CompraZelda -> Double
valorFinal (CompraZelda itens status)
  | status == Devolvida = 0.0
  | total <= 200 = total + 15
  | otherwise = total - desconto
  where
    total = sum (map preco itens)
    desconto = calculaDesconto itens

item1 = Item "Master Sword" "Arma" 1000
item2 = Item "Poção de Resistência" "Poção" 100
item3 = Item "Bota" "Equipamento" 50

compra1 = CompraZelda [item1, item2] Aberta
compra2 = CompraZelda [item1, item3] Finalizada
compra3 = CompraZelda [item2, item3] Devolvida
compra4 = CompraZelda [item1, item2, item3] Aberta
compra5 = CompraZelda [item2, item3] Aberta
compra6 = CompraZelda [item2, item2] Aberta

main :: IO()
main = do
  print("--Descricao das Compras--")
  print("Compra 1: Item 1 e Item 2")
  print("Compra 2: Item 1 e Item 3")
  print("Compra 3: Item 2 e Item 3")
  print("Compra 4: Item 1, Item 2 e Item 3")
  print("Compra 5: Item 2 e Item 3")
  print("Compra 6: Dois Item 2")
  print("-------------------------")
  
  putStr "\nValor da Compra 1 (Aberta sem Frete): R$ "
  print(valorFinal compra1)
  putStr "Valor da Compra 2 (Finalizada sem Frete): R$ "
  print(valorFinal compra2)
  putStr "Valor da Compra 3 (Devolvida): R$ "
  print(valorFinal compra3)
  putStr "Valor da Compra 4 (Aberta sem Frete): R$ "
  print(valorFinal compra4)
  putStr "Valor da Compra 5 (Aberta com Frete): R$ "
  print(valorFinal compra5)
  putStr "Valor da Compra 6 (Aberta com Frete): R$ "
  print(valorFinal compra6)