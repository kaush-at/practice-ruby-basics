# Is Palindrome
# Write a method is_palindrome(word) that takes in a string word and returns the true if the word is a palindrome, false otherwise. 
# A palindrome is a word that is spelled the same forwards and backwards.

def is_palindrome(word)
    new_arr = []
    word.split("").each{|char| new_arr.unshift(char)}
    new_arr.join("") == word
end

puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false