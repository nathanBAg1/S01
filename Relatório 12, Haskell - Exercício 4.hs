data Servico = Servico {nome :: String, tipo :: String, preco :: Double}
  deriving(Show)

data Status = EmAndamento | Finalizado | Cancelado
  deriving(Show, Eq)

data Atendimento = Atendimento {servicos :: [Servico], status :: Status}
  deriving(Show)

bonusEspiritual :: [Servico] -> Double
bonusEspiritual servicos
  | numeroDeServicos <= 3 && total <= 500 = total
  | numeroDeServicos > 3 && total <= 500 = total - bonus
  | numeroDeServicos <= 3 && total > 500 = total - desconto
  | numeroDeServicos > 3 && total > 500 = total - bonus - desconto
  where
    total = sum (map preco servicos)
    numeroDeServicos = length servicos
    bonus = total * 0.25
    desconto = total * 0.1

valorFinalAtendimento :: Atendimento -> Double
valorFinalAtendimento (Atendimento servicos status)
  | status == Cancelado = 0.0
  | otherwise = bonusEspiritual servicos

descricaoPrimeiroServico :: Atendimento -> String
descricaoPrimeiroServico atendimento =
  case servicos atendimento of
    [] -> "Não há serviços nesse atendimento"
    (x:_) -> "Nome: " ++ nome x ++ "; Tipo: " ++ tipo x

servico1 = Servico "Banho Termal" "Banho" 100.0
servico2 = Servico "Massagem Restauradora" "Massagem" 200.0
servico3 = Servico "Banquete dos Deuses" "Banquete" 301.0
servico4 = Servico "Banquete Infinito" "Banquete" 350.0

atendimento1 = Atendimento [servico1, servico2] EmAndamento
atendimento2 = Atendimento [servico1, servico3] Finalizado
atendimento3 = Atendimento [servico2, servico3] Cancelado
atendimento4 = Atendimento [servico2, servico3] EmAndamento
atendimento5 = Atendimento [servico1, servico2, servico3, servico4] EmAndamento

main :: IO()
main = do
  putStr "Custo do Atendimento 1 (EmAndamento): R$ "
  print(valorFinalAtendimento atendimento1)
  putStr "Custo do Atendimento 2 (Finalizado): R$ "
  print(valorFinalAtendimento atendimento2)
  putStr "Custo do Atendimento 3 (Cancelado): R$ "
  print(valorFinalAtendimento atendimento3)
  putStr "Custo do Atendimento 4 (EmAndamento): R$ "
  print(valorFinalAtendimento atendimento4)
  putStr "Custo do Atendimento 5 (EmAndamento): R$ "
  print(valorFinalAtendimento atendimento5)

  putStr "\nDescrição do Primeiro Serviço do Atendimento 1: "
  print(descricaoPrimeiroServico atendimento1)