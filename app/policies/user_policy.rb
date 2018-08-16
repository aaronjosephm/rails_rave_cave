class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def warehouses?
    user == user
  end

  def create?
    return true
  end

  def profile?
    true
  end

  def warehouses?
    user == user
  end
end
