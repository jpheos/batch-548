


# def timer
#   puts "je suis au début de timer"
#   start_time = Time.now
#   yield
#   end_time = Time.now
#   puts "time: #{end_time - start_time}"
#   puts "je suis à la fin timer"
# end


# timer do
#   puts "je suis au début block"
#   puts sleep(3)
#   puts "je suis à la fin du block"
# end

# p "--------------------------------------------"


# timer do
#   puts "je fais un autre taff"
#   puts sleep(2)
# end


# def greet(first_name, last_name)
#   full_name = "#{first_name.capitalize} #{last_name.upcase}"
#   return "Hello, #{full_name}"
# end

# def bonjour(first_name, last_name)
#   full_name = "#{first_name.capitalize} #{last_name.upcase}"
#   return "Bonjour, #{full_name}"
# end

# puts greet('john', 'lennon')
# puts bonjour('john', 'lennon')


def beautify_name(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.upcase}"
  yield(full_name)
end


john = 'john'


puts beautify_name(john, 'lennon') { |fn| "Hello, #{fn}" }

