# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
	def test_suma
		assert_equal(1,Fraccion.new(1,3).suma(Fraccion.new(2,3)))
		assert_equal(1,Fraccion.new(2,6).suma(Fraccion.new(2,3)))
		assert_equal(Fraccion.new(29,15),Fraccion.new(3,5).suma(Fraccion.new(4,3)))
	end

	def test_resta 
		assert_equal(4, Fraccion.new(30,5).resta(Fraccion.new(4,2)))
		assert_equal(1/7,Fraccion.new(6,7).resta(Fraccion.new(5,7)))
		assert_equal(1/7,Fraccion.new(6,7).resta(Fraccion.new(5,7)))
	end

	def test_producto
		assert_equal(Fraccion.new(81,48),Fraccion.new(9,6).producto(Fraccion.new(9,8)))
		assert_equal(Fraccion.new(28,27),Fraccion.new(4,3).producto(Fraccion.new(7,9)))
		assert_equal(Fraccion.new(28,27),Fraccion.new(4,3).producto(Fraccion.new(7,9)))
	end

	def test_division
		assert_equal(Fraccion.new(144,50),Fraccion.new(12,5).division(Fraccion.new(10,12)))
		assert_equal(Fraccion.new(1000,7000),Fraccion.new(500,3500).division(Fraccion.new(2,2)))
		assert_equal(Fraccion.new(1000,7000),Fraccion.new(500,3500).division(Fraccion.new(2,2)))
	end
end

