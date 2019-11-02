# Write a method sum_nums(max) that takes in a number max and returns the sum of all numbers from 1 up to and including max.

def sum_nums(max)
    # Now, in Ruby 2.4.0 you can use Enumerable#sum ex/ (4..9).sum
    # { 1 => 10, 2 => 20 }.sum {|k, v| k * v }  #=> 50
    # (1..10).sum                               #=> 55
    # (1..10).sum {|v| v * 2 }                  #=> 110
    (1..max).sum
    # You can use Enumerable methods on Range objects, in this case use Enumerable#inject:
    (1..max).inject(:+)
end


puts sum_nums(4) # => 10, because 1 + 2 + 3 + 4 = 10
puts sum_nums(5) # => 15