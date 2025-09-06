package main

import "fmt"

func fibonacci(n int) {
	var n1, n2 int = 0, 1
	var aux int

	fmt.Println("Aqui está a sequência de Fibonacci até onde você pediu: ")
	for i := 0; i < n; i++ {
		if i == 0 {
			fmt.Println(n1)
			n1 = 1
		} else if i == 1 {
			fmt.Println(n2)
		} else {
			aux = n1 + n2
			n1 = n2
			n2 = aux
			fmt.Println(n1)
		}
	}
}

func main() {
	var quantidade int

	fmt.Println("Quantos números da sequência de Fibonacci você quer?: ")
	fmt.Scanln(&quantidade)

	fibonacci(quantidade)
}