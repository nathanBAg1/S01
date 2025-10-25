class Pokemon {
    #vida;
    nome;
    tipo;

    constructor(nome, tipo, vidaInicial) {
        this.nome = nome;
        this.tipo = tipo;
        this.#vida = vidaInicial;
    }

    get getVida() {
        return this.#vida;
    }

    set setVida(novaVida) {
        this.#vida = novaVida;
    }

    receberDano(dano) {
        this.#vida -= dano;
    }

    atacar(alvo) {
        console.log(`${this.nome} atacou!`);
    }
}

class PokemonFogo extends Pokemon {
    bonusAtaque;

    constructor(nome, vidaInicial, bonus) {
        super(nome, "Fogo", vidaInicial);
        this.bonusAtaque = bonus;
    }

    atacar(alvo) {
        console.log(`${this.nome} atacou ${alvo.nome} com um poderoso golpe Bola de Fogo!`);
        console.log(`O golpe deu ${this.bonusAtaque} de bonus de ataque!`);
        alvo.receberDano(this.bonusAtaque);
    }
}

class PokemonAgua extends Pokemon {
    #curaBase;

    constructor(nome, vidaInicial, curaBase) {
        super(nome, "Água", vidaInicial);
        this.#curaBase = curaBase;
    }

    get getCura() {
        return this.#curaBase;
    }

    atacar(alvo) {
        console.log(`${this.nome} atacou ${alvo.nome} com Jato De Água!`);
        console.log(`Com esse ataque ele curou ${this.getCura} pontos de sua vida!`);
        this.setVida = this.getVida + this.getCura;
    }
}

charizard = new PokemonFogo("Charizard", 50, 25);
blastoise = new PokemonAgua("Blastoise", 45, 20);

console.log(`Ao início da batalha:`);
console.log(`A vida de ${charizard.nome} é ${charizard.getVida}`);
console.log(`A vida de ${blastoise.nome} é ${blastoise.getVida}`);
console.log("/-------------------------------------------------/")

charizard.atacar(blastoise);

blastoise.atacar(charizard);

console.log("/-------------------------------------------------/")
console.log(`Ao final da batalha:`);
console.log(`A vida de ${charizard.nome} é ${charizard.getVida}`);
console.log(`A vida de ${blastoise.nome} é ${blastoise.getVida}`);