#include <iostream>
using namespace std;

int main()
{
	int n;
	
	cout << "Digite quantas notas voce quer inserir: " << endl;
	cin >> n;
	
	float nota;
	float soma = 0;
	
	for(int i=0; i<n; i++)
	{
		cout << "Insira uma nota: " << endl;
		cin >> nota;
		while(nota > 10 || nota < 0)
		{
			cout << "Digite uma nota valida: " << endl;
			cin >> nota;
		}
		soma += nota;
	}
	
	float media = soma/n;
	
	if(media >= 7)
	{
		cout << "Aprovado" << endl;
	}
	else
	{
		cout << "Reprovado" << endl;
	}
	
	return 0;
}