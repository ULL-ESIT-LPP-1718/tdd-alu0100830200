require 'lib/nutrientes'

describe Nutrientes do
    before :each do
        @ali = Nutrientes.new("Huevo frito",14.1,0.0,19.5)
    end

    describe " Creacion de objeto con el nombre" do
        it "Debe existir el nombre del alimento" do
            expect(@ali.nombre).to eq("Huevo frito")
        end
        it "Debe existir la cantidad de proteínas del alimento en gramos" do
            expect(@ali.proteina).to eq(14.1)
        end
        it "Debe existir la cantidad de glucido del alimento en gramos" do
            expect(@ali.glucidos).to eq(0.0)
        end
        it "Debe existir la cantidad de grasas del alimento en gramos" do
            expect(@ali.lipidos).to eq(19.5)
        end

    end

    describe "Prueba métodos del Alimento con los nutrientes" do
        it "Debe existir un método para obtener el alimento formateado" do
            expect(@ali.to_s).to eq("Nombre: #{@ali.nombre} --> [Proteinas , Glúcidos, Lípidos]:")
        end
        it "Debe existir un método para motrar el valor energético de alimento" do
            expect(@ali.valorEnergetico).to eq(231.9)
        end
    end



end




