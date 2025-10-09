using System;
using System.Collections.Generic;

public class Pokemon
{
    public string Nome { get; set; }

    public Pokemon(string nome)
    {
        this.Nome = nome;
    }

    public virtual void Atacar()
    {
        Console.WriteLine($"{Nome} atacou!");
    }
}

public class PokemonDeFogo : Pokemon
{
    public PokemonDeFogo(string nome) : base(nome) {}

    public override void Atacar()
    {
        Console.WriteLine($"{Nome} atacou usando Onda de Calor!");
    }
}

public class PokemonDeAgua : Pokemon
{
    public PokemonDeAgua(string nome) : base(nome) {}

    public override void Atacar()
    {
        Console.WriteLine($"{Nome} lançou Hidrocanhão!");
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        List<Pokemon> Pokemons = new List<Pokemon>();

        Pokemons.Add(new PokemonDeFogo("Charizard"));
        Pokemons.Add(new PokemonDeAgua("Blastoise"));

        foreach (var Pokemon in Pokemons)
        {
            Pokemon.Atacar();
        }
    }
}