using System;
using System.Collections.Generic;

public class MembroDaSociedade
{
    private string Nome { get; set; }

    private string Raca { get; set; }

    private string Funcao { get; set; }

    public MembroDaSociedade(string nome, string raca, string funcao)
    {
        this.Nome = nome;
        this.Raca = raca;
        this.Funcao = funcao;
    }

    public void Descrever()
    {
        Console.WriteLine($"Sou {Nome}, o {Raca}, e sou um grande {Funcao}!");
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        MembroDaSociedade Aragorn = new MembroDaSociedade("Aragorn", "Humano", "Guardião");
        MembroDaSociedade Legolas = new MembroDaSociedade("Legolas", "Elfo", "Arqueiro");

        Aragorn.Descrever();
        Legolas.Descrever();
    }
}