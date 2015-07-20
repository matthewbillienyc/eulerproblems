
include Math
require "prime"

def prime?(n)
	(2..sqrt(n)).each { |x| return false if n % x == 0 }
	true
end


def largest_prime_factor(n)
	factors = []
	((n-1).downto(1)).each { |x| 
		(factors << x if n % x == 0 && prime?(x) == true) unless x & 2 ==0
		break if factors.count > 0
	}
	puts factors.last
end

def prob_three(n)
	last_prime = n.prime_division.last
	last_prime[0]
end

puts prob_three(600851475143)

