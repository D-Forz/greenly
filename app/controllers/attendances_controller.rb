class AttendancesController < ApplicationController
  before_action :set_event, only: %i[show destroy]

  def new
    @attendance = Attendance.new
    authorize @attendance
  end

  def create
    @attendance = Attendance.new(attendance_params)
    @attendance.user = current_user
    @attendance.event = @event
    authorize @attendance
    if @attendance.save
      redirect_to event_path(@attendance.event), notice: 'Attendance was successfully created.'
    else
      render 'events/show', status: :unprocessable_entity
    end
  end

  def destroy
    @attendance = Attendance.find(params[:id])
    @attendance.destroy
    authorize @attendance
    redirect_to event_path(@attendance.event), status: :see_other
  end

  private

  def attendance_params
    params.require(:attendance).permit(:user_id, :event_id)
  end
end
