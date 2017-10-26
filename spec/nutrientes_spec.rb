require 'lib/nutrientes'

describe Nutrientes do
    before :each do
        @ali = Nutrientes.new("huevo frito")
    end

    describe " Creacion de objeto con el nombre" do
        it "Debe existir el nombre del alimento" do
            expect(@ali).to_exist
        end
    end



end




