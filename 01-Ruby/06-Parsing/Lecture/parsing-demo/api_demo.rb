require 'amazing_print'
require 'json'
require 'open-uri'

# TODO - Let's fetch name and bio from a given GitHub username


puts "Enter your github usrname:"
print '> '
username = gets.chomp


url = "https://api.github.com/users/#{username}"


json = URI.open(url).read

data = JSON.parse(json)

ap data['name']

