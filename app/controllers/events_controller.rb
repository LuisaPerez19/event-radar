class EventsController < ApplicationController
  def index
    if params[:query].present?
      @events = Event.search_by_name_and_category(params[:query])
      @markers = @events.geocoded.map do |event|
        {
          lat: event.latitude,
          lng: event.longitude
        }
      end
    else
      @events = Event.all
      @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude
      }
      end
    end
  end

  def show
    @event = Event.find(params[:id])
    # @review = Review.new
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
    params.require(:event).permit(:name, :price, :description, :category, photos: [])
  end
end
