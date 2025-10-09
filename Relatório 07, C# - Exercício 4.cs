using System;
using System.Collections.Generic;

public class MonstroSombrio
{
    public string Nome { get; set; }

    public MonstroSombrio(string nome)
    {
        this.Nome = nome;
    }

    public virtual void Mover()
    {
        Console.WriteLine($"{Nome}, se move!");
    }
}

public class Zumbi : MonstroSombrio
{
    public Zumbi(string nome) : base(nome) {}

    public override void Mover()
    {
        Console.WriteLine($"{Nome} é um Zumbi muito devagar!");
    }
}

public class Espectro : MonstroSombrio
{
    public Espectro(string nome) : base(nome) {}


    public override void Mover()
    {
        Console.WriteLine($"{Nome} é um Espectro muito veloz!");
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        MonstroSombrio[] monstros = new MonstroSombrio[]
        {
            new Zumbi("Steve"),
            new Espectro("Patrono"),
        };


        foreach (var m in monstros)
        {
            m.Mover();
        }
    }
}