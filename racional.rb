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
	def suma(*args)
		if args.size == 2 
			x = mcd(args[0], args[1])
			c = (args[0] / x)
			d = (args[1] / x)
		else
			c = args[0]
			d = 1
		end

		if (@b == d) # Igual denominador
			initialize(@a + c, @b)
		else         # Distinto denominador
			x = mcm(@b, d) # Mínimo Común Múltiplo de los denominadores
			initialize(((x/@b) * @a) + ((x/d) * c), x) # Número fraccional resultado
		end
	end

	def resta(*args)
		if args.size == 2 
			x = mcd(args[0], args[1])
			c = (args[0] / x)
			d = (args[1] / x)
		else
			c = args[0]
			d = 1
		end

		if (@b == d) # Igual denominador
			initialize(@a - c, @b)
		else         # Distinto denominador
			x = mcm(@b, d) # Mínimo Común Múltiplo de los denominadores
			initialize(((x/@b) * @a) - ((x/d) * c), x) # Número fraccional resultado
		end
	end

	def producto(*args)
		if args.size == 2 
			x = mcd(args[0], args[1])
			c = (args[0] / x)
			d = (args[1] / x)
		else
			c = args[0]
			d = 1
		end

		initialize(@a * c, @b * d)
	end

	def division(*args)
		if args.size == 2 
			x = mcd(args[0], args[1])
			c = (args[0] / x)
			d = (args[1] / x)
		else
			c = args[0]
			d = 1
		end

		initialize(@a * d, @b * c)
	end
end

A = Fraccion.new(1,3)

A.suma(1,3)
#A.resta(1)
#A.producto(2, 3)
#A.division(1)

puts A