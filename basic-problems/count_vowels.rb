# Count Vowels
# Write a method, count_vowels(word), that takes in a string word and returns the number of vowels in the word. Vowels are the letters a, e, i, o, u.
def count_vowels(word)
    vowels ="aeiou"
    word.split("").count{|char| vowels.include?(char)}
end
puts count_vowels("bootcamp")  # => 3
puts count_vowels("apple")     # => 2
puts count_vowels("pizza")     # => 2