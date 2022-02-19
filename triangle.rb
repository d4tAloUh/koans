# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def validate_parameter(side)
  if side <= 0
    raise TriangleError, "side should be positive (more than 0)"
  end
end
def triangle(a, b, c)
  validate_parameter a
  validate_parameter b
  validate_parameter c
  if (a + b < c) || (a + c < b) || (b + c < a)
    raise TriangleError, "Sum of two sides should be larger than third"
  end
  if (a + b == c) || (a + c == b) || (b + c == a)
    raise TriangleError, "Sum of two sides can never be equal third"
  end

  if a == b && b == c
    :equilateral
  else
    if a == b || b == c || a == c
      return :isosceles
    end
    :scalene
  end

end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
