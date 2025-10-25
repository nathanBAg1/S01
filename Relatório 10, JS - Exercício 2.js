class IExplorador{

    explorarTerritorio() {
        throw new Error(`O soldado ${this.nome} deve ter o IExplorador implementado.`)
    }
}

class Esquadrão extends IExplorador{
    lider;
    membrosIniciais;

    explorarTerritorio() {
        return "O esquadrão explora o território!";
    }

    constructor(lider, membrosIniciais) {
        super();
        this.lider = lider;
        this.membrosIniciais = membrosIniciais;
    }

    adicionarMembro(soldado) {
        this.membrosIniciais.push(soldado);
    }

    relatarStatus() {
        return this.membrosIniciais;
    }
}

class ODM_gear {
    modelo;
    #gasRestante = 100;

    constructor(modelo) {
        this.modelo = modelo;
    }

    usarGas(quantidade) {
        this.#gasRestante -= quantidade;
    }

    get getGas() {
        return this.#gasRestante;
    }
}

class Soldado extends IExplorador{
    nome;
    #gear;

    constructor(nome, modeloGear) {
        super();
        this.nome = nome;
        this.#gear = new ODM_gear(modeloGear);
    }

    explorarTerritorio() {
        console.log(`${this.nome} está explorando o território!`);
    }

    verificarEquipamento() {
        return `${this.nome} está verificando sua ${this.#gear.modelo}`;
    }

    get getGear() {
        return this.#gear;
    }
}

levi = new Soldado("Levi", "Espada Dupla");

soldados = [
    new Soldado("Eren", "Lâminas"),
    new Soldado("Mikasa", "Lanças do Trovão"),
];

operacoesEspeciais = new Esquadrão(levi, soldados);

operacoesEspeciais.adicionarMembro(new Soldado("Armin", "Lâminas"));

levi.explorarTerritorio();
console.log(levi.verificarEquipamento());


console.log("/-------------------------------------------------/");
console.log("Quantidade de Gás no Início: " + levi.getGear.getGas);
levi.getGear.usarGas(30);
console.log("Quantidade de Gás no Após o Uso: " + levi.getGear.getGas);
console.log("/-------------------------------------------------/");

operacoesEspeciais.explorarTerritorio();
operacoesEspeciais.relatarStatus().forEach(element => {
    console.log(`${element.nome} está pronto para o serviço!`);
});