class BookingsController < ApplicationController
  before_action :set_event, only: [:new, :create]

  def index
    @user = current_user
    @bookings = @user.bookings
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.event = @event
    @booking.user = current_user

    if @booking.save!
      redirect_to @booking, notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :event_id)
  end

  def set_event
    @event = Event.find(params[:event_id])
  end
end
