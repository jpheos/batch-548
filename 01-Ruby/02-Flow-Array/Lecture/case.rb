puts "What do you want to do?"
action = gets.chomp

# case action
# when "read"
#   puts "You are in READ mode"
# when "write"
#   puts "You are in WRITE mode"
# when "exit"
#   puts "Bye Bye"
# else
#   puts "Wrong action"
# end


case action
when "exit" then  puts "Bye Bye"
when "read" then  puts "You are in READ mode"
when "write" then puts "You are in WRITE mode"
else
  puts "Wrong action"
end
