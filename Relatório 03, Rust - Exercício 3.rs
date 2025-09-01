use std::io;
  
fn imprimir_tabuada(numero: i32, limite_inferior: i32, limite_superior: i32) {
  let mut i = limite_inferior;
  let mut resultado_multiplicacao: i32;

  loop {
    if i > limite_superior {
      break;
    }
    resultado_multiplicacao = numero * i;
    println!("{} x {} = {}", numero, i, resultado_multiplicacao);
    i += 1;
  }
}

fn main() {
  let mut numero = String::new();
  let mut limite_inferior = String::new();
  let mut limite_superior = String::new();
  
  println!("Digite o número da tabuada: ");

  io::stdin()
    .read_line(&mut numero)
    .expect("Valor inválido");

  println!("Digite o limite inferior: ");

  io::stdin()
    .read_line(&mut limite_inferior)
    .expect("Valor inválido");

  println!("Digite o limite superior: ");
  
  io::stdin()
    .read_line(&mut limite_superior)
    .expect("Valor inválido");

  let numero: i32 = numero
    .trim()
    .parse()
    .expect("Valor inválido");

  let limite_inferior: i32 = limite_inferior
    .trim()
    .parse()
    .expect("Valor inválido");

  let limite_superior: i32 = limite_superior
    .trim()
    .parse()
    .expect("Valor inválido");

  imprimir_tabuada(numero, limite_inferior, limite_superior);
}