# string = "The 12 quick brown foxes jumped over the 10 lazy dogs."

# p string =~ /jumped/

# p string =~ /Z/i ? "Valid" : "Invalid" 

# p string.to_enum(:scan, /\d+/).map {Regexp.last_match}

# VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i


# def is_vaild_email? email
#   email =~ VALID_EMAIL_REGEX
# end

# p is_vaild_email?("jj@g.com") ? "Valid" : "Invalid"
# p is_vaild_email?("jjg.com") ? "Valid" : "Invalid"
# p is_vaild_email?("jj@gcom") ? "Valid" : "Invalid"
# p is_vaild_email?("jj@g.") ? "Valid" : "Invalid"

# IP_ADDRESS_REGEX = /^((?:(?:^|\.)(?:\d|[1-9]\d|1\d{2}|2[0-4])){4})$/

# def is_valid_ip? ip
#   ip =~ IP_ADDRESS_REGEX
# end

# p is_valid_ip?("172.16.0.0") ? "Valid" : "Invalid"

starting_sentence = "Hi from matching land"
snetence_array = starting_sentence.split("").map(&:downcase)
account_count = snetence_array - [" "]
final_sentence = starting_sentence.gsub(/[a-zA-Z]/, "_").split("")

while snetence_array.count("") < account_count.count

  puts "Guess a letter"

  guess = gets.downcase.chomp!

  if snetence_array.include?(guess)
    letter_index = snetence_array.find_index(guess)
    snetence_array[letter_index] = ""
    final_sentence[letter_index] = guess
    puts "Correct! The sentence is now: #{final_sentence.join}"
  else
    puts "Sorry, that letter isn't the right answer, please try again."
  end  
end
