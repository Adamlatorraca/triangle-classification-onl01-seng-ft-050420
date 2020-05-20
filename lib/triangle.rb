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
    elsif @side_a == @side_b && @side_a == @side_c
        return :equilateral
      elsif @side_a == @side_b || @side_a == @side_c || @side_b == @side_c
        return :isosceles
      elsif @side_a != @side_b || @side_a != @side_c || @side_b != @side_c
        return :scalene
      end
    end


  class TriangleError < StandardError
    # triangle error code
  end
end
