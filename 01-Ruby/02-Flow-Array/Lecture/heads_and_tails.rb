puts "Enter head or tail:"
print '> '
choice = gets.chomp

result = ['head', 'tail'].sample

status = result == choice ? "winner" : "looser"

puts "You are a #{status}"
