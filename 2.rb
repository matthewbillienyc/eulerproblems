a, b = 0, 1
sum = []
while a < 4000000
	sum << a if a % 2 == 0
	a, b = b, a + b
end

puts sum.inject(:+)