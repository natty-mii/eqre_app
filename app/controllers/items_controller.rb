class ItemsController < ApplicationController
  def index
    @items = Item.all
    @events = Event.select("program_name")
  end

  def show

  end
end
