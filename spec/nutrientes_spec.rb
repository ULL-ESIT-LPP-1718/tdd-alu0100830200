require 'lib/nutrientes'

describe Nutrientes do
    before :each do
        @ali = Nutrientes.new("huevo frito",14.1,0.0,19.5)
    end

    describe " Creacion de objeto con el nombre" do
        it "Debe existir el nombre del alimento" do
            expect(@ali.nombre).to eq("Huevo frito")
        end
        it "Debe existir la cantidad de proteínas del alimento en gramos" do
            expect(@ali.proteina).to eq(14)
        end
        it "Debe existir la cantidad de glucido del alimento en gramos" do
            expect(@ali.glucidos).to eq(0.0)
        end
        it "Debe existir la cantidad de grasas del alimento en gramos" do
            expect(@ali.lipidos).to eq(19.5)
        end

    end



end




