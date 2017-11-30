require "spec_helper.rb"

describe Nutrientes::Nutrientes do
    before :each do

            @ali0 = Nutrientes::Nutrientes.new("Huevo frito",14.1,0.0,19.5,0)
            @ali1 = Nutrientes::Nutrientes.new("Leche vaca",3.3,4.8,3.2,0)
            @ali2 = Nutrientes::Nutrientes.new("Yogurt",3.8,4.9,3.8,0)
            @ali3 = Nutrientes::Nutrientes.new("Cerdo",21.5,0.0,6.3,0)
            @ali4 = Nutrientes::Nutrientes.new("Ternera",21.1,0.0,3.1,0)
            @ali5 = Nutrientes::Nutrientes.new("Pollo",20.6,0.0,5.6,0)
            @ali6 = Nutrientes::Nutrientes.new("Bacalao",17.7,0.0,0.4,0)
            @ali7 = Nutrientes::Nutrientes.new("Atún",21.5,0.0,15.5,0)
            @ali8 = Nutrientes::Nutrientes.new("Salmón",19.9,0.0,13.6,0)
            @ali9 = Nutrientes::Nutrientes.new("Aceite de oliva",0.0,0.2,99.6,0)
            @ali10 = Nutrientes::Nutrientes.new("Chocolate",5.3,47.0,30.0,0)
            @ali11 = Nutrientes::Nutrientes.new("Azúcar",0.0,99.8,0.0,0)
            @ali12 = Nutrientes::Nutrientes.new("Arroz",6.8,77.7,0.6,0)
            @ali13 = Nutrientes::Nutrientes.new("Lentejas",23.5,52.0,1.4,0)
            @ali14 = Nutrientes::Nutrientes.new("Papas",2.0,15.4,0.1,0)
            @ali15 = Nutrientes::Nutrientes.new("Tomate",1.0,3.5,0.2,0)
            @ali16 = Nutrientes::Nutrientes.new("Cebolla",1.3,5.8,0.3,0)
            @ali17 = Nutrientes::Nutrientes.new("Manzana",0.3,12.4,0.4,0)
            @ali18 = Nutrientes::Nutrientes.new("Plátanos",1.2,21.4,0.2,0)
            @ali19 = Nutrientes::Nutrientes.new("Calabaza",1.1,4.8,0.1,0)



            @chocolate = Nutrientes::Nutrientes.new("Chocolate",0,0,0,[[6.5,6.5,6.7,6.5,6.5,6.8,6.7,6.2,6.5,7.2,6.9,7.0,6.3,6.2,6.1,5.9,5.8,6.1,6.7,6.7,6.6,6.7,6.9,7.2,7.1],
            [4.6,4.6,4.7,4.7,4.8,4.7,4.8,4.8,4.6,4.4,4.7,4.7,4.8,4.7,5.2,5.9,5.9,5.7,5.4,5.3,5.1,4.8,4.8,4.9,5.9]])
            @yogurt = Nutrientes::Nutrientes.new("Yogurt",0,0,0,[[6.1,6.6,6.3,6.3,6.1,6.9,6.8,6.5,6.4,6.9,6.8,6.5,6.3,6.2,6.7,6.2,5.9,5.8,5.8,5.8,5.8,5.8,5.9,6.2,6.4],
            [4.9,4.9,5.2,5.8,6.5,7.0,7.2,7.3,7.3,6.6,6.2,6.1,6.0,6.1,5.9,5.9,5.9,5.9,5.8,5.8,5.5,5.5,5.6,5.9,5.9]])
            @glucosa = Nutrientes::Nutrientes.new("Glucosa",0,0,0,[[4.9,5.3,5.9,6.7,7.2,7.6,8.0,8.2,8.2,8.4,8.3,8.3,8.0,7.5,7.1,6.8,6.8,6.9,6.8,6.3,6.2,6.3,6.2,6.3,6.1],
            [6.3,5.4,5.6,5.7,6.5,7.4,7.9,7.4,7.7,7.9,7.9,7.8,7.8,7.8,8.0,8.5,9.4,10.8,10.5,9.1,8.9,8.3,7.7,7.6,7.5]])
            @compota = Nutrientes::Nutrientes.new("Compota",0,0,0,[[6.7,6.5,6.8,6.9,7.0,7.1,6.9,6.9,6.9,6.7,6.9,7.3,7.0,7.0,7.2,7.1,6.8,7.2,7.3,7.0,6.8,6.7,6.8,6.7,6.9],
        [4.6,4.8,5.3,5.6,6.1,6.5,6.6,7.0,7.0,6.8,6.4,6.3,6.1,6.1,6.2,6.0,6.1,6.1,6.2,6.3,6.4,6.1,6.1,5.7,5.9]])

        
        
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
        
            expect(@ali0.to_s).to eq("[#{@ali0.nombre},Proteinas=#{@ali0.proteina}, Glúcidos=#{@ali0.glucidos}, Lípidos=#{@ali0.lipidos}]:")
            expect(@ali1.to_s).to eq("[#{@ali1.nombre},Proteinas=#{@ali1.proteina}, Glúcidos=#{@ali1.glucidos}, Lípidos=#{@ali1.lipidos}]:")
            expect(@ali2.to_s).to eq("[#{@ali2.nombre},Proteinas=#{@ali2.proteina}, Glúcidos=#{@ali2.glucidos}, Lípidos=#{@ali2.lipidos}]:")
            expect(@ali3.to_s).to eq("[#{@ali3.nombre},Proteinas=#{@ali3.proteina}, Glúcidos=#{@ali3.glucidos}, Lípidos=#{@ali3.lipidos}]:")
            expect(@ali4.to_s).to eq("[#{@ali4.nombre},Proteinas=#{@ali4.proteina}, Glúcidos=#{@ali4.glucidos}, Lípidos=#{@ali4.lipidos}]:")
            expect(@ali5.to_s).to eq("[#{@ali5.nombre},Proteinas=#{@ali5.proteina}, Glúcidos=#{@ali5.glucidos}, Lípidos=#{@ali5.lipidos}]:")
            expect(@ali6.to_s).to eq("[#{@ali6.nombre},Proteinas=#{@ali6.proteina}, Glúcidos=#{@ali6.glucidos}, Lípidos=#{@ali6.lipidos}]:")
            expect(@ali7.to_s).to eq("[#{@ali7.nombre},Proteinas=#{@ali7.proteina}, Glúcidos=#{@ali7.glucidos}, Lípidos=#{@ali7.lipidos}]:")
            expect(@ali8.to_s).to eq("[#{@ali8.nombre},Proteinas=#{@ali8.proteina}, Glúcidos=#{@ali8.glucidos}, Lípidos=#{@ali8.lipidos}]:")
            expect(@ali9.to_s).to eq("[#{@ali9.nombre},Proteinas=#{@ali9.proteina}, Glúcidos=#{@ali9.glucidos}, Lípidos=#{@ali9.lipidos}]:")
            expect(@ali10.to_s).to eq("[#{@ali10.nombre},Proteinas=#{@ali10.proteina}, Glúcidos=#{@ali10.glucidos}, Lípidos=#{@ali10.lipidos}]:")
            expect(@ali11.to_s).to eq("[#{@ali11.nombre},Proteinas=#{@ali11.proteina}, Glúcidos=#{@ali11.glucidos}, Lípidos=#{@ali11.lipidos}]:")
            expect(@ali12.to_s).to eq("[#{@ali12.nombre},Proteinas=#{@ali12.proteina}, Glúcidos=#{@ali12.glucidos}, Lípidos=#{@ali12.lipidos}]:")
            expect(@ali13.to_s).to eq("[#{@ali13.nombre},Proteinas=#{@ali13.proteina}, Glúcidos=#{@ali13.glucidos}, Lípidos=#{@ali13.lipidos}]:")
            expect(@ali14.to_s).to eq("[#{@ali14.nombre},Proteinas=#{@ali14.proteina}, Glúcidos=#{@ali14.glucidos}, Lípidos=#{@ali14.lipidos}]:")
            expect(@ali15.to_s).to eq("[#{@ali15.nombre},Proteinas=#{@ali15.proteina}, Glúcidos=#{@ali15.glucidos}, Lípidos=#{@ali15.lipidos}]:")
            expect(@ali16.to_s).to eq("[#{@ali16.nombre},Proteinas=#{@ali16.proteina}, Glúcidos=#{@ali16.glucidos}, Lípidos=#{@ali16.lipidos}]:")
            expect(@ali17.to_s).to eq("[#{@ali17.nombre},Proteinas=#{@ali17.proteina}, Glúcidos=#{@ali17.glucidos}, Lípidos=#{@ali17.lipidos}]:")
            expect(@ali18.to_s).to eq("[#{@ali18.nombre},Proteinas=#{@ali18.proteina}, Glúcidos=#{@ali18.glucidos}, Lípidos=#{@ali18.lipidos}]:")

            
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

    describe "3º Pruebas sobre el indice glucémico de los alimentos: " do
        it "Valor Indice Glucémico de los alimentos" do
            expect(@chocolate.indGlAli(@glucosa)).to eq(13.328114527479904)
            expect(@chocolate.indGlInd(0,@glucosa)).to eq(2.9296875000000027)
            expect(@chocolate.indGlInd(1,@glucosa)).to eq(23.726541554959805)
            expect(@yogurt.indGlAli(@glucosa)).to eq(41.37941416722519)
            expect(@yogurt.indGlInd(0,@glucosa)).to eq(8.49609375000002)
            expect(@yogurt.indGlInd(1,@glucosa)).to eq(74.26273458445037)
            expect(@compota.indGlAli(@glucosa)).to eq(54.49978007707774)
            expect(@compota.indGlInd(0,@glucosa)).to eq(10.742187499999998)
            expect(@compota.indGlInd(1,@glucosa)).to eq(98.25737265415547)
            
        end
    end

    describe "Comparaciones de alimentos" do
        it "Comparando menor estricto valorEnergetico" do
            expect(@ali1 < @ali0).to be(true)
            expect(@ali0 < @ali1).to be(false)
        end
        it "Comparando mayor estricto valorEnergetico" do
            expect(@ali0 > @ali1).to be(true)
            expect(@ali1 > @ali0).to be(false)
        end
        it "Comparando igual valorEnergetico" do
            expect(@ali0 == @ali0).to be(true)
            expect(@ali1 == @ali0).to be(false)
        end
        it "Comparando menor igual valorEnergetico" do
            expect(@ali1 <= @ali0).to be(true)
            expect(@ali0 == @ali1).to be(false)
            expect(@ali1 == @ali1).to be(true)
        end
        it "Comparando mayor igual valorEnergetico" do
            expect(@ali0 > @ali1).to be(true)
            expect(@ali0 == @ali0).to be(true)
        end

    end
end

describe Lista::Lista do
    before :all do
       @lista = Lista::Lista.new() 

       @huevo = Nutrientes::Nutrientes.new("Huevo frito",14.1,0.0,19.5,0)
       @leche = Nutrientes::Nutrientes.new("Leche vaca",3.3,4.8,3.2,0)
       @yogurt = Nutrientes::Nutrientes.new("Yogurt",3.8,4.9,3.8,0)
       @cerdo = Nutrientes::Nutrientes.new("Cerdo",21.5,0.0,6.3,0)
       @ternera = Nutrientes::Nutrientes.new("Ternera",21.1,0.0,3.1,0)
       @pollo = Nutrientes::Nutrientes.new("Pollo",20.6,0.0,5.6,0)
       @bacalao = Nutrientes::Nutrientes.new("Bacalao",17.7,0.0,0.4,0)
       @atun = Nutrientes::Nutrientes.new("Atún",21.5,0.0,15.5,0)
       @salmon = Nutrientes::Nutrientes.new("Salmón",19.9,0.0,13.6,0)
       @aceite = Nutrientes::Nutrientes.new("Aceite de oliva",0.0,0.2,99.6,0)
       @chocolate = Nutrientes::Nutrientes.new("Chocolate",5.3,47.0,30.0,0)
       @azucar = Nutrientes::Nutrientes.new("Azúcar",0.0,99.8,0.0,0)
       @arroz = Nutrientes::Nutrientes.new("Arroz",6.8,77.7,0.6,0)
       @lentejas = Nutrientes::Nutrientes.new("Lentejas",23.5,52.0,1.4,0)
       @papas = Nutrientes::Nutrientes.new("Papas",2.0,15.4,0.1,0)
       @tomate = Nutrientes::Nutrientes.new("Tomate",1.0,3.5,0.2,0)
       @cebolla = Nutrientes::Nutrientes.new("Cebolla",1.3,5.8,0.3,0)
       @manzana = Nutrientes::Nutrientes.new("Manzana",0.3,12.4,0.4,0)
       @platanos = Nutrientes::Nutrientes.new("Plátanos",1.2,21.4,0.2,0)
       @calabaza = Nutrientes::Nutrientes.new("Calabaza",1.1,4.8,0.1,0)


   end

   it "Creacion del objeto lista vacía con su cabeza y su cola" do
       expect(@lista).not_to be(nil)
   end

   it "Se puede insertar un elemento en la lista" do
    #expect(@lista.push_node(1)).to eq(1)
   end

   it "Se puede insertar varios elementos en la lista" do
    expect(@lista.push_node(@huevo)).to eq(@huevo)
    expect(@lista.push_node(@leche)).to eq(@leche)
    expect(@lista.push_node(@yogurt)).to eq(@yogurt)
    expect(@lista.push_node(@cerdo)).to eq(@cerdo)
    expect(@lista.push_node(@ternera)).to eq(@ternera)
    expect(@lista.push_node(@pollo)).to eq(@pollo)
    expect(@lista.push_node(@bacalao)).to eq(@bacalao)
    expect(@lista.push_node(@atun)).to eq(@atun)
    expect(@lista.push_node(@aceite)).to eq(@aceite)
    expect(@lista.push_node(@chocolate)).to eq(@chocolate)
    expect(@lista.push_node(@azucar)).to eq(@azucar)
    expect(@lista.push_node(@arroz)).to eq(@arroz)
    expect(@lista.push_node(@lentejas)).to eq(@lentejas)
    expect(@lista.push_node(@papas)).to eq(@papas)
    expect(@lista.push_node(@tomate)).to eq(@tomate)
    expect(@lista.push_node(@cebolla)).to eq(@cebolla)
    expect(@lista.push_node(@manzana)).to eq(@manzana)
    expect(@lista.push_node(@platanos)).to eq(@platanos)
    expect(@lista.push_node(@calabaza)).to eq(@calabaza)
    
   end

   it "Se extrae el primer elemento de la lista" do
    #expect(@lista.pop_front()).to eq(1)
   end
   it "Se extrae el ultimo elemento de la lista" do
    #expect(@lista.pop_back()).to eq(@mantequilla)
   end

   describe "Enumerando elementos de la lista" do
        it "Mostrar elementos enumerados con map" do
            expect(@lista.map { |i| i }).to eq([@huevo,@leche,@yogurt,@cerdo,@ternera,@pollo,@bacalao,@atun,@aceite,
            @chocolate,@azucar,@arroz,@lentejas,@papas,@tomate,@cebolla,@manzana,@platanos,@calabaza])
        end
        it "Mostrar elementos enumerados con collect" do
            expect(@lista.collect { |i| i }).to eq([@huevo,@leche,@yogurt,@cerdo,@ternera,@pollo,@bacalao,@atun,@aceite,
            @chocolate,@azucar,@arroz,@lentejas,@papas,@tomate,@cebolla,@manzana,@platanos,@calabaza])       
        end

   end

   describe "Comparando alimentos" do
        it "Ordenando con for" do
            expect(@lista.for).to eq([@tomate,@calabaza,@cebolla,@manzana,@leche,@yogurt,@papas,@bacalao,@platanos,@ternera,
            @pollo,@cerdo,@atun,@huevo,@lentejas,@arroz,@azucar,@chocolate,@aceite]) 
        end
        it "Ordenando con sort" do
            expect(@lista.sort).to eq([@tomate,@calabaza,@cebolla,@manzana,@leche,@yogurt,@papas,@bacalao,@platanos,@ternera,
            @pollo,@cerdo,@atun,@huevo,@lentejas,@arroz,@azucar,@chocolate,@aceite]) 
            #puts @lista.sort
        end
        it "Ordenando con each" do
            expect(@lista.each1).to eq([@tomate,@calabaza,@cebolla,@manzana,@leche,@yogurt,@papas,@bacalao,@platanos,@ternera,
            @pollo,@cerdo,@atun,@huevo,@lentejas,@arroz,@azucar,@chocolate,@aceite]) 
            #puts @lista.sort
        end

    end

end

describe Nutrientes::Lacteos do
    before :all do
        @huevo = Nutrientes::Lacteos.new("Huevo",14.1,0.0,19.5,0)  
        @leche = Nutrientes::Lacteos.new("Leche vaca",3.3,4.8,3.2,0)
        @yogurt = Nutrientes::Lacteos.new("Yogurt",3.8,4.9,3.8,0)
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

describe Nutrientes::Carnes do
    before :all do
        @cerdo = Nutrientes::Carnes.new("Cerdo",21.5,0.0,6.3,0)
        @ternera = Nutrientes::Carnes.new("Ternera",21.1,0.0,3.1,0)
        @pollo = Nutrientes::Carnes.new("Pollo",20.6,0.0,5.6,0)
    end
    it "Comprobar tipo" do
        expect(@cerdo).to be_instance_of(Nutrientes::Carnes)
        expect(@ternera).to be_instance_of(Nutrientes::Carnes)
        expect(@pollo).to be_instance_of(Nutrientes::Carnes)
        
    end
    it "Comprobar clase" do
        expect(@cerdo).to be_a(Nutrientes::Carnes)
        expect(@ternera).to be_a(Nutrientes::Carnes)
        expect(@pollo).to be_a(Nutrientes::Carnes)
        
    end
    it "Comprobar pertenencia" do
        expect(@cerdo).to be_kind_of(Nutrientes::Nutrientes)
        expect(@ternera).to be_kind_of(Nutrientes::Nutrientes)
        expect(@pollo).to be_kind_of(Nutrientes::Nutrientes) 
    end
end

describe Nutrientes::Mariscos do
    before :all do        
        @bacalao = Nutrientes::Mariscos.new("Bacalao",17.7,0.0,0.4,0)
        @atun = Nutrientes::Mariscos.new("Atún",21.5,0.0,15.5,0)
        @salmon = Nutrientes::Mariscos.new("Salmón",19.9,0.0,13.6,0)
    end
    it "Comprobar tipo" do
        expect(@bacalao).to be_instance_of(Nutrientes::Mariscos)
        expect(@atun).to be_instance_of(Nutrientes::Mariscos)
        expect(@salmon).to be_instance_of(Nutrientes::Mariscos)
        
    end
    it "Comprobar clase" do
        expect(@bacalao).to be_a(Nutrientes::Mariscos)
        expect(@atun).to be_a(Nutrientes::Mariscos)
        expect(@salmon).to be_a(Nutrientes::Mariscos)
        
    end
    it "Comprobar pertenencia" do
        expect(@bacalao).to be_kind_of(Nutrientes::Nutrientes)
        expect(@atun).to be_kind_of(Nutrientes::Nutrientes)
        expect(@salmon).to be_kind_of(Nutrientes::Nutrientes) 
    end
end
describe Nutrientes::AliGrasos do
    before :all do        
        @aceite = Nutrientes::AliGrasos.new("Aceite de oliva",0.0,0.2,99.6,0)
        @chocolate = Nutrientes::AliGrasos.new("Chocolate",5.3,47.0,30.0,0)
        @mantequilla = Nutrientes::AliGrasos.new("Mantequilla",0.7,0.0,83.2,0)
    end
    it "Comprobar tipo" do
        expect(@aceite).to be_instance_of(Nutrientes::AliGrasos)
        expect(@chocolate).to be_instance_of(Nutrientes::AliGrasos)
        expect(@mantequilla).to be_instance_of(Nutrientes::AliGrasos)
        
    end
    it "Comprobar clase" do
        expect(@aceite).to be_a(Nutrientes::AliGrasos)
        expect(@chocolate).to be_a(Nutrientes::AliGrasos)
        expect(@mantequilla).to be_a(Nutrientes::AliGrasos)
        
    end
    it "Comprobar pertenencia" do
        expect(@aceite).to be_kind_of(Nutrientes::Nutrientes)
        expect(@chocolate).to be_kind_of(Nutrientes::Nutrientes)
        expect(@mantequilla).to be_kind_of(Nutrientes::Nutrientes) 
    end
end

describe Nutrientes::AliCarbo do
    before :all do        
        @arroz = Nutrientes::AliCarbo.new("Arroz",6.8,77.7,0.6,0)
        @lentejas = Nutrientes::AliCarbo.new("Lentejas",23.5,52.0,1.4,0)
        @papas = Nutrientes::AliCarbo.new("Papas",2.0,15.4,0.1,0)
        @azucar = Nutrientes::AliCarbo.new("azucar",0.0,99.8,0.0,0)
    end
    it "Comprobar tipo" do
        expect(@arroz).to be_instance_of(Nutrientes::AliCarbo)
        expect(@lentejas).to be_instance_of(Nutrientes::AliCarbo)
        expect(@papas).to be_instance_of(Nutrientes::AliCarbo)
        expect(@azucar).to be_instance_of(Nutrientes::AliCarbo)
        
        
    end
    it "Comprobar clase" do
        expect(@arroz).to be_a(Nutrientes::AliCarbo)
        expect(@lentejas).to be_a(Nutrientes::AliCarbo)
        expect(@papas).to be_a(Nutrientes::AliCarbo)
        expect(@azucar).to be_a(Nutrientes::AliCarbo)
        
    end
    it "Comprobar pertenencia" do
        expect(@arroz).to be_kind_of(Nutrientes::Nutrientes)
        expect(@lentejas).to be_kind_of(Nutrientes::Nutrientes)
        expect(@papas).to be_kind_of(Nutrientes::Nutrientes)
        expect(@azucar).to be_kind_of(Nutrientes::Nutrientes) 
    end
end

describe Nutrientes::Verduras do
    before :all do        
        @tomate = Nutrientes::Verduras.new("Tomate",1.0,3.5,0.2,0)
        @cebolla = Nutrientes::Verduras.new("Cebolla",1.3,5.8,0.3,0)
    end
    it "Comprobar tipo" do
        expect(@tomate).to be_instance_of(Nutrientes::Verduras)
        expect(@cebolla).to be_instance_of(Nutrientes::Verduras)
        
    end
    it "Comprobar clase" do
        expect(@tomate).to be_a(Nutrientes::Verduras)
        expect(@cebolla).to be_a(Nutrientes::Verduras)
        
    end
    it "Comprobar pertenencia" do
        expect(@tomate).to be_kind_of(Nutrientes::Nutrientes)
        expect(@cebolla).to be_kind_of(Nutrientes::Nutrientes)
    end
end

describe Nutrientes::Frutas do
    before :all do        
        @manzana = Nutrientes::Frutas.new("Manzana",0.3,12.4,0.4,0)
        @platanos = Nutrientes::Frutas.new("Plátanos",1.2,21.4,0.2,0)
    end
    it "Comprobar tipo" do
        expect(@manzana).to be_instance_of(Nutrientes::Frutas)
        expect(@platanos).to be_instance_of(Nutrientes::Frutas)
        
    end
    it "Comprobar clase" do
        expect(@manzana).to be_a(Nutrientes::Frutas)
        expect(@platanos).to be_a(Nutrientes::Frutas)
        
    end
    it "Comprobar pertenencia" do
        expect(@manzana).to be_kind_of(Nutrientes::Nutrientes)
        expect(@platanos).to be_kind_of(Nutrientes::Nutrientes)
    end
end

@lista = Lista::Lista.new() 

       @huevo = Nutrientes::Nutrientes.new("Huevo frito",14.1,0.0,19.5,0)
       @leche = Nutrientes::Nutrientes.new("Leche vaca",3.3,4.8,3.2,0)
       @yogurt = Nutrientes::Nutrientes.new("Yogurt",3.8,4.9,3.8,0)
       @cerdo = Nutrientes::Nutrientes.new("Cerdo",21.5,0.0,6.3,0)
       @ternera = Nutrientes::Nutrientes.new("Ternera",21.1,0.0,3.1,0)
       @pollo = Nutrientes::Nutrientes.new("Pollo",20.6,0.0,5.6,0)
       @bacalao = Nutrientes::Nutrientes.new("Bacalao",17.7,0.0,0.4,0)
       @atun = Nutrientes::Nutrientes.new("Atún",21.5,0.0,15.5,0)
       @salmon = Nutrientes::Nutrientes.new("Salmón",19.9,0.0,13.6,0)
       @aceite = Nutrientes::Nutrientes.new("Aceite de oliva",0.0,0.2,99.6,0)
       @chocolate = Nutrientes::Nutrientes.new("Chocolate",5.3,47.0,30.0,0)
       @azucar = Nutrientes::Nutrientes.new("Azúcar",0.0,99.8,0.0,0)
       @arroz = Nutrientes::Nutrientes.new("Arroz",6.8,77.7,0.6,0)
       @lentejas = Nutrientes::Nutrientes.new("Lentejas",23.5,52.0,1.4,0)
       @papas = Nutrientes::Nutrientes.new("Papas",2.0,15.4,0.1,0)
       @tomate = Nutrientes::Nutrientes.new("Tomate",1.0,3.5,0.2,0)
       @cebolla = Nutrientes::Nutrientes.new("Cebolla",1.3,5.8,0.3,0)
       @manzana = Nutrientes::Nutrientes.new("Manzana",0.3,12.4,0.4,0)
       @platanos = Nutrientes::Nutrientes.new("Plátanos",1.2,21.4,0.2,0)
       @calabaza = Nutrientes::Nutrientes.new("Calabaza",1.1,4.8,0.1,0)

       @tabla = Lista::Lista.new()

       @lista.push_node(@huevo)
       @lista.push_node(@yogurt)
       @lista.push_node(@cerdo)
       @lista.push_node(@ternera)
       @lista.push_node(@pollo)
       @lista.push_node(@bacalao)
       @lista.push_node(@atun)
       @lista.push_node(@aceite)
       @lista.push_node(@chocolate)
       @lista.push_node(@azucar)
       @lista.push_node(@arroz)
       @lista.push_node(@lentejas)
       @lista.push_node(@papas)
       @lista.push_node(@tomate)
       @lista.push_node(@cebolla)
       @lista.push_node(@manzana)
       @lista.push_node(@platanos)
       @lista.push_node(@calabaza)

       include Benchmark

       Benchmark.benchmark(CAPTION, 7, FORMAT, ">total:", ">avg:") do |x|
        tf = x.report("For:") {@lista.for}
        tf = x.report("Sort:") {@lista.sort}
        tf = x.report("Each:") {@lista.each1}

       end
  

