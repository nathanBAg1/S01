#include <iostream>
#include <string>
#include <locale.h>
using namespace std;

class Pessoa {
public:
	string nome;
	
	Pessoa(string nome) {
		this->nome = nome;
	}
	
	virtual void apresentar() {
		cout << "Olá, meu nome é " << nome << " e eu sou uma pessoa." << endl;
	}
};

class Professor : public Pessoa {
public:
	string disciplina;
	
	Professor(string nome, string disciplina) : Pessoa(nome){
		this->disciplina = disciplina;
	}
	
	void apresentar() override {
		cout << "Olá, meu nome é " << nome << " e eu sou professor de " << disciplina << endl;
	}
};

class Aluno : public Pessoa {
public:
	string curso;
	int matricula;
	
	Aluno(string nome, string curso, int matricula) : Pessoa(nome) {
		this->curso = curso;
		this->matricula = matricula;
	}
	
	void apresentar() override {
		cout << "Olá, meu nome é " << nome << " e eu sou aluno de " << curso << endl;
	}
};

int main()
{
	setlocale(LC_ALL, "portuguese");
	
	Pessoa* pro = new Professor("João", "Cálculo");
	Pessoa* al = new Aluno("Jonas", "Software", 123);
	
	pro->apresentar();
	al->apresentar();
	
	delete pro;
	delete al;
	
	return 0;
}