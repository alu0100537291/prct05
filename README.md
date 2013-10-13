# LPP - Práctica 5 #
## Pruebas unitarias ##

### Guión  
El guión de esta práctica se encuentra [aquí](https://github.com/coromoto/PruebasUnitarias)

### Ejecución
Para la ejecución de la práctica

    ruby racional.rb

Para la ejecución de los test

    ruby tc_racional.rb

### Implementación
Ésta práctica contiene 4 ficheros:
   1. `racional.rb`, donde se encuentra la clase `Fraccion`
   2. `tc_racional.rb`, donde se encuentran los test
   3. `mcm.rb`, método del Mínimo Común Múltiplo
   4. `mcd.rb`, método del Máximo Común Divisor

El guión provee de una clase `Fraccion` para la representación de los números racionales.
Cada objeto de dicha clase debe representar un número racional reducido a su mínima expresión.

    class Fraccion
       def initialize(*args)
          ...
          Constructor. Almacena un número racional reducido a su mínima expresión
          ...
       end

       def to_s
          ...
          Cadena con la representación del número racional
          ...
       end

       def operandoMin(c, d)
       end

       def suma(*args)
       end

       def resta(*args)
       end

       def producto(*args)
       end

       def division(*args)
       end
    end

Autor
-------
| ALUMNO | CORREO |
| ---------- | ---------- |
| José Alberto Pérez Melián   | alu0100537291[AT]ull.edu.es   |