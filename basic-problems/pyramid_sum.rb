# Pyramid Sum
# Write a method pyramid_sum that takes in an array of numbers representing the base of a pyramid. 
# The function should return a 2D array representing a complete pyramid with the given base. 
# To construct a level of the pyramid, we take the sum of adjacent elements of the level below.

def pyramid_sum(base)
    two_d_arr = [base]
    sub_arr = []
    while two_d_arr.length < base.length
        i = 0
        sub_arr = []
        while i < two_d_arr[0].length - 1
            sub_arr << two_d_arr[0][i] + two_d_arr[0][i+1]
            i += 1
        end
       two_d_arr.unshift(sub_arr)
    end
    two_d_arr
end

print pyramid_sum([1, 4, 6]) #=> [[15], [5, 10], [1, 4, 6]]
puts

print pyramid_sum([3, 7, 2, 11]) #=> [[41], [19, 22], [10, 9, 13], [3, 7, 2, 11]]
puts