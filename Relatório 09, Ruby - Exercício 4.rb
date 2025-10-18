module Rastreavel

    def obter_localizacao(hora)
        raise NotImplementedError, "Implemente o método 'obter_localizacao'"
    end

end

module Perigoso

    def calcular_risco
        raise NotImplementedError, "Implemente o método 'calcular_risco'"
    end

end

class Participante
    attr_accessor :nome, :localizacao_atual

    def initialize(nome)
        @nome = nome
    end

end

class Detetive < Participante
    include Rastreavel

    def obter_localizacao(hora)
        puts "#{hora}, #{@nome} está #{@localizacao_atual}"
    end

    def initialize(nome)
        super(nome)
    end

end

class MestreDoCrime < Participante
    include Rastreavel
    include Perigoso

    def initialize(nome)
        super(nome)
    end

    def obter_localizacao(hora)
        puts "#{hora}, #{@nome} está #{@localizacao_atual}"
    end

    def calcular_risco
        puts "#{@nome} é muito perigoso!"
    end

end

class Cenario

    attr_accessor :participantes, :rastreavel

    def identificar_ameacas
        @rastreavel = @participantes.select { |r| r.respond_to?(:calcular_risco)}

        @rastreavel.each do |r| 
            puts r.nome
            r.obter_localizacao("Agora")
            r.calcular_risco
        end
    end

end

sherlock = Detetive.new("Sherlock")
moriarty = MestreDoCrime.new("Moriarty")

puts "Localização de Sherlock: "
sherlock.localizacao_atual = gets.chomp

puts "Localização de Moriarty: "
moriarty.localizacao_atual =  gets.chomp

cena = Cenario.new()
cena.participantes = [sherlock, moriarty]

cena.identificar_ameacas