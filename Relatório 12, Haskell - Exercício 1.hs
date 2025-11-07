data Bebida = Bebida {nome :: String, tipo :: String, preco :: Double}
  deriving(Show, Eq)
    
data Status = Aberto | Entregue | Cancelado
  deriving(Show, Eq)
    
data Pedido = Pedido {listaBebidas :: [Bebida], status :: Status}
  deriving(Show, Eq)
  
valorTotalPedido :: Pedido -> Double
valorTotalPedido (Pedido bebidas status) 
    | status == Cancelado = 0
    | otherwise = sum (map preco bebidas) + 5
  
primeiraBebida :: Pedido -> String
primeiraBebida pedido =
  case listaBebidas pedido of
    [] -> "Não há bebidas no pedido!"
    (x:_) -> nome x
  
bebida1 = Bebida "Macchiato" "Café" 25.0
bebida2 = Bebida "Erva Doce" "Chá" 15.0
bebida3 = Bebida "Maracujá" "Suco" 16.15

pedido1 = Pedido [bebida1, bebida3] Aberto
pedido2 = Pedido [bebida2, bebida3] Entregue
pedido3 = Pedido [bebida1, bebida2] Cancelado

main :: IO()
main = do
  putStr "Valor do pedido 1 (Aberto): R$ "
  print(valorTotalPedido pedido1)
  putStr "Valor do pedido 2 (Entregue): R$ "
  print(valorTotalPedido pedido2)
  putStr "Valor do pedido 3 (Cancelado): R$ "
  print(valorTotalPedido pedido3)
  
  putStr "\nPrimeira Bebida do Pedido 1: "
  print(primeiraBebida pedido1)