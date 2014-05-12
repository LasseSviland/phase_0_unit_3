# U3.W8-9: Implement a Rectangle Class


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode



# 3. Initial Solution
class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end
  def area
  	@width*@height
  end
  def perimeter
  	(@width *2 +@height *2)
	end
	def diagonal
		Math.sqrt(@width**2+@height**2)
	end
	def square?
		@width == @height ? true : false
	end
  def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end
end




# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
def assert
	raise "Assertion failed!" unless yield
end
r = Rectangle.new(10,20)
s = Rectangle.new(20,20)
assert{r.area == 200 }
assert{s.area == 400 }
assert{r.perimeter == 60 }
assert{s.perimeter == 80 }
assert{r.diagonal == 22.360679774997898 }
assert{s.diagonal == 28.284271247461902 }
assert{r.square? == false }
assert{s.square? == true }

# 5. Reflection 