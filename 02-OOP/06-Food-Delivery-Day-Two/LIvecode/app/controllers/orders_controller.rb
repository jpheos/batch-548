require_relative '../views/orders_view'
require_relative '../views/meals_view'
require_relative '../views/customers_view'
require_relative '../views/employees_view'

class OrdersController
  def initialize(meal_repository, customer_repository, employee_repository, order_repository)
    @order_repository = order_repository
    @meal_repository = meal_repository
    @customer_repository = customer_repository
    @employee_repository = employee_repository
    @orders_view = OrdersView.new
    @meals_view = MealsView.new
    @customers_view = CustomersView.new
    @employees_view = EmployeesView.new
  end

  def add
    # select meal
    # afficher les meals
    meals = @meal_repository.all
    @meals_view.display_all(meals)

    # demander un index à l'utilisateur
    index = @orders_view.ask_for_index

    # associer index à l'instance
    meal = meals[index]

    customers = @customer_repository.all
    @customers_view.display_all(customers)
    index = @orders_view.ask_for_index
    customer = customers[index]

    riders = @employee_repository.all_riders
    @employees_view.display_all(riders)
    index = @orders_view.ask_for_index
    rider = riders[index]

    new_order = Order.new(
      meal: meal,
      customer: customer,
      employee: rider
    )
    @order_repository.create(new_order)
  end

  def list_undelivered_orders
    undelivered_orders = @order_repository.undelivered_orders
    @orders_view.display_all(undelivered_orders)
  end

  def list_my_orders(current_user)
    orders = @order_repository.undelivered_orders.select do |order|
      order.employee == current_user
    end
    @orders_view.display_all(orders)
  end
end
