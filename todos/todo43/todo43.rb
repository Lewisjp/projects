=begin
Largest prime factor

Factors are numbers you can multiply together to get another number:
Example: 2 and 3 are factors of 6, because 2 × 3 = 6.

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
=end


def factors(num)
	factors = Array.new
	i = 1
	while i <= num
		if num % i == 0
			if !factors.include?(i)
				factors << i
			end
		end
		i += 1
	end 
	return factors 
end

def prime(num)
	if num != 2
		if num % 2 == 0
			return false
		end
	end
	if num != 3
		if num % 3 == 0
			return false
		end
	end
	if num != 5
		if num % 5 == 0
			return false
		end
	end
	if num != 7
		if num % 7 == 0
			return false
		end
	
	end
	if num != 13
		if num % 13 == 0
			return false
		end
	end
	return true 
end

def largest_prime_factor(num)
	prime_factors = Array.new
	all_factors = factors(num)
	all_factors.each do |x|
		if prime(x) == true
			prime_factors << x 
		end
	end
	prime_factors.sort.last
end


puts largest_prime_factor(600)




