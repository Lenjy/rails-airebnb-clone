class ReviewPolicy < ApplicationPolicy
    class Scope < Scope
      def resolve
        scope.all
      end
    end
  
    def create?
        return Location.find_by(shoe: record.shoe, user: user)
    end
  
    def destroy?
      create?
    end
  end