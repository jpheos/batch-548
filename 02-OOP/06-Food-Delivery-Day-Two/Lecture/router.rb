# TODO: implement the router of your app.

class Router
  def initialize(meals_controller, customers_controller, sessions_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @sessions_controller = sessions_controller
    @running = true
  end

  def run
    puts "Welcome to the Food Delivery!"
    puts "           --           "

    current_user = @sessions_controller.sign_in

    while @running

      if current_user.role == 'rider'
        display_tasks_rider
      else
        display_tasks_manager
      end
      action = gets.chomp.to_i
      print `clear`
      route_action(action)
    end
  end

  private

  def route_action_manger(action)
    case action
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add
    when 3 then @customers_controller.list
    when 4 then @customers_controller.add
    when 6 then stop
    else
      puts "Please press 1, 2, 3, 4 or 6"
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

    puts "6 - Stop and exit the program"
  end
end