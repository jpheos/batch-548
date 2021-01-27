beatles = ["john", "ringo", "seb"]


beatles.each_with_index do |beatle, index|
  puts "#{index + 1} - #{beatle}"
end
