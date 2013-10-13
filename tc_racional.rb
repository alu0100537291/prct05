require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase

   def test_suma
      assert_equal([2, 1], Fraccion.new(1,1).suma(1,1))   # (1/1) + (1/1) = (2/1)
      assert_equal([17, 10], Fraccion.new(3,2).suma(1,5)) # (3/2) + (1/5) = (17/10)
      assert_equal([3, 1], Fraccion.new(1,1).suma(2))     # (1) + (2) = (3/1)
      assert_equal([2, 1], Fraccion.new(1).suma(1))       # (1) + (1) = (2)
   end

   def test_resta
      assert_equal([0, 1], Fraccion.new(4,2).resta(4,2))
   end

   def test_producto
   end

   def test_division
   end
end
