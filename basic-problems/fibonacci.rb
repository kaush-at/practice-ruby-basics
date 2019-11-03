# Fibonacci
# The fibonacci sequence is a sequence of numbers whose first and second elements are 1. 
# To generate further elements of the sequence we take the sum of the previous two elements. 
# For example the first 6 fibonacci numbers are 1, 1, 2, 3, 5, 8. Write a method fibonacci that takes in
# a number length and returns the fibonacci sequence up to the given length.

def fibonacci(length)
    if length == 1
        return [1]
    end
    if length == 0
        return []
    end
    fib_arr = [1,1]
    while fib_arr.length < length
        new_fib = fib_arr[-1] + fib_arr[-2]
        fib_arr << new_fib
    end

    fib_arr
end


print fibonacci(0) # => []
puts
print fibonacci(1) # => [1]
puts
print fibonacci(6) # => [1, 1, 2, 3, 5, 8]
puts
print fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]
puts