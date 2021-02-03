require "pry-byebug"


array = (1..10).to_a


array.each do |number|
  binding.pry
end
