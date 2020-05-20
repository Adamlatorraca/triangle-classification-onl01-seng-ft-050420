class Triangle

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    if (side_a <= 0) && (side_b <= 0) && (side_a <= 0)
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    else @side_a == @side_b && @side_a == @side_c
        return :equilateral
      else @side_a == @side_b || @side_a == @side_c || @side_b == @side_c
        return :isosceles
      else @side_a != @side_b || @side_a != @side_c || @side_b != @side_c
        return :scalene
      end
    end
  end

  class TriangleError < StandardError
    # triangle error code
  end
end
