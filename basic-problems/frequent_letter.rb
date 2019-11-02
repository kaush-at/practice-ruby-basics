# Frequent Letters
# Write a method frequent_letters that takes in a string and returns an array containing the characters that appeared more than twice in the string.

def frequent_letters(str)
    hash = Hash.new(0)
    res_arr = []
    str.each_char{|char| hash[char] += 1}
    hash.each{|k, v| res_arr << k if v > 2}
    res_arr
end

print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts