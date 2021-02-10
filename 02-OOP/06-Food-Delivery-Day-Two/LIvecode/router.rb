# TODO: implement the router of your app.

class Router
  def initialize(meals_controller, customers_controller, sessions_controller, orders_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @sessions_controller = sessions_controller
    @orders_controller = orders_controller
    @running = true
  end

  def run
    puts "Welcome to the Food Delivery!"
    puts "           --           "

    @current_user = @sessions_controller.sign_in

    while @running
      if @current_user.role == 'rider'
        display_tasks_rider
        action = gets.chomp.to_i
        print `clear`
        route_action_rider(action)
      else
        display_tasks_manager
        action = gets.chomp.to_i
        print `clear`
        route_action_manager(action)
      end
    end
  end

  private

  def route_action_manager(action)
    case action
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add
    when 3 then @customers_controller.list
    when 4 then @customers_controller.add
    when 5 then @orders_controller.add
    when 6 then @orders_controller.list_undelivered_orders
    when 7 then stop
    else
      puts "Please press 1, 2, 3, 4, 5 or 6"
    end
  end

  def stop
    @running = false
  end

  def display_tasks_manager
    puts ""
    puts "What do you want to do next?"
    puts "1 - List all meals"
    puts "2 - Create a new meal"
    puts "3 - List all customers"
    puts "4 - Create a new customer"
    puts "5 - Add an order"
    puts "6 - List undelivered orders"

    puts "7 - Stop and exit the program"
  end

  def route_action_rider(action)
    case action
    when 1 then @orders_controller.list_my_orders(@current_user)
    when 7 then stop
    else
      puts "Please press 1, 2, 3, 4, 5 or 6"
    end
  end

  def display_tasks_rider
    puts ""
    puts "What do you want to do next?"
    puts "1 - List my orders"

    puts "7 - Stop and exit the program"
  end
end
