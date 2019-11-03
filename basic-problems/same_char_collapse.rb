# Same Char Collapse
# Write a method same_char_collapse that takes in a string and returns a collapsed version of the string. 
# To collapse the string, we repeatedly delete 2 adjacent characters that are the same until there are no 
# such adjacent characters. If there are multiple pairs that can be collapsed, delete the leftmost pair. For example, 
# we take the following steps to collapse "zzzxaaxy": zzzxaaxy -> zxaaxy -> zxxy -> zy

def same_char_collapse(str)
    complete = true
    while complete
        complete = false
        arr = str.split("")
        arr.each.with_index do |char, i|
            if arr[i] == arr[i+1]
                arr[i] = ""
                arr[i+1] = ""
                complete = true
                break
            end
        end
        str = arr.join("")
    end
    str
end

puts same_char_collapse("zzzxaaxy")   #=> "zy"
# because zzzxaaxy -> zxaaxy -> zxxy -> zy


puts same_char_collapse("uqrssrqvtt") #=> "uv"
# because uqrssrqvtt -> uqrrqvtt -> uqqvtt -> uvtt -> uv