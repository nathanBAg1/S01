#include <iostream>
using namespace std;

float somarArray(float arr[], int tamanho) 
{
	
	float soma = 0;
	
	for(int i=0; i<tamanho; i++)
	{
		soma += arr[i];
	}
	
	return soma;
}

int main()
{
	int tamanho;
	cout << "Digite o tamanho do array:" << endl;
	cin >> tamanho;
	
	float array[tamanho];
	cout << "Digite os valores do array: " << endl;
	for(int i=0; i<tamanho; i++)
	{
		cin >> array[i];
	}
	
	cout << "Valor do Somatorio de Array: " << somarArray(array, tamanho) << endl;
	
	return 0;
}