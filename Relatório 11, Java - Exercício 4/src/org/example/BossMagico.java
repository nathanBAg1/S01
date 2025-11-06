package org.example;

public class BossMagico extends Boss{
    public BossMagico(String nome, String id, String fracoContra) {
        super(nome, id, fracoContra);
    }

    @Override
    public void iniciarFase(){
        System.out.println("Fase Mágica Iniciada!");
    }
}
