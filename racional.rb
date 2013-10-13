require "./mcd.rb" # Máximo Común Divisor
require "./mcm.rb" # Mínimo Común Múltiplo

class Fraccion

	# Inicialización del objeto
	#    El paso del numerador y denominador se hace por parámetros
	#       - Si se pasan dos números, el primero es el numerador y el segundo
	#         el denominador. Ejemplo: (2,3) -> 2/3
	#       - Si se le pasa un número, dicho número es el numerador y el
	#         denominador es un 1. Ejemplo: (2) -> 2/1
	#    Una vez se cogen los parámetros, la fracción es guardada en su mínima
	#    expresión, haciendo uso del Máximo Común Divisor
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

	# Impresión en pantalla del número racional
	def to_s
		if (@b == 1)
			"#{@a}"
		else
			"#{@a}/#{@b}"
		end	
	end

	# Suma
	def suma(c, d)
		# El número a sumar se hace fracción irreducible
		min = mcd(c, d)
		c = (c / min)
		d = (d / min)

		if (@b == d) # Igual denominador
			initialize(@a += c, @b)
		else         # Distinto denominador
			x = mcm(@b, d) # Mínimo Común Múltiplo de los denominadores
			initialize(((x/@b) * @a) + ((x/d) * c), x)
		end
	end

	def resta(c, d)
	end

	def producto(c, d)
	end

	def division(c, d)
	end
end

A = Fraccion.new(3, 2)
A.suma(1, 5)

puts A