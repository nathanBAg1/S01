package main

import "fmt"

func verificarLogin(usuario, senha string) bool {
	 if usuario == "senha" && senha == "admin" {
		 return true
	 } else {
		 return false
	 }
 }

func main() {
	var usuario, senha string
	var deuCerto bool = false
	var loop_infinito bool = true
		
	for loop_infinito {
		fmt.Println("Digite o nome de usuário: ")
		fmt.Scanln(&usuario)
		fmt.Println("Digite a sua senha: ")
		fmt.Scanln(&senha)
		deuCerto = verificarLogin(usuario, senha)
		if deuCerto == true {
			fmt.Println("Login bem-sucedido!")
			break
		} else {
			fmt.Println("Usuário ou senha incorretos. Tente novamente.")
		}
	}
}