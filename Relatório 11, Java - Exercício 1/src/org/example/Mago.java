package org.example;

public class Mago extends Personagem {
    private String magia;

    public Mago(String nome, int idade, String magia) {
        super(nome, idade);
        this.magia = magia;
    }

    public String lancarFeitico() {
        return "A magia " + this.magia + " foi lançada!";
    }
}
