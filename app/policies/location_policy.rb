class LocationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def edit?
    return record.user == user || record.shoe.user == user
  end

  def update?
    edit?
  end

  def destroy?
    edit?
  end
end
