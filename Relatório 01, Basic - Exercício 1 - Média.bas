10 INPUT "Insira a primeira nota: "; np1
20 INPUT "Insira a segunda nota: "; np2
30 media = (VAL(np1) + VAL(np2))/2
35 PRINT media
40 IF media > 60 THEN GOTO 100
50 IF media < 30 THEN GOTO 200
60 IF media >= 30 AND media <= 60 THEN GOTO 300

100 PRINT "Aprovado direto."
110 END
      
200 PRINT "Reprovado direto."
210 END
      
300 INPUT "Insira uma nova nota: "; np3
310 nova_media = (VAL(media) + VAL(np3))/2
320 IF nova_media > 50 THEN GOTO 400
330 IF nova_media <= 50 THEN GOTO 500

400 PRINT "Aprovado pela NP3"
410 END

500 PRINT "Reprovado pela NP3"
510 END