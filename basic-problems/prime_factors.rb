# Prime Factors
# Write a method prime_factors that takes in a number and returns an array containing all of the prime factors of the given number.

def prime_factors(num)
    factor_array = (2...num).select{|i| num % i == 0} 
    
    factor_array.select {|factor| (2...factor).none?{|i| factor % i ==0 }} 
end


print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts