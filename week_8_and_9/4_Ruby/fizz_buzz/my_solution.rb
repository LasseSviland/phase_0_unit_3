# U3.W8-9: 


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode
# make an array for th output
# make a each loop that will loop true the array
# make if statements that will see if the numbers is devideable with 3,5 and 15 and put the words instead
# return the outpust array


# 3. Initial Solution

def super_fizzbuzz(array)
	out = []
	array.each do |x|
		if x % 15 == 0
			out <<'FizzBuzz'
		elsif x % 5 == 0
			out <<'Buzz'
		elsif x % 3 == 0
			out <<'Fizz'
		else 
			out <<x
		end 
	end
	out
end



# 4. Refactored Solution
def super_fizzbuzz(array)
	out = []
	array.each do |x|
		if x % 15 == 0
			out <<'FizzBuzz'
		elsif x % 5 == 0
			out <<'Buzz'
		elsif x % 3 == 0
			out <<'Fizz'
		else 
			out <<x
		end 
	end
	out
end


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
super_fizzbuzz([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15])  # => [1, 2, "Fizz"]
super_fizzbuzz([1,2,5])  # => [1, 2, "Buzz"]
super_fizzbuzz([1,2,15]) # => [1, 2, "FizzBuzz"]
super_fizzbuzz([30, 9, 20, 1]) # => ["FizzBuzz", "Fizz", "Buzz", 1]


# 5. Reflection 