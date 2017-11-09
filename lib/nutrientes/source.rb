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

    class Lacteos < Nutrientes
        def initialize(nombre,proteina,glucidos,lipidos)
            super(nombre,proteina,glucidos,lipidos)
        end
    end

    class Carnes < Nutrientes
        def initialize(nombre,proteina,glucidos,lipidos)
            super(nombre,proteina,glucidos,lipidos)
        end 
    end

    class Mariscos < Nutrientes
        def initialize(nombre,proteina,glucidos,lipidos)
            super(nombre,proteina,glucidos,lipidos)
        end
    end
    
    class AliGrasos < Nutrientes
        def initialize(nombre,proteina,glucidos,lipidos)
            super(nombre,proteina,glucidos,lipidos)
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

        def pop_front()
            aux = @head
            @head = @head.next
            @head.prev = nil
            aux.next = nil
            aux.prev = nil
        end
        def pop_back
            aux = @tail
            @tail = @tail.prev
            @tail.next = nil
            aux.next = nil
            aux.prev = nil
        end
        def to_s
            aux = @head
            cadena = ""
            while (aux != nil)
                cadena += "#{aux.value} "
                aux = aux.next
            end
            cadena
        end
    end
end