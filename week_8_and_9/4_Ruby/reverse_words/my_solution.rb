# U3.W8-9: Reverse Words


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode
# define a method that will take a string as an argument
# split the strnig in to an array
# loop true the array and reverse each word
# return the array


# 3. Initial Solution
def reverse_words(w)
	y=[]
  w.split.each {|x| y << x.reverse&&y<<" "}
  y.join
end




# 4. Refactored Solution
def reverse_words(w)
	y=[]
  w.split.each {|x| y << x.reverse&&y<<" "}
  y.reverse.drop(1).reverse.join
end



# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
def assert
  raise "Failed!" unless yield
end
def random_word(length = 5)
  rand(36**length).to_s(36)
end
assert { reverse_words("") == ""}
word = random_word
p word
p reverse_words(word)
p word.reverse
assert { reverse_words(word) == word.reverse }
word1 = random_word
word2 = random_word
assert { reverse_words("#{word1} #{word2}") == "#{word1.reverse} #{word2.reverse}" }
assert { reverse_words("Ich bin ein Berliner") == "hcI nib nie renilreB" }




# 5. Reflection 
# I didne tfind any good way of adding back the spaces between the words. I dont realy think it would be the best solution.