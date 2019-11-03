# Prime
# Write a method prime? that takes in a number and returns a boolean, indicating whether the number is prime. 
# A prime number is only divisible by 1 and itself.

def prime?(num)
    return false if num < 2
    # p (2...2).to_a   => [] the the array you are iterating through is empty. this is how it works for if it would number 2
    # (2..5) => [2, 3, 4, 5]
    #p (5..5).to_a  => [5]
    (2...num).none?{|i| num % i == 0}
end


puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false