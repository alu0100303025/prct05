# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
	attr_reader :numerador, :denominador # getters y setters
	def initialize (num,den) #Inicilizador, recibe el denominador y el numerador, los simplifica usando el mcd (gcd) y los guarda.
		mcd = gcd(num,den) #calculamos el gcd
		@numerador = num/mcd 
		@denominador = den/mcd
	end

	def to_s #para imprimir una fraccion
		(@denominador == 1 ? "#{@numerador}" : "#{@numerador}/#{@denominador}")
	end

	def suma(otro)
		#n1/d1 + n2/d2 = (n1*d2) + (n2*d1) / d1 * d2
		numerador_nuevo = @numerador * otro.denominador + otro.numerador * @denominador
		denominador_nuevo = @denominador * otro.denominador
		devuelto = Fraccion.new(numerador_nuevo, denominador_nuevo) #si hace falta simplificar, el initialize hará el trabajo
	end

	def resta(otro)
		#n1/d1 - n2/d2 = (n1*d2) - (n2*d1) / d1 * d2
		numerador_nuevo = @numerador * otro.denominador - otro.numerador * @denominador
		denominador_nuevo = @denominador * otro.denominador
		devuelto = Fraccion.new(numerador_nuevo, denominador_nuevo) #si hace falta simplificar, el initialize hará el trabajo
	end

	def producto(otro)
		#n1/d1 * n2/d2 = (n1*n2) / d1 * d2
		numerador_nuevo = @numerador * otro.numerador
		denominador_nuevo = @denominador * otro.denominador
		devuelto = Fraccion.new(numerador_nuevo, denominador_nuevo) #si hace falta simplificar, el initialize hará el trabajo
	end

	def division(otro)
		#(n1/d1) / (n2/d2) = (n1*d2) / d1 * n2
		numerador_nuevo = @numerador * otro.denominador 
		denominador_nuevo = @denominador * otro.numerador
		devuelto = Fraccion.new(numerador_nuevo, denominador_nuevo) #si hace falta simplificar, el initialize hará el trabajo
	end

	def == (otro) # Operador de igualdad, para el test.
		#si lo comparamos con número, comparamos valor :)
		#sino, son iguales si sus numeradores y denominadores (simplificados) son iguales
		((otro.is_a? Numeric) ? @numerador/@denominador == otro : @numerador == otro.numerador && @denominador == otro.denominador)
	end
end
