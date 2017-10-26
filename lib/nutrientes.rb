
class Nutrientes
    attr_reader :nombre, :proteina, :glucidos, :lipidos
 
    def initialize(nombre,proteina,glucidos,lipidos)
        @nombre = nombre
        @proteina = proteina
        @glucidos = glucidos
        @lipidos = lipidos
    end

    
end