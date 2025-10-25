class IRastreável {

    rastrearLocal(latitude, longitude) {
        throw new Error(`O Hunter ${this.nome} deve ter o IRastreável implementado.`)
    }
}

class Hunter extends IRastreável {
    #nome;
    #idade;
    #localizacao;

    constructor(nome, local, idade) {
        super();
        this.#nome = nome;
        this.#localizacao = local;
        this.#idade = idade;
    }

    get getNome() {
        return this.#nome;
    }
}

class Especialista extends Hunter {
    #habilidadeNen;

    constructor(nome, habilidade) {
        super(nome, "0 0", 18);
        this.#habilidadeNen = habilidade;
    }

    rastrearLocal(lat, long) {
        console.log(`O Especialista ${this.getNome} está na latitude ${lat} e longitude ${long}`);
    }
}

class Manipulador extends Hunter {
    #alvoAtual;

    constructor(nome) {
        super(nome, "0 0", 18);
    }

    rastrearLocal(lat, long) {
        this.localizacao = lat + " " + long;
        console.log(`O Manipulador ${this.getNome} está na latitude ${lat} e longitude ${long}`);
    }

    set setAlvo(hunter) {
        this.#alvoAtual = hunter;
    }
}

class Batalhão {
    #hunters;

    constructor() {
        this.#hunters = [];
    }

    adicionarHunter(hunter) {
        const dup = this.#hunters.some(d => d.nome === hunter.getNome);
        if (!dup)
            this.#hunters.push(hunter);
    }

    get getNumHunters() {
        let num = 0;
        this.#hunters.forEach(element => {
            num = num + 1;
        });

        return num;
    }

    iniciarRastreamento(lat, long) {
        console.log("Rastreamento Iniciado.");
        this.#hunters.forEach(element => {
            element.rastrearLocal(lat, long);
        });
    }
}

batalhao = new Batalhão()

gon = new Especialista("Gon", "Ten");
killua = new Especialista("Killua", "Supressão");

hisoka = new Manipulador("Hisoka");
hisoka.setAlvo = gon;

batalhao.adicionarHunter(gon);
batalhao.adicionarHunter(killua);
batalhao.adicionarHunter(hisoka);

console.log("Número de Hunters: ", batalhao.getNumHunters);

batalhao.iniciarRastreamento(37.4, 139.425);