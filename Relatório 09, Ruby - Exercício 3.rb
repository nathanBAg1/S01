class MicroondasUnidade

    attr_accessor :nome

    def initialize(nome)
        @nome = nome
    end

    def aquecer_por()
        puts "Aquecendo por #{@nome}"
    end

end

class DMail

    attr_accessor :conteudo, :hora_envio

    def initialize(conteudo, hora_envio)
        @conteudo = conteudo
        @hora_envio =  hora_envio
    end
    
end

class TelefoneDeMicroondas

    attr_accessor :DMails, :unidade

    def initialize(nome)
        @unidade = MicroondasUnidade.new(nome)
        @DMails = []
    end

    def enviar_dmail
        puts "Conteudo: "
        conteudo = gets.chomp
        puts "Hora do envio (coloque no formato HH:MM): "
        hora_envio = gets.chomp
        
        @unidade.aquecer_por()

        @DMails << DMail.new(conteudo, hora_envio)
    end

    def listar_dmails(horario_corte)
        posterior = @DMails.select { |d| d.hora_envio > horario_corte}

        posterior.each do |d|
            puts "#{d.conteudo}"
        end
    end

end

telefone = TelefoneDeMicroondas.new("Unidade 1")

puts "Enviando DMails: "
telefone.enviar_dmail
telefone.enviar_dmail
telefone.enviar_dmail

puts "Defina o horário de corte: "
corte = gets.chomp

telefone.listar_dmails(corte)