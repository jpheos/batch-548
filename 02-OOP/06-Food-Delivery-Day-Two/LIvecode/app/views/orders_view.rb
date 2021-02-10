class OrdersView
  def display_all(orders)
    orders.each_with_index do |order, index|
      puts "#{index + 1} - #{order.meal.name} - #{order.employee.username} - #{order.customer.name}"
    end
  end

  def ask_for_index
    puts "Index ?"
    print '> '
    gets.chomp.to_i - 1
  end
end
