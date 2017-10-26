require 'lib/nutrientes'

describe Nutrientes do
    before :each do
        @ali = Nutrientes.new("huevo frito")
    end

    describe " Creacion de objeto con el nombre" do
        it "Debe existir el nombre del alimento" do
            expect(@ali.nombre).to eq("Huevo frito")
        end
    end



end




