require 'rspec'
require_relative "calculadora"

describe "Calculadora" do

	it "should start with an empty value" do
		calc = Calculadora.new
		calc.valor.should eq(0)
	end

	it "should be 5 when I add 2 and 3" do
		calc = Calculadora.new
		calc.sumar(2,3)
		calc.valor.should eq(5)
	end

	it "should be 7 when I add 4 and 3" do
		calc = Calculadora.new
		calc.sumar(4,3)
		calc.valor.should eq(7)
	end
end


