
require 'lib/nutrientes'

describe Nutrientes do
    before :each do
        @ali0 = Nutrientes.new("Huevo frito",14.1,0.0,19.5)
        @ali1 = Nutrientes.new("Leche vaca",3.3,4.8,3.2)
    end

    describe " Creacion de objeto con el nombre" do
        it "Debe existir el nombre del alimento" do
            expect(@ali0.nombre).to eq("Huevo frito")
            expect(@ali1.nombre).to eq("Leche vaca")
        end
        it "Debe existir la cantidad de proteínas del alimento en gramos" do
            expect(@ali0.proteina).to eq(14.1)
            expect(@ali1.proteina).to eq(3.3)
        end
        it "Debe existir la cantidad de glucido del alimento en gramos" do
            expect(@ali0.glucidos).to eq(0.0)
            expect(@ali1.glucidos).to eq(4.8)
        end
        it "Debe existir la cantidad de grasas del alimento en gramos" do
            expect(@ali0.lipidos).to eq(19.5)
            expect(@ali1.lipidos).to eq(3.2)
        end

    end

    describe "Prueba métodos del Alimento con los nutrientes" do
        it "Debe existir un método para obtener el alimento formateado" do
            expect(@ali0.to_s).to eq("Nombre: #{@ali0.nombre} --> [Proteinas=#{@ali0.proteina}, Glúcidos=#{@ali0.glucidos}, Lípidos=#{@ali0.lipidos}]:")
            #puts @ali0
            
        end
        it "Debe existir un método para motrar el valor energético de alimento" do
            expect(@ali0.valorEnergetico).to eq(231.9)
            expect(@ali1.valorEnergetico).to eq(61.2)
            
        end
    end

end


