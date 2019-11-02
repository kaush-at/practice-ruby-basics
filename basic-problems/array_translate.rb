# Array Translate
# Write a method array_translate that takes in an array whose elements alternate between words and numbers. 
# The method should return a string where each word is repeated the number of times that immediately follows in the array.

def array_translate(array)
    new_str = ""
    i = 0
    while i < array.length - 1
         array[i+1].times{new_str += array[i]}
        i += 2
    end
    new_str
end

print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1]); # => "redredredblue"