require 'simplecov'
SimpleCov.start

require 'rspec'
require_relative 'romanos'

describe "Romanos" do
	
	before(:each) do
		@romanos = Romanos.new
	end

	it "deberia lanzar excepcion si es cero" do
		expect {valor = @romanos.valor(0)}.to raise_error
	end

	it "deberia lanzar excepcion si es negativo" do
		expect {valor = @romanos.valor(-1)}.to raise_error
	end

	it "uno deberia ser palito" do
		valor = @romanos.valor(1)
		valor.should == "I"
	end

	it "dos deberia ser II" do
		valor = @romanos.valor(2);   
		valor.should == "II" 
	end 

	it "tres deberia ser III" do
		valor = @romanos.valor(3);   
		valor.should == "III" 
	end

	it "cuatro deberia ser IV" do
		valor = @romanos.valor(4);   
		valor.should == "IV" 
	end

	it "cinco deberia ser V" do
		valor = @romanos.valor(5)
		valor.should == "V"
	end

	it "seis deberia ser VI" do
		valor = @romanos.valor(6)
		valor.should == "VI"
	end

	it "siete deberia ser VII" do
		valor = @romanos.valor(7)
		valor.should == "VII"
	end

	it "ocho deberia ser VIII" do
		valor = @romanos.valor(8)
		valor.should == "VIII"
	end

	it "nueve deberia ser IX" do
		valor = @romanos.valor(9)
		valor.should == "IX"
	end

	it "19 deberia ser XIX" do
		valor = @romanos.valor(19)
		valor.should == "XIX"
	end

	it "24 deberia ser XXIV" do
		valor = @romanos.valor(24)
		valor.should == "XXIV"
	end

	it "29 deberia ser XXIX" do
		valor = @romanos.valor(29)
		valor.should == "XXIX"
	end

	it "33 deberia ser XXXIII" do
		valor = @romanos.valor(33)
		valor.should == "XXXIII"
	end

	it "56 deberia ser LVI" do
		valor = @romanos.valor(56)
		valor.should == "LVI"
	end

	it "3999 deberia ser MMMCMXCIX" do
		valor = @romanos.valor(3999)
		valor.should == "MMMCMXCIX"
	end

	it "deberia lanzar excepcion si es mayor a 3999" do
		expect {valor = @romanos.valor(4000)}.to raise_error
	end

end

