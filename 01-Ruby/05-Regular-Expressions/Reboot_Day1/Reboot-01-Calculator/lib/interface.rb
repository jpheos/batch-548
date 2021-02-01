require_relative 'calculator'


# TODO: you can build your calculator program here!

# on affiche un message pour demander a l utilisateur de rentrer un nombre
# on enregistre sa saisie dans une variable first_number (on veut bien un entier!)
# on affiche un deuxième message pour demander a l utilisateur de rentrer un nombre
# on enregistre second_number
# on lui demande l opérateur parmi une liste qu'on lui montre
# on enregistre sa saisie dans une variable operator (STRING)

# on définie une méthode qui fait le calcul
# calculate(first_number:Integer, operator:String, second_number: Interger )

# on appelle la methode avec les bons arguments, et on enregistre son retour dans une variable result


# on affiche le resultat


def do_calcul
  puts "> Enter a first number:"
  print '> '
  first_number = gets.chomp.to_i
  puts "> Enter a second one:"
  print '> '
  second_number = gets.chomp.to_i
  puts "> Choose operation [+][-][*][/]"
  print ">"
  operator = gets.chomp
  result = calculate(first_number, operator, second_number)
  puts "> Result: #{result}"
end


# # continue = true
# response = 'Y'

# while response == 'Y'
#   do_calcul
#   puts "Do you want to calculate again? [Y/N]"
#   print '> '
#   response = gets.chomp.upcase
#   # continue = response == 'Y'
# end

def continue?
  puts "Do you want to calculate again? [Y/N]"
  print '> '
  response = gets.chomp.upcase
  response == 'Y'
end


continue = true

while continue
  do_calcul
  continue = continue?
end

puts "je sors"
