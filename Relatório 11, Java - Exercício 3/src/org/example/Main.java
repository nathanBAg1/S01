package org.example;

public class Main {
    public static void main(String[] args) {
        Youkai kitsune = new Youkai("Kitsune", "Tokyo", new Poder("Fogo"));
        Alien x = new Alien("Alien X", "Centro da Criação", "Ominitrix");

        Registros reg = new Registros("Monstros S.A.");
        reg.registrarAvistamento(kitsune, "Avistamento 1");
        reg.registrarAvistamento(x, "Avistamento 2");

        System.out.println(kitsune.obterCoordenadas());
        System.out.println(x.obterCoordenadas());
    }
}