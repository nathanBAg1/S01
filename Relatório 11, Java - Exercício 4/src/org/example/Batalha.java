package org.example;

import java.util.HashMap;

public class Batalha {
    private HashMap<String, Boss> _arena;

    public Batalha(HashMap<String, Boss> arena) {
        this._arena = arena;
    }

    public void adicionarBoss(Boss boss) {
        System.out.println("Um novo boss foi adicionado a arena Panteão dos Deuses!");
        this._arena.put(boss.getIDBoss(), boss);
    }

    public void iniciarBatalha(String idBoss) {
        System.out.println("A batalha contra " + this._arena.get(idBoss).nome + " foi iniciada!");
        this._arena.get(idBoss).iniciarFase();
    }
}
