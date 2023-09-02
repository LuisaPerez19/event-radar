class EventsController < ApplicationController

    def index
        if params[:query].present?
        @events = Event.search_by_name_and_category(params[:query])
        else
        @events = Event.all
        end
    end
    
    def show
        @event = Event.find(params[:id])
        @review = Review.new
    end
    
    def new
        @event = Event.new
    end
    
    def create
        @event = Event.new(event_params)
        @event.user = current_user
        if @event.save
        redirect_to event_path(@event)
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
    
    private
    
    def event_params
        params.require(:event).permit(:name, :price, :description, :category, photos: [])
    end
    end
    
end
