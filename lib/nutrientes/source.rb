module Nutrientes
    class Nutrientes
        include Comparable
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

        def <=>(anOther)
            valorEnergetico <=> anOther.valorEnergetico
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

    class AliCarbo < Nutrientes
        def initialize(nombre,proteina,glucidos,lipidos)
            super(nombre,proteina,glucidos,lipidos)
        end 
    end

    class Verduras < Nutrientes
        def initialize(nombre,proteina,glucidos,lipidos)
            super(nombre,proteina,glucidos,lipidos)
        end
    end
    class Frutas < Nutrientes
        def initialize(nombre,proteina,glucidos,lipidos)
            super(nombre,proteina,glucidos,lipidos)
        end
    end 
end

module Lista
    class Lista
        attr_reader :tail, :head

        Node = Struct.new(:prev, :value, :next)
        
        def initialize
            @head = nil
            @tail = nil
        end

        def empty
            if(@head == nil)
                true
            else
                false
            end
        end

        def push_node(value)
            if(empty)
                aux = Node.new(nil,value,nil)                
                @tail = aux
                @head = aux
                return @tail.value
            else
               aux = Node.new(tail,value,nil)                                
               @tail.next = aux
               aux.prev = @tail
               @tail = aux
               return @tail.value
            end
        end

        def pop_front
            aux = @head
            val = @head.value
            @head = @head.next
            @head.prev = nil
            aux.next = nil
            aux.prev = nil
            return val   
        end

        def pop_back
            aux = @tail
            val = @tail.value
            @tail = @tail.prev
            @tail.next = nil
            aux.next = nil
            aux.prev = nil
            return val
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