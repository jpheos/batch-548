require_relative '../views/sessions_view'

class SessionsController
  def initialize(employee_repository)
    @employee_repository = employee_repository
    @view = SessionsView.new
  end

  def sign_in
    # ask username
    username = @view.ask_for_username
    # ask password
    password = @view.ask_for_password
    employee = @employee_repository.find_by_username(username)
    return employee if employee && (password == employee.password)

    @view.wrong_credentials
    sign_in
  end
end
