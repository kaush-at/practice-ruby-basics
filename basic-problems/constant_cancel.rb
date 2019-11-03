# Consonant Cancel
# Write a method consonant_cancel that takes in a sentence and returns a new sentence where every word begins with it's first vowel.
def consonant_cancel(sentence)
    vowel = "aeiou"
    new_arr = []
    sentence.split(" ").each do |word|
        word.each_char.with_index do |char, i|
            if vowel.include?(char)
                new_word = word[i..-1]
                new_arr << new_word
                break
            end
        end
    end
    new_arr.join(" ")
end

puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"