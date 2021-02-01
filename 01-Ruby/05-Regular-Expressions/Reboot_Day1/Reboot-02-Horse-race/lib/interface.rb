require 'amazing_print'

# TODO: you can build your horse race program here!

HORSES = %w[toto titi tata]

puts "------------------"
puts "----- WELCOME ----"
puts "------------------"

puts ""

def play # return a boolean win or not?
  HORSES.each do |horse|
    puts "* #{horse}"
  end

  puts ""

  puts "you choice?"
  print '> '
  choice = gets.chomp
  winner = HORSES.sample


  puts "Race running..."
  # sleep(2)
  puts "The winner is: #{winner}"
  win = choice == winner
  puts win ? "You win!" : "You loose.."
  win
end

def continue?
  puts "Do you want to play again? [Y/N]"
  print '> '
  gets.chomp.upcase == 'Y'
end

continue = true
balance = 100

while continue

  balance -= 10
  balance += 50 if play
  # ########################
  # if play
  #   balance += 40
  # else
  #   balance -= 10
  # end
  # #######################@
  # balance += play ? 40 : -10

  if balance >= 10
    puts "Your balance: #{balance}€"
    continue = continue?
  else
    puts "Your balance is null"
    continue = false
  end
end
