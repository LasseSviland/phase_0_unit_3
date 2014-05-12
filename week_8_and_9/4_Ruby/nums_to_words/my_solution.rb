# U3.W8-9: Numbers to English Words


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode



# 3. Initial Solution
$numbers = ["","one","two","three","four","five","six","seven","eight","nine","ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","ninteen"]
$tens = ["twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety","hundred"]
$high_numbers = ["thousand","million","billion","trillion","quadrillion"]
def split_tree(x)
	arr = []
	(x.length/3).times do
		arr << (x[0]+x[1]+x[2]).to_s
		x = x.drop(3)
	end
	if x.length >0
		arr << x.join
	end
	arr.reverse.each {|x|x.reverse!}
end
def thousand(num)
	if num.to_i >0
		"#{to_word(num)} thousand "
	else
		''
	end
end
def million(num)
	if num.to_i>0
		"#{to_word(num)} million "
	else
		''
	end
end
def billion(num)
	if num.to_i>0
		"#{to_word(num)} billion "
	else
		''
	end
end
def trillion(num)
	if num.to_i>0
		"#{to_word(num)} trillion "
	else
		''
	end
end
def quadrillion(num)
	if num.to_i>0
		"#{to_word(num)} quadrillion "
	else
		''
	end
end
def to_word(num)
	num = num.to_i
	number = num.to_i
	n = number.to_s.split('')
	if num<20
		return $numbers[num]
  elsif num.to_i < 100
  	out = "#{$tens[n[0].to_i-2]} #{$numbers[n[1].to_i]}"
  else
  	if n[1].to_i<2
  		u = $numbers[(n[1]+n[2]).to_i]
  		i = ''
  	else
  		u = $tens[n[1].to_i-2]
  		i = $numbers[n[2].to_i]
		end
  	out = "#{$numbers[n[0].to_i]} #{$tens[8]} #{u} #{i}"
  end
end
def in_words(num)

	n = []
	num.to_s.reverse.split('').each{|x| n<< x}
	n = split_tree(n)
	l = n.length
	if l == 1
		u =(to_word(n[0])).capitalize
	elsif l == 2
		u = (thousand(n[0]) + to_word(n[1])).capitalize
	elsif l == 3
		u = (million(n[0])+ thousand(n[1]) + to_word(n[2])).capitalize
	elsif l == 4
		u =(billion(n[0])+million(n[1])+thousand(n[2])+to_word(n[3])).capitalize
	elsif l == 5
		u = (trillion(n[0])+billion(n[1])+million(n[2])+thousand(n[3])+to_word(n[4])).capitalize
	elsif l == 6
		u = (quadrillion(n[0])+trillion(n[1])+billion(n[2])+million(n[3])+thousand(n[4])+to_word(n[5])).capitalize
	end
	y = ''
	u.split(' ').each{|x|y += x+" "}
	y.split('').reverse.drop(1).reverse.join
end



# 4. Refactored Solution






# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

def assert
	raise "Assertion failed!" unless yield
end

assert{in_words(1) == "One"}
assert{in_words(13) == "Thirteen"}
assert{in_words(179) == "One hundred seventy nine"}
assert{in_words(359217) == "Three hundred fifty nine thousand two hundred seventeen"}
assert{in_words(5000015000) == "Five billion fifteen thousand"}
assert{in_words(999000000000000000) == "Nine hundred ninety nine quadrillion"}
p in_words(999000000000000000)


# 5. Reflection