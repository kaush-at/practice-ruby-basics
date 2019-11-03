# Double Letter Count
# Write a method that takes in a string and returns the number of times that the same letter repeats twice in a row.

# def double_letter_count(str)     => this method not working for  "the jeeep rollelld down the hill"
#     count = 0
#     str.each_char.with_index do |char, i|
#         if str[i] == str[i + 1]
#             count += 1
#         end
#     end
#     count
#end
def double_letter_count(str)
    real_count = 0
    i = 0
    while i < str.length-1
        char = str[i]
        count = 0
        while str[i] == char
            count += 1
            i += 1
        end
        if count > 1
            real_count += 1
        end
    end

    real_count
end

puts double_letter_count("the jeep rolled down the hill") #=> 3
puts double_letter_count("boootcamp") #=> 1
