package org.example;

public class Entidades implements IRastreável{
    public String nome;
    private String localizacao;

    public Entidades(String nome, String localizacao){
        this.nome = nome;
        this.localizacao = localizacao;
    }

    @Override
    public String obterCoordenadas() {
        return this.nome + "está em " + this.localizacao;
    }
}
