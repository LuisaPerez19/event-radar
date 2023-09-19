class EventsController < ApplicationController
  def index
    if params[:query].present?
      @events = Event.search_by_name_and_category(params[:query])
    else
      @events = Event.all
    end

    date = params[:start_date]
    if date.present?
      start_time = DateTime.parse(date).beginning_of_day
      end_time = DateTime.parse(date).end_of_day
      @events = @events.where(start_date: start_time..end_time)
    end

    @markers = @events.geocoded.map do |event|
    {
      lat: event.latitude,
      lng: event.longitude,
      info_window: render_to_string(partial: "popup", locals: {event: event})
    }
    end

    @event_count = @events.count
  end

  def show
    @event = Event.find(params[:id])
    @booking = Booking.new

    # Check if the event has geocoded data (latitude and longitude)
    if @event.latitude.present? && @event.longitude.present?
      @marker = {
        lat: @event.latitude,
        lng: @event.longitude,
      }
    else
      @marker = nil
    end

    # Other actions or data preparation for the show page...
  end


  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      redirect_to organiser_event_path(current_user)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to event_path(@event)
    else
      render :edit
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path, status: :see_other
  end

  def organiser
    @user = current_user
    @events = @user.events
  end

  private

  def event_params
    params.require(:event).permit(:name, :price, :description, :category, :location, :start_date, :end_date, photos: [])
  end
end
