require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase

   def test_simple
      assert_equal(1, 1, Fraccion.new(1,2))
   end
end
