require 'minitest/autorun'
require_relative 'string_comparison_buggy.rb'

class TestStringComparison < Minitest::Test

  def test_single_character_strings
    assert_equal 0, string_comparison("s", "b")
  end

  def test_two_character_strings
    assert_equal 1, string_comparison("hi", "ho")
  end

end