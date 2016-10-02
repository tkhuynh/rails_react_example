class Api::EventsController < ApplicationController
	def index
		render json: Event.all.order("created_at DESC")
	end

	def create
		event = Event.new(event_params)
		if event.save
			render json: event
		else
			render nothing: true, status: :bad_request
		end
	end

	def search
    query = params[:query]
    events = Event.where('name ILIKE ? OR place ILIKE ? OR description ILIKE ?',
                         "%#{query}%", "%#{query}%", "%#{query}%")
    render json: events
  end

  private

  def event_params
  	params.require(:event).permit(:name, :description, :event_Date, :place)
  end

end