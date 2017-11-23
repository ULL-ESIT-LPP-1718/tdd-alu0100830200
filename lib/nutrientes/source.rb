# encoding utf-8
# Author:: Kristian Martínez García (mailto:alu0100830200@ull.edu.es)
# Copyright:: Creative Commons
# License:: Distributes under the same term as Ruby
# Asignatura: Lenguajes y paradigmas de la programación

# Modulo Nutrientes que incluye clases y sus metodos. 
module Nutrientes
    # Clase Nutriente con atributos de nombre, proteina, glucidos y lipidos
    class Nutrientes
        # Incluyendo modulo Comparable
        include Comparable
        # Atributos de la Clase Nutrientes accesibles con cualquier metodo de la clase.
        attr_reader :nombre, :proteina, :glucidos, :lipidos, :vec_aibc
    
        # Método initialize para definir el objeto con los atributos
        def initialize(nombre,proteina,glucidos,lipidos)
            @nombre = nombre
            @proteina = proteina
            @glucidos = glucidos
            @lipidos = lipidos
            @vec_aibc = vec
        end

        # Método para mostrar el flujo de salida formateda
        def to_s
            "Nombre: #{@nombre} --> [Proteinas=#{@proteina}, Glúcidos=#{@glucidos}, Lípidos=#{@lipidos}]:"
        end

        # Método para obtener el valor energético de cada alimento
        def valorEnergetico
            valor = @proteina*4 + @glucidos*4 + @lipidos*9
        end

        # Sobrecarga de operadores <=> para el funcionamiento del Módulo Comparable
        def <=>(anOther)
            valorEnergetico <=> anOther.valorEnergetico
        end

    end

    # Clase lacteos heredada de Nutrientes
    class Lacteos < Nutrientes
        # Método initialize para definir un objeto Lacteos con los atributos
        def initialize(nombre,proteina,glucidos,lipidos)
            super(nombre,proteina,glucidos,lipidos)
        end
    end

    # Clase Carnes heredada de Nutrientes
    class Carnes < Nutrientes
        # Método initialize para definir un objeto Carnes con los atributos apropiados
        def initialize(nombre,proteina,glucidos,lipidos)
            super(nombre,proteina,glucidos,lipidos)
        end 
    end

    # Clase Mariscos heredada de Nutrientes
    class Mariscos < Nutrientes
        # Método initialize para definir un objeto Marisco con los atributos apropiados
        def initialize(nombre,proteina,glucidos,lipidos)
            super(nombre,proteina,glucidos,lipidos)
        end
    end

    # Clase AliGrasos heredada de Nutrientes
    class AliGrasos < Nutrientes
        def initialize(nombre,proteina,glucidos,lipidos)
            super(nombre,proteina,glucidos,lipidos)
        end
    end

     # Clase AliCarbo heredada de Nutrientes
    class AliCarbo < Nutrientes
        # Método initialize para definir un objeto Verdura con los atributos
        def initialize(nombre,proteina,glucidos,lipidos)
            super(nombre,proteina,glucidos,lipidos)
        end 
    end

    # Clase Verduras heredada de Nutrientes
    class Verduras < Nutrientes
        #Método initialize para definir un objeto Verdura con los atributos
        def initialize(nombre,proteina,glucidos,lipidos)
            super(nombre,proteina,glucidos,lipidos)
        end
    end

    # Clase Frutas heredada de Nutrientes
    class Frutas < Nutrientes
        # Método initialize para definir un objeto Fruta con los atributos
        def initialize(nombre,proteina,glucidos,lipidos)
            super(nombre,proteina,glucidos,lipidos)
        end
    end 
end

# Modulo Lista que incluye clases y sus metodos.
module Lista
    # Clase lista con una cabeza, cola y un nodo con valores que se enlazan unos con otros 
    class Lista
        # Atributos de la Clase Nutrientes accesibles con cualquier metodo de la clase.
        attr_reader :tail, :head
        # Incluimos el Módulo Comparable.
        include Enumerable       
        
        # Estructura de datos Node, con un valor y un enlace para su siguiente y otro para su anterior.
        Node = Struct.new(:prev, :value, :next)
                
        # Método initialize para definir un objeto Lista con los atributos
        def initialize
            @head = nil
            @tail = nil
        end

        # Método empty para saber si la lista esta vacia.
        def empty
            if(@head == nil)
                true
            else
                false
            end
        end

        # Método each para poder utilizar otros métodos que contiene el modulo Enumerable
        def each
            aux = @head
            while (aux != nil)
                yield aux.value
                aux = aux.next
            end
        end

        # Método push_node para introducir un valor en la lista
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

        # Método pop_front para sacar por delante un valor en la lista
        def pop_front
            aux = @head
            val = @head.value
            @head = @head.next
            @head.prev = nil
            aux.next = nil
            aux.prev = nil
            return val   
        end

        # Método pop_back para sacar por atrás un valor en la lista
        def pop_back
            aux = @tail
            val = @tail.value
            @tail = @tail.prev
            @tail.next = nil
            aux.next = nil
            aux.prev = nil
            return val
        end

        # Método para mostrar el flujo de salida formateda
        def to_s
            aux = @head
            cadena = ""
            while (aux != nil)
                cadena += "#{aux.value}"
                aux = aux.next
            end
            cadena
        end
    end
end