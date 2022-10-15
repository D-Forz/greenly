class EventPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def show?
    user.present?
  end

  def create?
    user_is_organizer?
  end

  def update?
    user_is_organizer?
  end

  def destroy?
    user_is_organizer?
  end

  private

  def user_is_organizer?
    record.user == user
  end
end
