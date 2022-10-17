class FavoritePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(user:)
    end
  end

  def create?
    user.present?
  end

  def destroy?
    user.present?
  end
end
