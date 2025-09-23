#include <iostream>
#include <locale.h>
#include <string>
using namespace std;

class Personagem {
public:
	string nome;
	int nivel;
	int dano;
	int vida;
	
	Personagem(string nome, int nivel, int dano, int vida) {
		this->nome = nome;
		this->nivel = nivel;
		this->dano = dano;
		this->vida = vida;
	}
	
	void atacar(Personagem &personagem) {
		cout << "O personagem " << personagem.nome << " foi atacado!" << endl;
		
		personagem.vida = personagem.vida - dano;
	}
};

int main()
{
	setlocale(LC_ALL, "portuguese");
	
	Personagem p1("Ranger", 4, 7, 22);
	Personagem p2("Paladino", 5, 9, 42);
	
	p2.atacar(p1);

	cout << endl;
	cout << "Informações de cada personagem após o combate: " << endl;
	cout << "Nome:" << p1.nome << " | Nível: " << p1.nivel << " | Dano: " 
	<< p1.dano << " | Vida: " << p1.vida << endl;
	cout << "Nome: " << p2.nome << " | Nível: " << p2.nivel << " | Dano: " 
	<< p2.dano << " | Vida: " << p2.vida << endl;
	
	return 0;
}