# Element Replace
# Write a method element_replace that takes in an array and a hash. The method should return a new array where 
# elements of the original array are replaced with their corresponding values in the hash.

def element_replace(arr, hash)

    arr.each.with_index do |ele, i|
        hash.each{|k,v| ele == k ? arr[i] = v : arr[i] }
    end
    arr
end

arr1 = ["LeBron James", "Lionel Messi", "Serena Williams"]
hash1 = {"Serena Williams"=>"tennis", "LeBron James"=>"basketball"}
print element_replace(arr1, hash1) # => ["basketball", "Lionel Messi", "tennis"]
puts