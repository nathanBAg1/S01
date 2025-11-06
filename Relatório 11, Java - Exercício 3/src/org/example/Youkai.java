package org.example;

public class Youkai extends Entidades{
    public String nome;
    private String localizacao;
    private Poder _poder;

    public Youkai(String nome, String local, Poder poder){
        super(nome, local);
        this.nome = nome;
        this.localizacao = local;
        _poder = poder;
    }

    @Override
    public String obterCoordenadas() {
        return "O Youkai " + this.nome + " está em " + this.localizacao;
    }
}
