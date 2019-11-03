# Most Vowels
# Write a method most_vowels that takes in a sentence string and returns the word of the sentence that contains the most vowels.

def most_vowels(sentence)
    arr = [0,0]
    vowels ="aeiou"

    sentence.split(" ").each do |word| 
        count = 0
        word.each_char do |char|
            if vowels.include?(char)
                count += 1
            end
        end
        #hash[word] = count
        if arr[1] < count
            arr[0] = word
            arr[1] = count
        end
    end

    arr[0]
end

# hash = {"what" => 2, "wonderful" => 3}
# p hash.sort_by{|k,v| v}

print most_vowels("what a wonderful life") #=> "wonderful"