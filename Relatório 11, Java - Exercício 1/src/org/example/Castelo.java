package org.example;

import java.util.ArrayList;

public class Castelo {
    public String nome;

    private ArrayList<Divisão> divisões;

    public Castelo(String nome, ArrayList<Divisão> divisoes) {
        this.nome = nome;
        this.divisões = divisoes;
    }

    public void adicionarDivisao(Divisão divisao) {
        this.divisões.add(divisao);
    }
}
