require "pry"
class Triangle
  attr_accessor :side1, :side2, :side3, :type

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind

    if (@side1 <= 0 || @side2 <= 0 || @side3 <= 0 ) || sides_are_invalid
      raise TriangleError
    end

    if @side1 == @side2 && @side1 == @side3
      :equilateral
    elsif (@side1 == @side2 || @side1 == @side3 || @side2 == @side3)
      :isosceles
    else
      :scalene
    end
  end

  def sides_are_invalid

    if (@side1 + @side2 > @side3) && (@side2 + @side3 > @side1) && (@side1 + @side3 > @side2)
      return false
    else
      return true
    end
  end

end

class TriangleError < StandardError
 # triangle error code
end
