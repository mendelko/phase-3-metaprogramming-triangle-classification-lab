class Triangle

  def initialize(a, b, c)
    if a + b <= c || a + c <= b || b + c <= a
      raise TriangleError
    elsif a <= 0 || b <= 0 || c <= 0
      raise TriangleError
    end
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a == @b && @a == @c
      return :equilateral
    elsif @a == @b || @a == @c || @b == @c
      return :isosceles
    elsif @a != @b && @a != @c && @b != @c
      return :scalene
    end
  end

  class TriangleError < StandardError
    "Invalid triangle"
  end
end
