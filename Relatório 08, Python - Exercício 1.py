from abc import ABC, abstractmethod

class Personagem:

    def __init__(self, vida: int, resitencia: int):
        self._vida = vida
        self._resistencia = resitencia

    def get_vida(self):
        return self._vida
    
    def set_vida(self, vida: int):
        self._vida = vida

    def __str__(self):
        return f"Personagem com {self._vida} de vida"

class Cavaleiro(Personagem):
    
    def armadura(self, armadura: bool):
        self._armadura_pesada = armadura

    def __str__(self):
        return f"Cavaleiro com {self._vida} de vida"
    
if __name__ == "__main__":
    npc = Personagem(56, 38)
    finn = Cavaleiro(73, 52)
    finn.armadura(True)

    npc.set_vida(60)
    npc.get_vida()

    print(npc)
    print(finn)
    