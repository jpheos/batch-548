class EmployeesView
  def display_all(employees)
    puts 'All employees:'
    employees.each_with_index do |employee, index|
      puts "#{index + 1} - #{employee.username}"
    end
  end
end
