class Triangle
  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(attributes=nil)
    if attributes
      attributes.each do |k,v|
        self.send("#{k}=", v)
      end
end
