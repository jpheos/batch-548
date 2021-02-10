require 'csv'
require_relative '../models/employee'
require_relative 'base_repository'

class EmployeeRepository < BaseRepository
  def find_by_username(username)
    @elements.find { |element| element.username == username }
  end

  private

  def row_to_element(row)
    Employee.new(row)
  end

  def csv_headers
    ['id', 'username', 'password', 'role']
  end

  def element_to_row(element)
    [element.id, element.username, element.password, element.role]
  end
end
