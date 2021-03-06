class EventsController < ApplicationController

  before_action :authenticate_user!

  def index
    @events = current_user.events
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      AssignSecretSanta.new(@event).perform
      redirect_to root_path, notice: "Event created, emails to the participants are on their way"
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :amount, participants_attributes: [:id, :name, :email])
  end
end
