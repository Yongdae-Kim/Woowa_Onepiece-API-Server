class BusStopsController < ApplicationController
  before_action :set_bus_stop, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @bus_stops = BusStop.all
    respond_with(@bus_stops)
  end

  def show
    respond_with(@bus_stop)
  end

  def new
    @bus_stop = BusStop.new
    respond_with(@bus_stop)
  end

  def edit
  end

  def create
    @bus_stop = BusStop.new(bus_stop_params)
    @bus_stop.save
    respond_with(@bus_stop)
  end

  def update
    @bus_stop.update(bus_stop_params)
    respond_with(@bus_stop)
  end

  def destroy
    @bus_stop.destroy
    respond_with(@bus_stop)
  end

  private

  def set_bus_stop
    @bus_stop = BusStop.find(params[:id])
  end

  def bus_stop_params
    params.require(:bus_stop).permit(
      :bus_stop_id, :bus_stop_nm, :bus_stop_addr,
      :bus_stop_lat, :bus_stop_lng)
  end
end
