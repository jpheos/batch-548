class CustomersView
  def display_all(customers)
    customers.each_with_index do |customer, index|
      puts "#{index + 1} - #{customer.name}"
    end
  end

  def ask_for_name
    puts "name ?"
    print '> '
    gets.chomp
  end

  def ask_for_address
    puts "name ?"
    print '> '
    gets.chomp
  end
end
