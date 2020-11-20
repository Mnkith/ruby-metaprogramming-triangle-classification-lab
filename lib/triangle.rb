class Triangle
  def initialize(s1, s2, s3)
    @a, @b, @c = s1, s2, s3 
  end

  def kind
    if @a <= 0 || @b <= 0 || @c <= 0
      raise TriangleError
    elsif @a + @b <= @c || @a + @c <= @b || @b + @c <= @a
      raise TriangleError
    elsif @a == @b && @b == @c
      :equilateral
    elsif @a != @b && @b != @c && @a != @c
      :scalene
    else
      :isosceles
    end
  end

  class TriangleError < StandardError

  end
end
