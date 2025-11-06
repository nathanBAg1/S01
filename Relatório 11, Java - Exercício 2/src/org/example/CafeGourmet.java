package org.example;

public class CafeGourmet extends Cafe {
    public double bonusAroma;

    public CafeGourmet(String nome, double preco, double bonusAroma) {
        super(nome, preco);
        this.bonusAroma = bonusAroma;
    }

    @Override
    public double CalcularPrecoFinal() {
        return precoBase + bonusAroma;
    }
}
