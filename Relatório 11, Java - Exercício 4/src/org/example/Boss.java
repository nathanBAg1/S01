package org.example;

import java.util.LinkedHashSet;

public class Boss {
    public String nome;
    private String idBoss;
    private String PontoFraco;
    private LinkedHashSet<Ataque> _moveset;

    public Boss(String nome, String id, String fracoContra){
        this.nome = nome;
        this.idBoss = id;
        this.PontoFraco = fracoContra;
        this._moveset = new LinkedHashSet<>();
    }

    public void adicionarAtaque(Ataque ataque) {
        this._moveset.add(ataque);
    }

    public void iniciarFase() {
        System.out.println("Fase Iniciada!");
    }

    public String getIDBoss() {
        return idBoss;
    }
}
