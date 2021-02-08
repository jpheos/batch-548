require_relative 'view'
require_relative 'recipe'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    recipes = @cookbook.all
    @view.display(recipes)
  end

  def create
    name = @view.ask_name
    description = @view.ask_description
    rating = @view.ask_rating
    recipe = Recipe.new(name, description, rating)
    @cookbook.add_recipe(recipe)
  end

  def destroy
    list
    index = @view.ask_index
    @cookbook.remove_recipe(index)
  end

  def import
    ingredient = @view.ask_ingredient
    @view.importing(ingredient)
    recipes = ScrapeAllrecipesService.new(ingredient).call
    @view.display(recipes)
    index = @view.ask_index
    recipe = recipes[index]
    @cookbook.add_recipe(recipe)
  end

  def mark_as_done
    ap "je suis dans #{__method__}"
    recipes = @cookbook.all
    @view.display(recipes)
    index = @view.ask_index
    recipe = recipes[index]
    recipe.mark_as_done!
    @cookbook.save
  end

end
