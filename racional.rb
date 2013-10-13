# Implementar en este fichero la clase para crear objetos racionales

require "./mcd.rb" # Máximo Común Divisor
require "./mcm.rb" # Mínimo Común Múltiplo

class Fraccion

	def initialize(*args)
		if args.size == 2
			c = mcd(args[0], args[1])
			@a = (args[0] / c)
			@b = (args[1] / c)
		else
			@a = args[0]
			@b = 1
		end
	end

	def to_s
		"#{@a}/#{@b}"
	end

	def suma(c, d)
		min = mcd(c, d)
		c = (c / min)
		d = (d / min)

		@a += c
		@b += d
	end

	def resta(c, d)
	end

	def producto(c, d)
	end

	def division(c, d)
	end
end

A = Fraccion.new(2, 4)
A.suma(2, 4)

puts A