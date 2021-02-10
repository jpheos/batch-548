require 'csv'
require_relative '../models/order'
require_relative 'base_repository'

class OrderRepository < BaseRepository
  def initialize(csv_file, meal_repository, customer_repository, employee_repository)
    @meal_repository = meal_repository
    @customer_repository = customer_repository
    @employee_repository = employee_repository

    super(csv_file)
  end

  def undelivered_orders
    @elements.select do |element|
      element.delivered? == false
    end
  end

  private

  def row_to_element(row)
    row[:delivered] = row[:delivered] == 'true'
    row[:meal] = @meal_repository.find(row[:meal_id].to_i)
    row[:customer] = @customer_repository.find(row[:customer_id].to_i)
    row[:employee] = @employee_repository.find(row[:employee_id].to_i)

    # how row loks like
    # row = {
    #   id: 1
    #   delivered: false
    #   meal_id: 1
    #   customer_id: 1
    #   employee_id: 2
    #   meal: instance de meal
    #   customer: instance de customer
    # }

    Order.new(row)
  end

  def csv_headers
    ['id', 'delivered', 'meal_id', 'customer_id', 'employee_id']
  end

  def element_to_row(element)
    [element.id, element.delivered?, element.meal.id, element.customer.id, element.employee.id]
  end
end
