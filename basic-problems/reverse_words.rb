# Reverse Words
# Write a method reverse_words that takes in a sentence string and returns the sentence with the order of the characters in each word reversed.
# Note that we need to reverse the order of characters in the words, do not reverse the order of words in the sentence.

def reverse_words(sentence)
new_sentence = []

sentence.split(" ").each do |word|
    rev_word = ""
    word.each_char {|char|  rev_word = char + rev_word  } 
    new_sentence << rev_word
end

new_sentence.join(" ")
end

 puts reverse_words('keep coding') # => 'peek gnidoc'
 puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'