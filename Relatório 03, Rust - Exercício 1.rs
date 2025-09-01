use std::io;

fn verificar_senha(senha: &str) -> bool {
  let mut senha_e_valida = false;
  let mut tamanho_valido = false;
  let mut tem_numero = false;
  let mut tem_letra_maiuscula = false;

  if senha.len() >= 8 {
    tamanho_valido = true;
  }
  
  for i in senha.chars() {
    if i.is_ascii_uppercase() {
      tem_letra_maiuscula = true;
    }

    if i.is_digit(10) {
      tem_numero = true;
    }
  }

  if tamanho_valido && tem_letra_maiuscula && tem_numero {
    senha_e_valida = true;
  }

  senha_e_valida
}

fn main() {
  println!("Digite uma senha: ");

let mut senha = String::new();
  
  loop {
    senha.clear();
    io::stdin()
      .read_line(&mut senha)
      . expect("Falha ao ler a senha");

    let senha_valida = verificar_senha(&senha);
    if senha_valida {
      println!("Senha válida! Acesso concedido.");
      break;
    }
    else {
      println!("Senha inválida!");
    }
  }
}