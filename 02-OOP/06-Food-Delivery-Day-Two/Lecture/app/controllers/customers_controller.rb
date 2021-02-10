require_relative '../views/customers_view'

class CustomersController
  def initialize(customer_repository)
    @customer_repository = customer_repository
    @view = CustomersView.new
  end

  def list
    customers = @customer_repository.all
    @view.display_all(customers)
  end

  def add
    name = @view.ask_for_name
    address = @view.ask_for_address
    new_customer = Customer.new(name: name, address: address)
    @customer_repository.create(new_customer)
  end
end
