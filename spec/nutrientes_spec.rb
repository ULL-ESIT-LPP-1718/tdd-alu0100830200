require "spec_helper.rb"


describe Nutrientes::Nutrientes do
    before :each do
        @ali0 = Nutrientes::Nutrientes.new("Huevo frito",14.1,0.0,19.5)
        @ali1 = Nutrientes::Nutrientes.new("Leche vaca",3.3,4.8,3.2)
        @ali2 = Nutrientes::Nutrientes.new("Yogurt",3.8,4.9,3.8)
        @ali3 = Nutrientes::Nutrientes.new("Cerdo",21.5,0.0,6.3)
        @ali4 = Nutrientes::Nutrientes.new("Ternera",21.1,0.0,3.1)
        @ali5 = Nutrientes::Nutrientes.new("Pollo",20.6,0.0,5.6)
        @ali6 = Nutrientes::Nutrientes.new("Bacalao",17.7,0.0,0.4)
        @ali7 = Nutrientes::Nutrientes.new("Atún",21.5,0.0,15.5)
        @ali8 = Nutrientes::Nutrientes.new("Salmón",19.9,0.0,13.6)
        @ali9 = Nutrientes::Nutrientes.new("Aceite de oliva",0.0,0.2,99.6)
        @ali10 = Nutrientes::Nutrientes.new("Chocolate",5.3,47.0,30.0)
        @ali11 = Nutrientes::Nutrientes.new("Azúcar",0.0,99.8,0.0)
        @ali12 = Nutrientes::Nutrientes.new("Arroz",6.8,77.7,0.6)
        @ali13 = Nutrientes::Nutrientes.new("Lentejas",23.5,52.0,1.4)
        @ali14 = Nutrientes::Nutrientes.new("Papas",2.0,15.4,0.1)
        @ali15 = Nutrientes::Nutrientes.new("Tomate",1.0,3.5,0.2)
        @ali16 = Nutrientes::Nutrientes.new("Cebolla",1.3,5.8,0.3)
        @ali17 = Nutrientes::Nutrientes.new("Manzana",0.3,12.4,0.4)
        @ali18 = Nutrientes::Nutrientes.new("Plátanos",1.2,21.4,0.2)
        @ali19 = Nutrientes::Nutrientes.new("Calabaza",1.1,4.8,0.1)
        
    end

    describe " 1º Creacion de objeto con el nombre" do
        it "Debe existir el nombre del alimento" do
            expect(@ali0.nombre).to eq("Huevo frito")
            expect(@ali1.nombre).to eq("Leche vaca")
            expect(@ali2.nombre).to eq("Yogurt")
            expect(@ali3.nombre).to eq("Cerdo")
            expect(@ali4.nombre).to eq("Ternera")
            expect(@ali5.nombre).to eq("Pollo")
            expect(@ali6.nombre).to eq("Bacalao")
            expect(@ali7.nombre).to eq("Atún")
            expect(@ali8.nombre).to eq("Salmón")
            expect(@ali9.nombre).to eq("Aceite de oliva")
            expect(@ali10.nombre).to eq("Chocolate")
            expect(@ali11.nombre).to eq("Azúcar")
            expect(@ali12.nombre).to eq("Arroz")
            expect(@ali13.nombre).to eq("Lentejas")
            expect(@ali14.nombre).to eq("Papas")
            expect(@ali15.nombre).to eq("Tomate")
            expect(@ali16.nombre).to eq("Cebolla")
            expect(@ali17.nombre).to eq("Manzana")
            expect(@ali18.nombre).to eq("Plátanos")

        end
        it "Debe existir la cantidad de proteínas del alimento en gramos" do
            expect(@ali0.proteina).to eq(14.1)
            expect(@ali1.proteina).to eq(3.3)
            expect(@ali2.proteina).to eq(3.8)
            expect(@ali3.proteina).to eq(21.5)
            expect(@ali4.proteina).to eq(21.1)
            expect(@ali5.proteina).to eq(20.6)
            expect(@ali6.proteina).to eq(17.7)
            expect(@ali7.proteina).to eq(21.5)
            expect(@ali8.proteina).to eq(19.9)
            expect(@ali9.proteina).to eq(0.0)
            expect(@ali10.proteina).to eq(5.3)
            expect(@ali11.proteina).to eq(0.0)
            expect(@ali12.proteina).to eq(6.8)
            expect(@ali13.proteina).to eq(23.5)
            expect(@ali14.proteina).to eq(2.0)
            expect(@ali15.proteina).to eq(1.0)
            expect(@ali16.proteina).to eq(1.3)
            expect(@ali17.proteina).to eq(0.3)
            expect(@ali18.proteina).to eq(1.2)
            
        end
        it "Debe existir la cantidad de glucido del alimento en gramos" do
            expect(@ali0.glucidos).to eq(0.0)
            expect(@ali1.glucidos).to eq(4.8)
            expect(@ali2.glucidos).to eq(4.9)
            expect(@ali3.glucidos).to eq(0.0)
            expect(@ali4.glucidos).to eq(0.0)
            expect(@ali5.glucidos).to eq(0.0)
            expect(@ali6.glucidos).to eq(0.0)
            expect(@ali7.glucidos).to eq(0.0)
            expect(@ali8.glucidos).to eq(0.0)
            expect(@ali9.glucidos).to eq(0.2)
            expect(@ali10.glucidos).to eq(47.0)
            expect(@ali11.glucidos).to eq(99.8)
            expect(@ali12.glucidos).to eq(77.7)
            expect(@ali13.glucidos).to eq(52.0)
            expect(@ali14.glucidos).to eq(15.4)
            expect(@ali15.glucidos).to eq(3.5)
            expect(@ali16.glucidos).to eq(5.8)
            expect(@ali17.glucidos).to eq(12.4)
            expect(@ali18.glucidos).to eq(21.4)


        end
        it "Debe existir la cantidad de grasas del alimento en gramos" do
            expect(@ali0.lipidos).to eq(19.5)
            expect(@ali1.lipidos).to eq(3.2)
            expect(@ali2.lipidos).to eq(3.8)
            expect(@ali3.lipidos).to eq(6.3)
            expect(@ali4.lipidos).to eq(3.1)
            expect(@ali5.lipidos).to eq(5.6)
            expect(@ali6.lipidos).to eq(0.4)
            expect(@ali7.lipidos).to eq(15.5)
            expect(@ali8.lipidos).to eq(13.6)
            expect(@ali9.lipidos).to eq(99.6)
            expect(@ali10.lipidos).to eq(30.0)
            expect(@ali11.lipidos).to eq(0.0)
            expect(@ali12.lipidos).to eq(0.6)
            expect(@ali13.lipidos).to eq(1.4)
            expect(@ali14.lipidos).to eq(0.1)
            expect(@ali15.lipidos).to eq(0.2)
            expect(@ali16.lipidos).to eq(0.3)
            expect(@ali17.lipidos).to eq(0.4)
            expect(@ali18.lipidos).to eq(0.2)
            
        end

    end

    describe " 2º Prueba métodos del Alimento con los nutrientes" do
        it "Debe existir un método para obtener el alimento formateado" do
            expect(@ali0.to_s).to eq("Nombre: #{@ali0.nombre} --> [Proteinas=#{@ali0.proteina}, Glúcidos=#{@ali0.glucidos}, Lípidos=#{@ali0.lipidos}]:")
            expect(@ali1.to_s).to eq("Nombre: #{@ali1.nombre} --> [Proteinas=#{@ali1.proteina}, Glúcidos=#{@ali1.glucidos}, Lípidos=#{@ali1.lipidos}]:")
            expect(@ali2.to_s).to eq("Nombre: #{@ali2.nombre} --> [Proteinas=#{@ali2.proteina}, Glúcidos=#{@ali2.glucidos}, Lípidos=#{@ali2.lipidos}]:")
            expect(@ali3.to_s).to eq("Nombre: #{@ali3.nombre} --> [Proteinas=#{@ali3.proteina}, Glúcidos=#{@ali3.glucidos}, Lípidos=#{@ali3.lipidos}]:")
            expect(@ali4.to_s).to eq("Nombre: #{@ali4.nombre} --> [Proteinas=#{@ali4.proteina}, Glúcidos=#{@ali4.glucidos}, Lípidos=#{@ali4.lipidos}]:")
            expect(@ali5.to_s).to eq("Nombre: #{@ali5.nombre} --> [Proteinas=#{@ali5.proteina}, Glúcidos=#{@ali5.glucidos}, Lípidos=#{@ali5.lipidos}]:")
            expect(@ali6.to_s).to eq("Nombre: #{@ali6.nombre} --> [Proteinas=#{@ali6.proteina}, Glúcidos=#{@ali6.glucidos}, Lípidos=#{@ali6.lipidos}]:")
            expect(@ali7.to_s).to eq("Nombre: #{@ali7.nombre} --> [Proteinas=#{@ali7.proteina}, Glúcidos=#{@ali7.glucidos}, Lípidos=#{@ali7.lipidos}]:")
            expect(@ali8.to_s).to eq("Nombre: #{@ali8.nombre} --> [Proteinas=#{@ali8.proteina}, Glúcidos=#{@ali8.glucidos}, Lípidos=#{@ali8.lipidos}]:")
            expect(@ali9.to_s).to eq("Nombre: #{@ali9.nombre} --> [Proteinas=#{@ali9.proteina}, Glúcidos=#{@ali9.glucidos}, Lípidos=#{@ali9.lipidos}]:")
            expect(@ali10.to_s).to eq("Nombre: #{@ali10.nombre} --> [Proteinas=#{@ali10.proteina}, Glúcidos=#{@ali10.glucidos}, Lípidos=#{@ali10.lipidos}]:")
            expect(@ali11.to_s).to eq("Nombre: #{@ali11.nombre} --> [Proteinas=#{@ali11.proteina}, Glúcidos=#{@ali11.glucidos}, Lípidos=#{@ali11.lipidos}]:")
            expect(@ali12.to_s).to eq("Nombre: #{@ali12.nombre} --> [Proteinas=#{@ali12.proteina}, Glúcidos=#{@ali12.glucidos}, Lípidos=#{@ali12.lipidos}]:")
            expect(@ali13.to_s).to eq("Nombre: #{@ali13.nombre} --> [Proteinas=#{@ali13.proteina}, Glúcidos=#{@ali13.glucidos}, Lípidos=#{@ali13.lipidos}]:")
            expect(@ali14.to_s).to eq("Nombre: #{@ali14.nombre} --> [Proteinas=#{@ali14.proteina}, Glúcidos=#{@ali14.glucidos}, Lípidos=#{@ali14.lipidos}]:")
            expect(@ali15.to_s).to eq("Nombre: #{@ali15.nombre} --> [Proteinas=#{@ali15.proteina}, Glúcidos=#{@ali15.glucidos}, Lípidos=#{@ali15.lipidos}]:")
            expect(@ali16.to_s).to eq("Nombre: #{@ali16.nombre} --> [Proteinas=#{@ali16.proteina}, Glúcidos=#{@ali16.glucidos}, Lípidos=#{@ali16.lipidos}]:")
            expect(@ali17.to_s).to eq("Nombre: #{@ali17.nombre} --> [Proteinas=#{@ali17.proteina}, Glúcidos=#{@ali17.glucidos}, Lípidos=#{@ali17.lipidos}]:")
            expect(@ali18.to_s).to eq("Nombre: #{@ali18.nombre} --> [Proteinas=#{@ali18.proteina}, Glúcidos=#{@ali18.glucidos}, Lípidos=#{@ali18.lipidos}]:")
            #puts @ali0
            
        end
        it "Debe existir un método para motrar el valor energético de alimento" do
            expect(@ali0.valorEnergetico).to eq(231.9)
            expect(@ali1.valorEnergetico).to eq(61.2)
            expect(@ali2.valorEnergetico).to eq(69)
            expect(@ali3.valorEnergetico).to eq(142.7)
            expect(@ali4.valorEnergetico).to eq(112.30000000000001)
            expect(@ali5.valorEnergetico).to eq(132.8)
            expect(@ali6.valorEnergetico).to eq(74.39999999999999)
            expect(@ali7.valorEnergetico).to eq(225.5)
            expect(@ali8.valorEnergetico).to eq(202)
            expect(@ali9.valorEnergetico).to eq(897.1999999999999)
            expect(@ali10.valorEnergetico).to eq(479.2)
            expect(@ali11.valorEnergetico).to eq(399.2)
            expect(@ali12.valorEnergetico).to eq(343.4)
            expect(@ali13.valorEnergetico).to eq(314.6)
            expect(@ali14.valorEnergetico).to eq(70.5)
            expect(@ali15.valorEnergetico).to eq(19.8)
            expect(@ali16.valorEnergetico).to eq(31.099999999999998)
            expect(@ali17.valorEnergetico).to eq(54.400000000000006)
            expect(@ali18.valorEnergetico).to eq(92.19999999999999)

        end
    end

end

describe Lista::Lista do
    before :all do
       @lista = Lista::Lista.new() 
   end

   it "Creacion del objeto lista vacía con su cabeza y su cola" do
       expect(@lista).not_to be(nil)
   end

   it "Se puede insertar un elemento en la lista" do
    @lista.push_node(1)
   end

   it "Se puede insertar varios elementos en la lista" do
    @lista.push_node(2)
    @lista.push_node(3)
    @lista.push_node(4)
    @lista.push_node(5)
   end

   it "Se extrae el primer elemento de la lista" do
    @lista.pop_front()
   end
   it "Se extrae el ultimo elemento de la lista" do
    @lista.pop_back()
   end
end

describe Nutrientes::Lacteos do
    before :all do
        @huevo = Nutrientes::Lacteos.new("Huevo",14.1,0.0,19.5)  
        @leche = Nutrientes::Lacteos.new("Leche vaca",3.3,4.8,3.2)
        @yogurt = Nutrientes::Lacteos.new("Yogurt",3.8,4.9,3.8)
    end
    it "Comprobar tipo" do
        expect(@huevo).to be_instance_of(Nutrientes::Lacteos)
        expect(@leche).to be_instance_of(Nutrientes::Lacteos)
        expect(@yogurt).to be_instance_of(Nutrientes::Lacteos)
        
    end
    it "Comprobar clase" do
        expect(@huevo).to be_a(Nutrientes::Lacteos)
        expect(@leche).to be_a(Nutrientes::Lacteos)
        expect(@yogurt).to be_a(Nutrientes::Lacteos)
        
    end
    it "Comprobar pertenencia" do
        expect(@huevo).to be_kind_of(Nutrientes::Nutrientes)
        expect(@leche).to be_kind_of(Nutrientes::Nutrientes)
        expect(@yogurt).to be_kind_of(Nutrientes::Nutrientes)
        
    end
end