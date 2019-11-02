# Ae Count
# Write a method ae_count that takes in a string and returns a hash containing the number of a's and e's in the string. 
# Assume the string contains only lowercase characters.

def ae_count(string)
    hash =Hash.new(0)
    string.each_char{|char| hash[char] += 1 if char == "e" || char == "a"}
    hash
end

puts ae_count("everyone can program") #=> {"a"=>2, "e"=>3}
puts ae_count("keyboard") #=> {"a"=>1, "e"=>1}