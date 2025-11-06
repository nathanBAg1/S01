package org.example;

import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
        CafeGourmet macchiato = new CafeGourmet("Macchiato", 20.5, 4.5);
        Cafe expresso = new Cafe("Expresso", 10.25);

        Menu menu = new Menu(new ArrayList<Cafe>());
        menu.adicionarItem(macchiato);
        menu.adicionarItem(expresso);

        CafeLeblanc leblanc = new CafeLeblanc(menu);

        System.out.println("O preço do Macchiato é: " + macchiato.CalcularPrecoFinal());
        System.out.println("O preço do Expresso é: " + expresso.CalcularPrecoFinal());

        leblanc.receberPedido(macchiato);
    }
}