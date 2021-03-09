class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.admin?
        scope.all
      else
        scope.where(user: user)
      end
    end
  end

  def create?
    true
  end

  def update?
    # user => current_user
    # record => restaurant
    record.user == user
  end

  def destroy?
    record.user == user || user.admin?
  end
end
