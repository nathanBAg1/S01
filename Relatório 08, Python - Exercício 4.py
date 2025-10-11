from abc import ABC, abstractmethod

class Cibernetico:

    @abstractmethod
    def realizar_hack():
        pass

class Implante:

    def __init__(self, custo: int, funcao: str):
        self._custo = custo
        self._funcao = funcao

class NetRunner(Cibernetico):

    def __init__(self, nome: str, implante: Implante):
        self._nome = nome
        self._implante = implante

    def realizar_hack(self):
        print(f"O {self._nome}, que tem o implante {self._implante._funcao} de custo {self._implante._custo}, está realizando um hack!")
    
class Faccao:
    
    def __init__(self, ciberneticos: list[Cibernetico]):
        self._ciberneticos = ciberneticos

if __name__ == "__main__":
    faccao = Faccao(
        [
            NetRunner("José", Implante(5, "Tendões Reforçados")),
            NetRunner("João", Implante(10, "Braços de Gorila")),
            NetRunner("Alberto", Implante(7, "Segundo Folêgo")),
        ]
    )

    for membros in faccao._ciberneticos:
        membros.realizar_hack()