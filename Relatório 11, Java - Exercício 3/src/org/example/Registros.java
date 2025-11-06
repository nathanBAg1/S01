package org.example;

import java.util.HashMap;

public class Registros {
    public String nomeEquipe;
    private HashMap<Entidades, String> _avistamentos;

    public Registros(String nomeEquipe) {
        this.nomeEquipe = nomeEquipe;
        _avistamentos = new HashMap<>();
    }

    public boolean registrarAvistamento(Entidades entidades, String nome) {
        this._avistamentos.put(entidades, nome);
        System.out.println("O avistamento da equipe " + this.nomeEquipe + " da entidade " + entidades.nome + " foi registrado com sucesso!");
        return true;
    }
}
