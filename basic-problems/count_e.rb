#Write a method count_e(word) that takes in a string word and returns the number of e's in the word

# puts count_e("movie") # => 1
# puts count_e("excellent") # => 3


def count_e(word)
    # count = 0
    # word.each_char{|char| count +=1 if char == "e"}
    # count
    word.split("").count{|char| char =="e"}
end

puts count_e("movie") # => 1
puts count_e("excellent") # => 3