#include <iostream>
#include <string>
#include <locale.h>
#include <list>
using namespace std;

class SerVivo {
public:
	string nome;
	
	SerVivo(string nome) {
		this->nome = nome;
	}
	
	virtual void apresentar() {
		cout << "Ol�, meu nome � " << nome << endl;
	}	
};

class Humano : public SerVivo {
public:
	Humano(string nome) : SerVivo(nome) {}
	
	void apresentar() override {
		cout << "Ol�, meu nome � " << nome << ", sou apenas um humano comum!" << endl;
	}
};

class Elfo : public SerVivo {
public:	
	Elfo(string nome) : SerVivo(nome) {}
	
	void apresentar() override {
		cout << "Ol�, meu nome � " << nome << ", sou um nobre elfo da floresta!" << endl;
	}
};

class Fada : public SerVivo {
public:
	Fada(string nome) : SerVivo(nome) {}
	
	void apresentar() override {
		cout << "Ol�, meu nome � " << nome << ", sou uma poderosa fada!" << endl;
	}
};

int main()
{
	setlocale(LC_ALL, "portuguese");
	
	list<SerVivo*> seresVivos;

	seresVivos.push_back(new Humano("Jo�o"));
	seresVivos.push_back(new Elfo("Link"));
	seresVivos.push_back(new Fada("Sininho"));
	
	for(SerVivo* ser : seresVivos) {
		ser->apresentar();
	}
	
	for(SerVivo* ser : seresVivos) {
		delete ser;
	}
	
	return 0;
}