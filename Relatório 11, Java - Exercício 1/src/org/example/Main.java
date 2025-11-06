package org.example;

import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
        Personagem joao = new Personagem("João", 18);
        Mago howl = new Mago("Howl", 27, "Grande Pássaro");

        Castelo animado = new Castelo("Castelo Animado", new ArrayList<>());
        animado.adicionarDivisao(new Divisão("Sala de estar"));
        animado.adicionarDivisao(new Divisão("Quarto do Howl"));

        System.out.println("O nome do castelo é: " + animado.nome);

        joao.setNome("João Gabriel");

        System.out.println(howl.lancarFeitico());
    }
}