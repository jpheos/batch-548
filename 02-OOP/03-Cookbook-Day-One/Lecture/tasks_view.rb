class TasksView
  def ask_description
    puts "Enter a description:"
    print "> "
    gets.chomp
  end

  def display_all(tasks)
    tasks.each_with_index do |task, index|
      done = task.done? ? 'X' : ' '
      puts "#{index + 1} - [#{done}] #{task.description}"
    end
  end

  def ask_index
    puts "Enter a number:"
    print "> "
    gets.chomp.to_i - 1
  end
end
