class MealsView
  def display_all(meals)
    meals.each_with_index do |meal, index|
      puts "#{index + 1} - #{meal.name} (#{meal.price} €)"
    end
  end

  def ask_for_name
    puts "name ?"
    print '> '
    gets.chomp
  end

  def ask_for_price
    puts "price ?"
    print '> '
    gets.chomp.to_i
  end
end
