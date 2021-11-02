# frozen_string_literal: true

# Vector
class Vector

  def initialize(point1, point2)
    @p1 = point1
    @p2 = point2
  end

  def distance
    length = Math.sqrt(@p1.x * @p2.x + @p1.y * @p2.y)
    puts "Length #{length}"
  end

  class Point
    attr_accessor :x, :y
  end
end
