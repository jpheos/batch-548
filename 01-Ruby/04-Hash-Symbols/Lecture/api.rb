require 'net/http'
require 'json'
require 'amazing_print'


ARGV.each do |user|
  base_url = "https://api.github.com/users/"
  url = URI(base_url + user)

  response = Net::HTTP.get(URI(url))

  # puts response

  hash = JSON.parse(response)

  puts hash["avatar_url"]
end
