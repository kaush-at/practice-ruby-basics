# Caesar Cipher
# Write a method caesar_cipher that takes in a string and a number. The method should return a new string 
# where every character of the original is shifted num characters in the alphabet.

def caesar_cipher(str, num)
    alphabet = ("a".."z").to_a
    new_arr = []
    
    str.each_char do |char|
        old_index = alphabet.index(char)
        new_index = (old_index + num) % 26
        new_arr << alphabet[new_index]
    end
    new_arr.join("")
end

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"