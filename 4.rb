products = 
	(100..999).map{ |a| 
		(100..999).map{ |b|
		 a * b
		}
	}.flatten.select{ |p|
	  p.to_s == p.to_s.reverse!
	}.sort.reverse

puts products[0]