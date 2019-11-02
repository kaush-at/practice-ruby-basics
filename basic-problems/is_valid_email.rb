# Is Valid Email
# Write a method is_valid_email that takes in a string and returns a boolean indicating whether or not it is a valid email address.
# For simplicity, we'll consider an email valid when it satisfies all of the following:
# - contains exactly one @ symbol
# - contains only lowercase alphabetic letters before the @
# - contains exactly one . after the @

def is_valid_email(email)
    email_arr = email.split("@")
    alpha = ("a".."z").to_a
    if email_arr.length == 2 && email_arr[0] == email_arr[0].downcase &&  email_arr[1].split(".").length == 2
        email_arr[0].each_char {|char| return false if !alpha.include?(char)}
        return true
    else
        return false
    end
end

puts is_valid_email("abc@x.yz")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@Email")         # => false