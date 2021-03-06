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
			x = mcd(args[0],args[1])
			@a = args[0] / x
			@b = args[1] / x
		else
			@a = args[0]
			@b = 1
		end
	end

	# Impresión en pantalla del número racional
	def to_s
		"#{@a}/#{@b}"
	end

	# Dado un número c/d, devuelve dicho número reducido en fracción irreducible
	def operandoMin(c, d)
		x = mcd(c,d)
		c = c / x
		d = d / x
		return c, d
	end

	# Suma
	def suma(*args)
		# Número a restar expresado en fracción irreducible
		if args.size == 2
			x, y = operandoMin(args[0],args[1])
		else
			x = args[0]
			y = 1
		end

		if (@b == y) # Igual denominador
			@a += x
		else         # Distinto denominador
			den = mcm(@b,y)
			num = ((den / @b) * @a) + ((den / y) * x)
			@a, @b = operandoMin(num, den)
		end

		return @a, @b
	end

	def resta(*args)
		# Número a restar expresado en fracción irreducible
		if args.size == 2
			x, y = operandoMin(args[0],args[1])
		else
			x = args[0]
			y = 1
		end

		if (@b == y) # Igual denominador
			@a -= x
		else         # Distinto denominador
			den = mcm(@b,y)
			num = ((den / @b) * @a) - ((den / y) * x)
			@a, @b = operandoMin(num, den)
		end

		return @a, @b
	end

	def producto(*args)
		if args.size == 2 
			x, y = operandoMin(args[0],args[1])
		else
			x = args[0]
			y = 1
		end

		@a, @b = operandoMin(@a * x, @b * y)

		return @a, @b
	end

	def division(*args)
		if args.size == 2 
			x, y = operandoMin(args[0],args[1])
		else
			x = args[0]
			y = 1
		end

		@a, @b = operandoMin(@a * y, @b * x)

		return @a, @b
	end
end