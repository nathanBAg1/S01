class Musico

    attr_accessor :nome, :instrumento

    def initialize(nome, instrumento)
        @nome = nome
        @instrumento = instrumento
    end

    def tocar_partitura(peca)
        raise NotImplementedError, "#{self.class} implemente o método 'tocar_partitura'"
    end

end

class Pianista < Musico

    def initialize(nome)
        super(nome, "Piano")
    end

    def tocar_partitura(peca)
        puts "#{@nome} está tocando #{peca} no Piano!"
    end

end

class Violinista < Musico

    def initialize(nome)
        super(nome, "Violino")
    end

    def tocar_partitura(peca)
        puts "#{@nome} está tocando #{peca} no Violino!"
    end

end

class Maestro
    attr_accessor :musicos

    def initialize(musicos)
        @musicos = musicos
    end

    def iniciar_ensaio(peca)
        @musicos.each do |m|
            m.tocar_partitura(peca)
        end
    end

    def mudar_foco(estado)
        foco = @musicos.map do |m|
            puts "#{m.nome} agora está #{estado}!"
        end
    end

end

musicos = [Pianista.new("Beethoven"), Violinista.new("Monteverdi")]

maestro = Maestro.new(musicos)

puts "Defina o nome da peça: "
peca = gets.chomp
puts "Defina o estado dos músicos: "
estado = gets.chomp

maestro.iniciar_ensaio(peca)
maestro.mudar_foco(estado)