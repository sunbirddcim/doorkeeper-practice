# frozen_string_literal: true

module Api::V1
  class EventsController < ApiController
    before_action(only: %i[ create ]) { doorkeeper_authorize! :write }
    before_action :set_event, only: %i[ show edit update destroy ]

    # GET /events
    def index
      @events = Event.all
      render json: { events: @events }
    end

    # POST /events
    def create
      Rails.logger.debug("[#{request.uuid}] got access-token: #{request.authorization.split.second}")
      @event = Event.new(json_content: event_params.to_json)

      if @event.save
        render json: { event: @event }
      else
        render json: { errors: @event.errors }, status: :unprocessable_entity
      end
    end

    private
    # Only allow a list of trusted parameters through.
    def event_params
      params.require(:event)
        # .permit(:json_content)
    end
  end
end
