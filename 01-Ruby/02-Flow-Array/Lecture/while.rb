# while true
#   puts "je suis dans la boucle"
# end

random_number = rand(1..5)
choice = 0

until choice == random_number # while choice != random_number
  puts "choose your number:"
  print '> '
  choice = gets.chomp.to_i
  p choice
end

puts "j'ai fini"
