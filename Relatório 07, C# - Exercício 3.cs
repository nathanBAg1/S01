using System;
using System.Collections.Generic;

public class Feitico
{
    public string Nome { get; set; }

    public Feitico(string nome)
    {
        this.Nome = nome;
    }
}

public class Grimorio
{
    public List<Feitico> feiticos { get; set; }

    public Grimorio()
    {
        feiticos = new List<Feitico>();
    }

    public void AdicionarFeitico(string nomeFeitico)
    {
        Feitico novoFeitico = new Feitico(nomeFeitico);
        feiticos.Add(novoFeitico);
    }
}

public class Ferramenta
{
    public string Nome { get; set; }

    public Ferramenta(string nome)
    {
        this.Nome = nome;
    }
}

public class Maga
{
    public string Nome { get; set; }
    public Grimorio grimorioDaMaga { get; set; }

    public List<Ferramenta> ferramentas;
    public Maga(string nome, List<Ferramenta> list)
    {
        this.Nome = nome;
        this.grimorioDaMaga = new Grimorio();
        ferramentas = list;
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        List<Ferramenta> Ferramentas = new List<Ferramenta>();
        Ferramentas.Add(new Ferramenta("Cajado"));
        Ferramentas.Add(new Ferramenta("Mala"));
        Ferramentas.Add(new Ferramenta("Poção"));

        Maga Frieren = new Maga("Frieren", Ferramentas);

        Frieren.grimorioDaMaga.AdicionarFeitico("Zoltraak");
        Frieren.grimorioDaMaga.AdicionarFeitico("Campo de Flores");
        Frieren.grimorioDaMaga.AdicionarFeitico("Barreira Defensiva");

        foreach (var item in Frieren.ferramentas)
        {
            Console.WriteLine(item.Nome);
        }
    }
}