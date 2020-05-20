class Triangle

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    if (self.side_a >= 1) && (self.side_b >= 1) && (self.side_a >= 1)
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    if @side_a == @side_b && @side_a == @side_c
        return :equilateral
      elsif @side_a == @side_b || @side_a == @side_c || @side_b == @side_c
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
