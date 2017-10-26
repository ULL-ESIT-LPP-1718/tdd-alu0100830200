
class Nutrientes
    attr_reader :nombre, :proteina, :glucidos, :lipidos
 
    def initialize(nombre,proteina,glucidos,lipidos)
        @nombre = nombre
        @proteina = proteina
        @glucidos = glucidos
        @lipidos = lipidos
    end

    def to_s
        "Nombre: #{@nombre} --> [Proteinas , Glúcidos, Lípidos]:"
    end
    
end