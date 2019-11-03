# Greatest Factor Array
# Write a method greatest_factor_array that takes in an array of numbers and returns a new array where 
# every even number is replaced with it's greatest factor. A greatest factor is the largest number that divides another with no remainder. 
# For example the greatest factor of 16 is 8. (For the purpose of this problem we won't say the greatest factor of 16 is 16, because that would be too easy, ha)

def greatest_factor_array(array)
    new_arr = []
    array.each do |num|
        if num % 2 == 0
            # method 1 ------
            # new_arr << num / 2
            # method 2 ------------
            (2...num).reverse_each do |ele| 
                if num % ele == 0
                    new_arr << ele 
                    break
                end
            end
        else 
            new_arr << num
        end
    end

    new_arr
end

print greatest_factor_array([16, 7, 9, 14]) # => [8, 7, 9, 7]
puts
print greatest_factor_array([30, 3, 24, 21, 10]) # => [15, 3, 12, 21, 5]
puts