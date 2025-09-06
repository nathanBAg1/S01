package main

import "fmt"

func main() {
	var numero int
	
	fmt.Println("Digite um número: ")
	fmt.Scanln(&numero)

	switch {
		case numero % 2 == 0: {
			fmt.Println("O número é par")
		}
		case numero % 2 != 0: {
			fmt.Println("O número é ímpar")
		}
	}
}