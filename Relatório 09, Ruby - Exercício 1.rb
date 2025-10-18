class Drink

    attr_reader :nome
    attr_accessor :preco_base

    def initialize(nome)
        @nome = nome
    end

    def to_s
        "Apenas um drink"
    end

    def preco_base
        return @preco_base
    end

    def preco_base=(preco_base)
        @preco_base = preco_base if preco_base.positive?
    end
end

class DrinkLenda < Drink

    attr_accessor :anos_desde_criacao, :preco_final

    def initialize(nome, anos)
        super(nome)
        @anos_desde_criacao = anos
    end

    def to_s
        "Um drink Lendário!"
    end

    def preco_final
        @preco_final = @preco_base + 5 * @anos_desde_criacao
    end

end

puts "Digite o nome: "
nome = gets.chomp
puts "Digite o preço base: "
preco_base = gets.chomp.to_i
puts "Digite a idade do drink: "
anos = gets.chomp.to_i

oDrink = DrinkLenda.new(nome, anos)
oDrink.preco_base = preco_base

puts "Nome do Drink: #{oDrink.nome} \nPreço Base do Drink: R$ #{oDrink.preco_base} \nPreço Final do Drink: R$ #{oDrink.preco_final}"