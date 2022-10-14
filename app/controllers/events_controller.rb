class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]
  before_action :set_event, only: %i[show edit update destroy]
  def index
    @events = policy_scope(Event).order(created_at: :desc)
  end

  def show
    @attendance = Attendance.new
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      redirect_to event_path(@event), notice: 'Event was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    @event.update(event_params)
    if @event.save
      redirect_to event_path(@event), notice: 'Event was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @event.destroy
    redirect_to events_path, status: :see_other
  end

  private

  def set_event
    @event = Event.find(params[:id])
    authorize @event
  end

  def event_params
    params.require(:event).permit(:title, :description, :date, :time, :address)
  end
end
