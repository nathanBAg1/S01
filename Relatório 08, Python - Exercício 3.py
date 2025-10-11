from abc import ABC, abstractmethod

class ArmaCorpoACorpo:
    
    def __init__(self, nome: str):
        self._nome = nome

class PhantomThieves:

    def __init__(self, nome: str, arma: ArmaCorpoACorpo):
        self._nome = nome
        self._arma = arma

class Joker:

    def __init__(self, arma: ArmaCorpoACorpo, membros: list[PhantomThieves]):
        self._arma = arma
        self._membros = membros

    def mostrar_equipe(self):
        print("Os membros da equipe do Joker são:")
        for membro in self._membros:
            print(f"Nome: {membro._nome} | Arma: {membro._arma._nome}")

if __name__ == "__main__":
    phanton: list[PhantomThieves] = [PhantomThieves("José", ArmaCorpoACorpo("Espada")), 
                                     PhantomThieves("João", ArmaCorpoACorpo("Machado")),
                                     PhantomThieves("Ana", ArmaCorpoACorpo("Foice"))]
    
    joker = Joker(ArmaCorpoACorpo("Adaga"), phanton)

    joker.mostrar_equipe()