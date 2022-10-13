class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]
  def index
    @events = Event.all
  end
end
