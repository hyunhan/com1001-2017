# The Triangle class.

# For more on how to write classses in Ruby, see
# http://phrogz.net/programmingruby/tut_classes.html

class Triangle

  # This is how we declare 'private' instance variables in Ruby 
  attr_reader :sides

  # This is how we write a constructor in Ruby
  def initialize(first_side, second_side, third_side)
    # put the parameters into an private array internal to the object
    @sides = Array.new
    @sides[0] = first_side
    @sides[1] = second_side
    @sides[2] = third_side

    # The rest of the code in the constructor sort the sides of the triangle
    # in the sides array into length order.  This makes the invalid triangle test easy
    # to perform in the getType() method

    temp = nil # used to temporarily store a side length when doing a length swap

    if @sides[0] > @sides[1]
      # swap sides at array indexes 0 and 1
      temp = @sides[0]
      @sides[0] = @sides[1]
      @sides[1] = temp
    end

    if @sides[1] > @sides[2]
      # swap sides at array indexes 1 and 2
      temp = @sides[1]
      @sides[1] = @sides[2]
      @sides[2] = temp
    end
  end

  # Get the length of a side
  def get_side(side)
    if side >= 0 && side < 3
      return @sides[side]
    end

    # invalid side number given
    return nil
  end

  # Returns a message indicating the type of the triange
  # (i.e., "equilateral", "isosceles", "scalene" or "invalid").
  def get_type

    # are the sides are of valid lengths?
    return "invalid" if @sides[0] <= 0 || @sides[1] <=0 || @sides[2] <= 0

    # is the triangle invalid?
    return "invalid" if @sides[0] + @sides[1] < @sides[2]

    # if two sides are equal, the triangle type is isosceles
    if @sides[0] == @sides[1] || @sides[1] == @sides[2] || @sides[2] == @sides[0]
      return "isosceles"
    end

    # if all three sides are of equal length, it's an equilateral triangle
    if @sides[0] == @sides[1] && @sides[1] == @sides[2]
      return "equilateral"
    end

    # none of the above, therefore it's a scalene triangle
    return "scalene"
  end

end