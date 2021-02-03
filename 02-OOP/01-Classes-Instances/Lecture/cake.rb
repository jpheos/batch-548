require 'amazing_print'

class Cake

  def initialize
    @weight_in_grams = 500
  end

  def eat_100g
    @weight_in_grams -= 100
  end

end

# text = "toto"
# =
# text = String.new("toto")

my_cake = Cake.new

ap my_cake

my_cake.eat_100g

ap my_cake
