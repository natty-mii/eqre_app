class EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def create
    @evnet = Event.new(event_params)
    if @evnet.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event)
          .permit(:program_name,
                  :start_year,
                  :start_month,
                  :start_day,
                  :end_year,
                  :end_month,
                  :end_day,
                  :place,
                  :manager_name,
                  :description).merge(user_id: current_user.id, item_id: 2)

  end
end
