# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :index, Event
    can :show, Event, user
  end
end
