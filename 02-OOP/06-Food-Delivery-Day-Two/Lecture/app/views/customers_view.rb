class CustomersView
  def display_all(customers)
    customers.each do |customer|
      puts "#{customer.id} - #{customer.name}"
    end
  end

  def ask_for_name
    puts "name ?"
    print '> '
    gets.chomp
  end
end
