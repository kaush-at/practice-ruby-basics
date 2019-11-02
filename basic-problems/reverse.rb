# Reverse
# Write a method reverse(word) that takes in a string word and returns the word with its letters in reverse order.

def reverse(word)
    new_arr = []
    word.split("").each{|char| new_arr.unshift(char)  }
    new_arr.join("")
end


puts reverse("cat")          # => "tac"
puts reverse("programming")  # => "gnimmargorp"
puts reverse("bootcamp")     # => "pmactoob"