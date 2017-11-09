module Nutrientes
    class Nutrientes
        attr_reader :nombre, :proteina, :glucidos, :lipidos
    
        def initialize(nombre,proteina,glucidos,lipidos)
            @nombre = nombre
            @proteina = proteina
            @glucidos = glucidos
            @lipidos = lipidos
        end

        def to_s
            "Nombre: #{@nombre} --> [Proteinas=#{@proteina}, Glúcidos=#{@glucidos}, Lípidos=#{@lipidos}]:"
        end

        def valorEnergetico
            valor = @proteina*4 + @glucidos*4 + @lipidos*9
        end

    end
end

module Lista
    class Lista
        attr_reader :tail, :head

        Node = Struct.new(:prev, :value, :next)
        
        def initialize()
            @head = nil
            @tail = nil
        end
    end
end