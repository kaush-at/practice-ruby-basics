# Abbreviate Sentence
# Write a method abbreviate_sentence that takes in a sentence string and returns a new sentence where every 
# word longer than 4 characters has all of it's vowels removed.

def abbreviate_sentence(sentence)
    vowels ="aeiou"
    new_word = ""
    
    sentence.split(" ").each do |word| 
        word.each_char do |char| 
            if vowels.include?(char) && word.length > 4
                char = ""
            end
            new_word += char 
        end
        new_word += " "
    end

    new_word
end


puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"