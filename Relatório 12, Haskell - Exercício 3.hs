data Banda = Banda {nome :: String, genero :: String, cache :: Double}
  deriving(Show)

data Status = Ativo | Encerrado | Cancelado
  deriving(Show, Eq)

data Evento = Evento {bandas :: [Banda], status :: Status}
  deriving(Show)

custoTotalEvento :: Evento -> Double
custoTotalEvento (Evento bandas status)
  | status == Cancelado = 0.0
  | otherwise = total
  where
    total = sum (map cache bandas) + sum (map cache bandas) * 0.2

bandaAbertura:: Evento -> String
bandaAbertura evento =
  case bandas evento of
    [] -> "Não há bandas no evento!"
    (x:_) -> nome x

bandaFinalizacao:: Evento -> String
bandaFinalizacao evento =
  case bandas evento of
    [] -> "Não há bandas no evento!"
    xs -> nome (last xs)

banda1 = Banda "Linking Park" "Rock" 200000.0
banda2 = Banda "Silk Sonic" "Soul" 150000.0
banda3 = Banda "Red Hot Chili Peppers" "Punk" 175000.0

evento1 = Evento [banda1, banda2] Ativo
evento2 = Evento [banda1, banda3] Encerrado
evento3 = Evento [banda2, banda3] Cancelado

main :: IO()
main = do
  putStr "Custo do Evento 1 (Ativo): R$ "
  print(custoTotalEvento evento1)
  putStr "Custo do Evento 2 (Encerrado): R$ "
  print(custoTotalEvento evento2)
  putStr "Custo do Evento 3 (Cancelado): R$ "
  print(custoTotalEvento evento3)

  putStr "\nBanda de Abertura do Evento 1: "
  print(bandaAbertura evento1)
  putStr "Banda de Finalização do Evento 1: "
  print(bandaFinalizacao evento1)