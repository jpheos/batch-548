class View
  def display(recipes)
    recipes.each_with_index do |recipe, index|
      done = recipe.done ? 'X' : ' '
      puts "#{index + 1} - [#{done}] #{recipe.name} | #{recipe.description}  (#{recipe.rating} / 5)"
    end
  end

  def ask_name
    puts "Enter name:"
    print '> '
    gets.chomp
  end

  def ask_description
    puts "Enter description:"
    print '> '
    gets.chomp
  end

  def ask_rating
    puts "Enter rating:"
    print '> '
    gets.chomp.to_i
  end

  def ask_ingredient
    puts "What ingredient would you like a recipe for?"
    print '> '
    gets.chomp
  end

  def importing(ingredient)
    puts "
      Looking for \"#{ingredient}\" recipes on the Internet...

    "
  end

  def ask_index
    puts "Enter choice:"
    print '> '
    gets.chomp.to_i - 1
  end
end
