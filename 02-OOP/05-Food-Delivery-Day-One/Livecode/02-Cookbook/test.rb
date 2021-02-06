require 'amazing_print'

require_relative 'lib/recipe'
require_relative 'lib/cookbook'
require_relative 'lib/controller'


recipe = Recipe.new("glace", "vanille")

# ap r1.name
# ap r1.description


cookbook = Cookbook.new('lib/recipes.csv')


controller = Controller.new(cookbook)


controller.destroy
