#include <iostream>
using namespace std;

double celsiusParaFahrenheit(double celsius)
{
	double fahrenheint;
	
	fahrenheint = ((celsius * 9)/5) + 32;
	
	return fahrenheint;
}

double celsiusParaKelvin(double celsius)
{
	double kelvin;
	
	kelvin = celsius + 273;
	
	return kelvin;
}

int main()
{
	int opcao;
	double celsius;
	
	do
	{
		cout << "Escolha uma opcao: " << endl;
		cout << "1. Converter Celsius para Fahrenheint" << endl;
		cout << "2. Converter Celsius para Kelvin" << endl;
		cout << "3. Sair" << endl;
		
		cin >> opcao;
		
		switch(opcao)
		{
			case 1:
			{
				cout << "Digite um valor em graus Celsius: " << endl;
				cin >> celsius;
				cout << celsiusParaFahrenheit(celsius) << " F" << endl;
				break;
			}
			case 2:
			{
				cout << "Digite um valor em graus Celsius: " << endl;
				cin >> celsius;	
				cout << celsiusParaKelvin(celsius) << " K" << endl;
				break;
			}
			case 3:
			{
				break;	
			}
			default:
			{
				cout << "Opcao invalida." << endl;
				break;
			}
		}
	} while(opcao != 3);
	
	return 0;
}