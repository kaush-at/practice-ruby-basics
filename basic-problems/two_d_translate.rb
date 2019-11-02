# Two D Translate
# Write a method two_d_translate that takes in a 2 dimensional array and translates it into a 1 dimensional array. 
# You can assume that the inner arrays always have 2 elements. See the examples.

def two_d_translate(array)
    new_arr = []
    array.each do |arr|
        arr[1].times {new_arr << arr[0]}
    end
    new_arr
end

arr_1 = [
  ['boot', 3],
  ['camp', 2],
  ['program', 0]
]

print two_d_translate(arr_1) # => [ 'boot', 'boot', 'boot', 'camp', 'camp' ]
puts

arr_2 = [
  ['red', 1],
  ['blue', 4]
]

print two_d_translate(arr_2) # => [ 'red', 'blue', 'blue', 'blue', 'blue' ]
puts