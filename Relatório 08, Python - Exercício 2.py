from abc import ABC, abstractmethod

class Heroi:

    def __init__(self, nome: str, funcao: str):
        self._nome = nome
        self._funcao = funcao
    
    @abstractmethod
    def usar_ultimate():
        pass

class Tanque(Heroi):

    def usar_ultimate(self):
        print(f"{self._nome}, o {self._funcao}, usou seu poderoso ultimate!")

class Dano(Heroi):

    def usar_ultimate(self):
        print(f"{self._nome}, o personagem de {self._funcao}, usou seu ultimate de dano extremo!")

if __name__ == "__main__":
    herois: list[Heroi] = [Tanque("Reinhardt", "Tanque"), Dano("Reaper", "Dano")]

    for heroi in herois:
        heroi.usar_ultimate()