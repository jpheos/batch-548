require 'amazing_print'

if "hello" =~ /m{1}/
  puts "ça match!"
end


# match_data = "John Doe".match(/^(\w+) (\w+)$/)

# ap match_data
# ap match_data[0]
# ap match_data[1]
# ap match_data[2]
# ap match_data[3]


# match_data = "John Doe".match(/^(?<first_name>\w+) (?<last_name>\w+)$/)

# ap match_data
# ap match_data[0]
# ap match_data[:first_name]
# ap match_data[:last_name]
# ap match_data[3]


ap "Let's play tac tac toe".scan(/\bt..\b/)
