class View
  def display(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} - #{recipe.name} | #{recipe.description}"
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

  def ask_index
    puts "Enter choice:"
    print '> '
    gets.chomp.to_i - 1
  end
end
