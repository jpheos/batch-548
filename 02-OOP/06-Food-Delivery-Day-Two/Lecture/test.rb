require_relative 'app/repositories/meal_repository'


meal_repo = MealRepository.new('data/meals.csv')

new_meal = Meal.new(name: 'salade', price: 3)
p new_meal.id

meal_repo.create(new_meal)

p new_meal
p new_meal.id
