require 'amazing_print'


class Castle
  attr_reader :name, :width, :length
  attr_accessor :butler

  def initialize(name, width, length)
    @name = name.upcase
    @width, @length = width, length
  end

  def floor_area
    ap "je suis dans floor_area Building"
    @width * @length
  end

  def has_a_butler?
    @butler != nil
  end

  def self.categories
    ['Medieval', 'Norman', 'Ancient']
  end
end


c1 = Castle.new("castle1", 300, 500)


# ap c1.has_a_butler?

# ap c1.categories
