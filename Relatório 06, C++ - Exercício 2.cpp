#include <iostream>
#include <locale.h>
#include <string>
using namespace std;

class Pessoa {
private:
	string nome;
	int idade;
	
public:	
	void setNome(string nome) {
		this->nome = nome;
	}
	
	void setIdade(int idade) {
		this->idade = idade;
	}
	
	string getNome() {
		return this->nome;
	}
	
	int getIdade() {
		return this->idade;
	}
};

class Protagonista : public Pessoa {
private:
	int nivel;
	
public:
	void setNivel (int nivel){
		this->nivel = nivel;
	}
	
	int getNivel() {
		return this->nivel;
	}
};

class Personagem : public Pessoa {
private:
	int rank;

public:
	void setRank(int rank) {
		this->rank = rank;
	}
	
	int getRank() {
		return this->rank;
	}
};

int main()
{
	setlocale(LC_ALL, "portuguese");
	
	Protagonista pro;
	pro.setNome("João");
	pro.setNivel(5);
	
	Personagem per;
	per.setNome("Jonas");
	per.setRank(4);
	
	cout << "Atributos acessados através de métodos:" << endl;
	cout << "Protagonista - Nome: " << pro.getNome() << " | Nível: " << pro.getNivel() << endl; 
	cout << "Personagem - Nome: " << per.getNome() << " | Rank: " << per.getRank() << endl; 
	
	return 0;
}