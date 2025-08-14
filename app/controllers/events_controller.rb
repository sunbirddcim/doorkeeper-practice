class EventsController < ApplicationController
  before_action :set_event, only: %i[ destroy show ]

  # GET /events
  def index
    @events = Event.all
  end

  def show; end

  # DELETE /events/1
  def destroy
    @event.destroy!
    redirect_to events_url, notice: "Event was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.require(:event).permit(:json_content)
    end
end
