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
        # Incluyendo modulo Enumerable
        include Enumerable
        # Atributos de la Clase Nutrientes accesibles con cualquier metodo de la clase.
        attr_reader :nombre, :proteina, :glucidos, :lipidos, :vec_aibc, :vec_ali
    
        # Método initialize para definir el objeto con los atributos
        def initialize(nombre,proteina,glucidos,lipidos,vec)
            @nombre = nombre
            @proteina = proteina
            @glucidos = glucidos
            @lipidos = lipidos
            @vec_aibc = vec
        end

        # Método para mostrar el flujo de salida formateda
        def to_s
            "[#{@nombre},Proteinas=#{@proteina}, Glúcidos=#{@glucidos}, Lípidos=#{@lipidos}]:"
        end

        #Método para calcular el área incremental bajo la curva
        def aibc
            vec_aux = []
            @vec_aibc.each do |value|
                s=[]
                value.each_with_index do |val,j|
                    if(j!=0)
                        s << (((val-value[0])+ (value[j-1]-value[0]))*5)/2
                    end
                end
                vec_aux << s.reduce(:+)
            end
            vec_aux
        end

        #Método para calcular el índice glucémico del alimento
        def indGlAli(glucosa)
            indGlAli = []
            @vec_aibc.each_with_index do |value,j| 
                indGlAli << indGlInd(j,glucosa)
            end
            (indGlAli.reduce(:+))/@vec_aibc.size
        end 

        #Método para calcular el índice glucémico de la persona
        def indGlInd(individuo,glucosa)
            ind_gluc = self.aibc[individuo]*100/glucosa.aibc[individuo]
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
        def initialize(nombre,proteina,glucidos,lipidos,vec)
            super(nombre,proteina,glucidos,lipidos,vec)
        end
    end

    # Clase Carnes heredada de Nutrientes
    class Carnes < Nutrientes
        # Método initialize para definir un objeto Carnes con los atributos apropiados
        def initialize(nombre,proteina,glucidos,lipidos,vec)
            super(nombre,proteina,glucidos,lipidos,vec)
        end 
    end

    # Clase Mariscos heredada de Nutrientes
    class Mariscos < Nutrientes
        # Método initialize para definir un objeto Marisco con los atributos apropiados
        def initialize(nombre,proteina,glucidos,lipidos,vec)
            super(nombre,proteina,glucidos,lipidos,vec)
        end
    end

    # Clase AliGrasos heredada de Nutrientes
    class AliGrasos < Nutrientes
        def initialize(nombre,proteina,glucidos,lipidos,vec)
            super(nombre,proteina,glucidos,lipidos,vec)
        end
    end

     # Clase AliCarbo heredada de Nutrientes
    class AliCarbo < Nutrientes
        # Método initialize para definir un objeto Verdura con los atributos
        def initialize(nombre,proteina,glucidos,lipidos,vec)
            super(nombre,proteina,glucidos,lipidos,vec)
        end 
    end

    # Clase Verduras heredada de Nutrientes
    class Verduras < Nutrientes
        #Método initialize para definir un objeto Verdura con los atributos
        def initialize(nombre,proteina,glucidos,lipidos,vec)
            super(nombre,proteina,glucidos,lipidos,vec)
        end
    end

    # Clase Frutas heredada de Nutrientes
    class Frutas < Nutrientes
        # Método initialize para definir un objeto Fruta con los atributos
        def initialize(nombre,proteina,glucidos,lipidos,vec)
            super(nombre,proteina,glucidos,lipidos,vec)
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

        #Metodo para ordenar con EACH
        def each1
            aux = @head
            vec = []
            
            while (aux != nil)
                vec << aux.value
                aux = aux.next
            end

                vec.each.with_index(1) do |val,i|
                    if(i < vec.size-1)
                        vec.each.with_index(0) do |n,j|
                            if(j < vec.size-i)
                                if(vec[j] > vec[j+1])
                                    k=vec[j+1]
                                    vec[j+1]=vec[j]
                                    vec[j]=k
                                end
                            end
                        end
                    end
                end
            vec
        end

        #Metodo for para ordenar
        def for
            aux = @head
            vec = []
            
            while (aux != nil)
                vec << aux.value
                aux = aux.next
            end

            for i in 1..vec.size-1
                for j in 0..vec.size-i-1
                    if(vec[j] > vec[j+1])
                        k=vec[j+1]
                         vec[j+1]=vec[j]
                         vec[j]=k
                    end
                end
            end
            vec 
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

# Modulo Plato que incluye clases y sus metodos.
module Plato
    # Clase Plato que contine la información del alimento al igual que sus ingredientes 
    class Plato
        # Atributos de la Clase Plato accesibles desde el exterior de la clase.
        attr_accessor :name, :ingredientes

        # Método initialize para definir un objeto Plato con los atributos (Bloque)
        def initialize(name, &block)
            @name = name
            @vec_vegetales = []
            @vec_fruta = []
            @vec_cereal = []
            @vec_proteina = []
            @vec_aceite = []
            @vec_ingredientes = []

            @lista_alimentos = { 
    
                "huevo" => Nutrientes::Nutrientes.new("Huevofri",14.1,0.0,19.5,0),
                "leche" => Nutrientes::Nutrientes.new("Leche vaca",3.3,4.8,3.2,0),
                "yogurt" => Nutrientes::Nutrientes.new("Yogurt",3.8,4.9,3.8,0),
                "cerdo" => Nutrientes::Nutrientes.new("Cerdo",21.5,0.0,6.3,0),
                "ternera" => Nutrientes::Nutrientes.new("Ternera",21.1,0.0,3.1,0),
                "pollo" => Nutrientes::Nutrientes.new("Pollo",20.6,0.0,5.6,0),
                "bacalao" => Nutrientes::Nutrientes.new("Bacalao",17.7,0.0,0.4,0),
                "atun" => Nutrientes::Nutrientes.new("Atún",21.5,0.0,15.5,0),
                "salmon" => Nutrientes::Nutrientes.new("Salmón",19.9,0.0,13.6,0),
                "aceite" => Nutrientes::Nutrientes.new("Aceite Oliva",0.0,0.2,99.6,0),
                "chocolate" => Nutrientes::Nutrientes.new("Chocolate",5.3,47.0,30.0,0),
                "azucar" => Nutrientes::Nutrientes.new("Azúcar",0.0,99.8,0.0,0),
                "arroz" => Nutrientes::Nutrientes.new("Arroz",6.8,77.7,0.6,0),
                "lentejas" => Nutrientes::Nutrientes.new("Lentejas",23.5,52.0,1.4,0),
                "papas" => Nutrientes::Nutrientes.new("Papas",2.0,15.4,0.1,0),
                "tomate" => Nutrientes::Nutrientes.new("Tomate",1.0,3.5,0.2,0),
                "cebolla" => Nutrientes::Nutrientes.new("Cebolla",1.3,5.8,0.3,0),
                "manzana" => Nutrientes::Nutrientes.new("Manzana",0.3,12.4,0.4,0),
                "platano" => Nutrientes::Nutrientes.new("Plátanos",1.2,21.4,0.2,0),
                "calabaza" => Nutrientes::Nutrientes.new("Calabaza",1.1,4.8,0.1,0)
            }

            if block_given?  
                if block.arity == 1
                  yield self
                else
                 instance_eval(&block) 
                end
              end
            end

            def vegetal(name, options = {})
                ingredient = @lista_alimentos[name.downcase]
                amount = options[:porcion]
                amount = amount.split(/\W+/)
                amount[0] = amount[0].to_i                
                aux = [ingredient,amount]
                @vec_vegetales << aux
            end

            def fruta(name, options = {})
                ingredient = @lista_alimentos[name.downcase]
                amount = options[:porcion]
                amount = amount.split(/\W+/)
                amount[0] = amount[0].to_i                
                aux = [ingredient,amount]
                @vec_fruta << aux
            end

            def cereal(name, options = {})
                ingredient = @lista_alimentos[name.downcase]
                amount = options[:porcion]
                amount = amount.split(/\W+/)
                amount[0] = amount[0].to_i                
                aux = [ingredient,amount]
                @vec_cereal << aux
            end

            def proteina(name, options = {})
                ingredient = @lista_alimentos[name.downcase]
                amount = options[:porcion]
                amount = amount.split(/\W+/)
                amount[0] = amount[0].to_i                
                aux = [ingredient,amount]
                @vec_proteina << aux
            end

            def aceite(name, options = {})
                ingredient = @lista_alimentos[name.downcase]
                amount = options[:porcion]
                amount = amount.split(/\W+/)
                amount[0] = amount[0].to_i
                aux = [ingredient,amount]  
                @vec_aceite << aux          
            end
            
            def to_s
                medidas = { "gramos" => 0.02, "tazas" => 1, "piezas" => 2, "cucharon" => 1, "cucharada" => 1}
                sum = 0
                output = @name
                output << "\n#{'=' * @name.size}\n\n"
                output << "Composición nutricional: \n"
                output << "             Glúcidos     Proteínas     Lípidos     Valor Energético\n"
                @vec_vegetales.each do |i| 
                   output << i[0].nombre << "       " << i[0].glucidos.to_s << "          " << i[0].proteina.to_s << "           " << i[0].lipidos.to_s << "         " << (i[0].valorEnergetico*medidas[i[1][1]]*i[1][0]).to_s << "\n"
                   sum += i[0].valorEnergetico*medidas[i[1][1]]*i[1][0]
                end
                @vec_fruta.each do |i| 
                    output << i[0].nombre << "     " << i[0].glucidos.to_s << "         " << i[0].proteina.to_s << "           " << i[0].lipidos.to_s << "         " << (i[0].valorEnergetico*medidas[i[1][1]]*i[1][0]).to_s << "\n"
                    sum += i[0].valorEnergetico**medidas[i[1][1]]*i[1][0]
                end
                @vec_cereal.each do |i| 
                   output << i[0].nombre << "        " << i[0].glucidos.to_s << "         " << i[0].proteina.to_s << "           " << i[0].lipidos.to_s << "         " << (i[0].valorEnergetico*medidas[i[1][1]]*i[1][0]).to_s << "\n"
                   sum += i[0].valorEnergetico*medidas[i[1][1]]*i[1][0]
                end
                @vec_proteina.each do |i| 
                    output << i[0].nombre << "     " << i[0].glucidos.to_s << "        " << i[0].proteina.to_s << "           " << i[0].lipidos.to_s << "         " << (i[0].valorEnergetico*medidas[i[1][1]]*i[1][0]).to_s << "\n"     
                    sum += i[0].valorEnergetico*medidas[i[1][1]]*i[1][0]    
                end
                @vec_aceite.each do |i| 
                    output << i[0].nombre << "   " << i[0].glucidos.to_s << "       " << i[0].proteina.to_s << "            " << i[0].lipidos.to_s << "        " << (i[0].valorEnergetico*medidas[i[1][1]]*i[1][0]).to_s << "\n"
                    sum += i[0].valorEnergetico*medidas[i[1][1]]*i[1][0]
                end
                output << "Valor energético total                              " << sum.to_s
    
                output
            
            end
    
        end
    
    end