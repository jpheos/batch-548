class SessionsView
  def ask_for_username
    puts "username ?"
    print '> '
    gets.chomp
  end

  def ask_for_password
    puts "password ?"
    print '> '
    # To Do: ne pas afficher ce que l'utilisateur tape
    gets.chomp
  end

  def wrong_credentials
    puts 'Wrong credentials. Try again...'
  end
end
