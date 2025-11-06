package org.example;

import java.util.HashMap;

public class Main {
    public static void main(String[] args) {
        Boss nosk = new Boss("Nosk", "3", "Luz");
        BossMagico radiancia = new BossMagico("Radiância", "10", "Escuridão");

        nosk.adicionarAtaque(new Ataque("Pulo", 1));
        nosk.adicionarAtaque(new Ataque("Projéteis", 2));

        radiancia.adicionarAtaque(new Ataque("Feixe de Luz", 2));
        radiancia.adicionarAtaque(new Ataque("Espinhos", 3));

        Batalha batalha = new Batalha(new HashMap<String, Boss>());
        batalha.adicionarBoss(nosk);
        batalha.adicionarBoss(radiancia);
        batalha.adicionarBoss(nosk);

        batalha.iniciarBatalha("3");
        batalha.iniciarBatalha("10");
    }
}