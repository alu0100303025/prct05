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
end

a = Fraccion.new(2,1)
