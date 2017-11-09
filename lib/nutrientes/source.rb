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

        def empty()
            if(@head == nil)
                true
            else
                false
            end
        end

        def push_node(value)
            if(empty())
                aux = Node.new(nil,value,nil)                
                @tail = aux
                @head = aux
            else
               aux = Node.new(tail,value,nil)                                
               @tail.next = aux
               aux.prev = @tail
               @tail = aux
            end
        end
    end
end