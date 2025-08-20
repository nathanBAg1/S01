10 numero = rnd(100)
20 INPUT "Tente adivinhar o número correto: "; tentativa
30 IF tentativa = numero THEN GOTO 100
40 IF tentativa > numero THEN GOTO 200
50 IF tentativa < numero THEN GOTO 300
      
100 PRINT "Parabéns você acertou o número!"
110 END

200 PRINT "O número correto é menor que o número digitado"
210 INPUT "Tente novamente: "; tentativa
220 GOTO 30

300 PRINT "O número correto é maior que o número digitado"
310 INPUT "Tente novamente: "; tentativa
320 GOTO 30