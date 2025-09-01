use std::io;
  
fn eh_par(numero: i32) -> bool {
    let resultado;
    if numero % 2 == 0 {
      resultado = true;
    }
    else {
     resultado = false;
    }

    resultado
}

fn main() {
    println!("Jogador 1, escolha entre par ou ímpar: ");
    
    let mut escolha = String::new();
    let jogador1: bool;
  
    loop {
      escolha.clear();
      io::stdin()
        .read_line(&mut escolha)
        .expect("Escolha inválida");
  
      if escolha.trim() == "par" {
          jogador1 = true;
          break;
      }
      else if escolha.trim() == "ímpar" {
          jogador1 = false;
          break;
      }
      else {
        println!("Escolha inválida, digite novamente: ");
      }
    }
  
    let mut valor1 = String::new();
    let mut valor2 = String::new();

    println!("Jogador 1, digite um número: ");
    io::stdin()
      .read_line(&mut valor1)
      .expect("O valor digitado é inválido!");
  
    println!("Jogador 2, digite um número: ");
    io::stdin()
      .read_line(&mut valor2)
      .expect("O valor digitado é inválido!");

    let numero1: i32 = valor1
      .trim()
      .parse()
      .expect("O valor digitado é inválido!");

    let numero2: i32 = valor2
      .trim()
      .parse()
      .expect("O valor digitado é inválido!");

    let soma = numero1 + numero2;

    let resultado = eh_par(soma);

    if resultado == true {
      if jogador1 == true {
        println!("A soma dos números foi {} e o vencedor foi o jogador 1", soma);
      }
      else {
        println!("A soma dos números foi {} e o vencedor foi o jogador 2", soma);
      }
    }
    else {
      if jogador1 == false {
        println!("A soma dos números foi {} e o vencedor foi o jogador 1", soma);
      }
      else {
        println!("A soma dos números foi {} e o vencedor foi o jogador 2", soma);  
      }
    }
}