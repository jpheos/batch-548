require 'amazing_print'

class Building
  attr_reader :name, :width, :length
  def initialize(name, width, length)
    @name = name.upcase
    @width, @length = width, length
  end

  def floor_area
    ap "je suis dans floor_area Building"
    @width * @length * 0.8
  end
end

class House < Building
end

class Skyscraper
end

class Castle < Building
  attr_accessor :butler

  def has_a_butler?
    @butler != nil
  end

  def floor_area
    super + 300
  end
end

h1 = House.new("house1", 20, 30)
h2 = House.new("house2", 40, 50)
c1 = Castle.new("castle1", 300, 500)

# ap h1
# ap h2
# ap c1

# c1.butler = "toto"
# h2.butler = "toto"


ap h1.floor_area

ap "----------------------------"

ap c1.floor_area




