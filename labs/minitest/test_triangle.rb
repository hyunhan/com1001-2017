require 'minitest/autorun'
require_relative 'triangle.rb'

class TestTriangle < Minitest::Test

  def test_triangle_sorts_sides_permuation_1
    t = Triangle.new(1, 2, 3)
    assert_equal 1, t.get_side(0)
    assert_equal 2, t.get_side(1)
    assert_equal 3, t.get_side(2)
  end  

  def test_triangle_sorts_sides_permuation_2
    t = Triangle.new(3, 1, 2)
    assert_equal 1, t.get_side(0)
    assert_equal 2, t.get_side(1)
    assert_equal 3, t.get_side(2)
  end

  def test_triangle_sorts_sides_permuation_3
    t = Triangle.new(3, 2, 1)
    assert_equal 1, t.get_side(0)
    assert_equal 2, t.get_side(1)
    assert_equal 3, t.get_side(2)
  end

  # more permutations...

  # more tests...

end