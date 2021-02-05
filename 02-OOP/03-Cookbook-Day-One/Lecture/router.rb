class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    @continue = true
    while @continue
      display_actions
      user_choice
      dispatch_action
    end
  end

  private

  def display_actions
    puts "\n\n\n"
    puts "1 - List tasks"
    puts "2 - Create a task"
    puts "3 - Mark as done a task"
    puts "4 - Remove a task"
    puts "5 - Quit"
  end

  def user_choice
    puts ""
    print '> '
    @choice = gets.chomp.to_i
  end

  def dispatch_action
    system("cls") || system("clear")
    case @choice
    when 1 then @controller.list
    when 2 then @controller.create
    when 3 then @controller.mark_as_done
    when 4 then @controller.destroy
    when 5 then @continue = false
    end
  end

end

