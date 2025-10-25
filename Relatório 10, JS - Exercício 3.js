class Criatura {
    nome;
    perigosa;

    constructor(nome, perigosa) {
        this.nome = nome;
        this.perigosa = perigosa;
    }
}

class Diário {
    #autorSecreto;
    #enigmas;
    #criaturasAvistadas;

    constructor(autor) {
        this.#autorSecreto = autor;
        this.#enigmas = new Map();
    }

    get getAutor() {
        return this.#autorSecreto;
    }

    adicionarEnigma(num, enigma) {
        this.#enigmas.set(num, enigma)
    }

    decodificar(chave, num) {
        return `Decodificando o enigma ${this.#enigmas.get(num)} com a chave ${chave}`;
    }

    set setCriaturas(criaturas) {
        this.#criaturasAvistadas = criaturas;
    }
}

class Personagem {
    nome;
    idade;

    constructor(nome, idade) {
        this.nome = nome;
        this.idade = idade;
    }
}

class Protagonista extends Personagem {
    #diario3;

    constructor(nome, idade) {
        super(nome, idade);
    }

    set setDiario3(diario3) {
        this.#diario3 = diario3;
    }
}

class CabanaMistério {
    visitantes;

    constructor(diario) {
        this.visitantes = diario;
    }

    listarFuncionários() {
        return this.visitantes;
    }
}

diario3 = new Diário("Stanford Pines");

criaturas = [
    new Criatura("Gnomos", "Não se sabe"),
    new Criatura("Morcegos Vampiros Gigantes", "Não"),
    new Criatura("Bill Cipher", "Extremamente Perigoso!"),
];

diario3.setCriaturas = criaturas;

dipper = new Protagonista("Dipper", 12);
dipper.setDiario3 = diario3;

personagens = [
    new Personagem("Mabel", 12),
    new Personagem("Wendy", 15),
    new Personagem("Soos", 21),
    dipper,
];

cabana = new CabanaMistério(personagens);

console.log("Os funcionarios da cabana são: ")
cabana.listarFuncionários().forEach(element => {
    console.log(element.nome);
});
console.log("/-------------------------------------------------/");
diario3.adicionarEnigma(1, "'Enigma do Bill'");
console.log("Resolvendo um enigma do diário: ");
console.log(diario3.decodificar("Axolote", 1));