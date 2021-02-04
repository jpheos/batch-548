class Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def talk
    "#{@name} #{shout}"
  end

  def eat(food)
    "#{@name} eats a #{food}"
  end

  def self.phyla
    %w[Deuterostomia Ecdysozoa Lophotrochozoa Radiata]
  end
end
