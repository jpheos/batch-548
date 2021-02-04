require 'amazing_print'

class Butler
  def initialize(house)
    @house = house # We want @house to store an instance of House
  end

  def clean_house
    puts "#{@house.name} cleaned!"
  end
end

class House
  attr_reader :name, :butler
  attr_writer :butler

  def initialize(name)
    @name = name
    @butler = Butler.new(self)
  end
end

house = House.new("maison")

# class Castle
#   def initialize(name, ruler)
#     @name, @ruler = name, ruler
#   end

#   def castle_details
#     ap ruler_name
#     "#{@name} is ruled by #{ruler_name}"
#   end

#   def ruler_name
#     @ruler.capitalize
#   end
# end


# dragonstone = Castle.new("Dragonstone", "targaryen")
# ap dragonstone
# ap dragonstone.castle_details

# puts "


# "

# toto = Castle.new("toto", "tata")
# ap toto
# ap toto.castle_details
