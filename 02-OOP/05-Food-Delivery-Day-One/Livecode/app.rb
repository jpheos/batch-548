# TODO: require relevant files to bootstrap the app.
# Then you can test your program with:
#   ruby app.rb


require_relative 'app/repositories/meal_repository'
require_relative 'app/repositories/customer_repository'
require_relative 'app/controllers/meals_controller'
require_relative 'app/controllers/customers_controller'
require_relative 'router'

csv_file_meals = File.join(__dir__, 'data/meals.csv')
meal_repository = MealRepository.new(csv_file_meals)
meals_controller = MealsController.new(meal_repository)

csv_file_customers = File.join(__dir__, 'data/customers.csv')
customer_repository = CustomerRepository.new(csv_file_customers)
customers_controller = CustomersController.new(customer_repository)

router = Router.new(meals_controller, customers_controller)

# Start the app
router.run
