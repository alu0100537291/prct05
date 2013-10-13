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
      assert_equal([0, 1], Fraccion.new(1,1).resta(1,1))   # (1/1) - (1/1) = (0/1)
      assert_equal([13, 10], Fraccion.new(3,2).resta(1,5)) # (3/2) - (1/5) = (13/10)
      assert_equal([-1, 1], Fraccion.new(1,1).resta(2))    # (1/1) - (2) = (-1/1)
      assert_equal([0, 1], Fraccion.new(1).resta(1))       # (1) - (1) = (0)
   end

   def test_producto
      assert_equal([1, 1], Fraccion.new(1,1).producto(1,1))    # (1/1) * (1/1) = (1/1)
      assert_equal([3, -10], Fraccion.new(3,-2).producto(1,5)) # (3/-2) * (1/5) = (3/-10)
      assert_equal([2, 1], Fraccion.new(1,1).producto(2))      # (1/1) * (2) = (2/1)
      assert_equal([1, 1], Fraccion.new(1).producto(1))        # (1) * (1) = (1)
   end

   def test_division
      assert_equal([1, 1], Fraccion.new(1,1).division(1,1))    # (1/1) / (1/1) = (1/1)
      assert_equal([-15, 2], Fraccion.new(-3,2).division(1,5)) # (-3/2) / (1/5) = (-15/2)
      assert_equal([1, -2], Fraccion.new(1,1).division(-2))    # (1/1) / (-2) = (1/-2)
      assert_equal([1, 1], Fraccion.new(1).division(1))        # (1) / (1) = (1)
   end
end
