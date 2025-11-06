package org.example;

public class CafeLeblanc {
    private Menu _menu;

    public CafeLeblanc(Menu menu) {
        this._menu = menu;
    }

    public void receberPedido(Cafe cafe) {
        System.out.println("O seu pedido de um " + cafe.nome + " foi recebido!");
    }
}
