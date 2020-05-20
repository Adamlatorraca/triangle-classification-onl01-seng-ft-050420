class Triangle

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    if side_a == side_b == side_c
      return :equilateral
  end

  class TriangleError < StandardError

  end
end
