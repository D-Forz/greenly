class EventPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def show?
    user
  end

  def create?
    user.organizer
  end

  def update?
    user.organizer
  end

  def destroy?
    user.organizer
  end
end
