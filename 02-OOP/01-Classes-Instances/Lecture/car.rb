require 'pry-byebug'
require 'amazing_print'

class Car
  attr_reader :color

  def initialize(color)
    @engine_started = false
    @color = color
  end

  def engine_started?
    return @engine_started
  end

  def start_engine
    @engine_started = true
  end
end

# class Array
#   def join
#   end
# end

# [1,2,3].join


puts
puts

my_car = Car.new('black')
your_car = Car.new('white')


ap my_car.engine_started?
my_car.start_engine

puts my_car.engine_started?


my_car.color # => 'black'
my_car.color = 'yellow'
