package org.example;

public class Alien extends Entidades{
    private String planetaOrigem;
    private String Ovni;

    public Alien(String nome, String planeta, String Ovni) {
        super(nome, planeta);
        this.planetaOrigem = planeta;
        this.Ovni = Ovni;
    }

    @Override
    public String obterCoordenadas() {
        return "O Alien " + this.nome + " está em " + this.planetaOrigem;
    }
}
