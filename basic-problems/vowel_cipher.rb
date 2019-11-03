# Vowel Cipher
# Write a method vowel_cipher that takes in a string and returns a new string where every vowel becomes the next vowel in the alphabet.

def vowel_cipher(string)
    vowels = "aeiou"
    new_arr = []
    string.each_char do |char|
        if vowels.include?(char)
            old_index = vowels.index(char)
            new_index = (old_index + 1)%5
            new_arr << vowels[new_index]
        else
            new_arr << char
        end
        
    end
    new_arr.join("")
end

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap