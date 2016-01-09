module Api
  class BusStopsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found

    respond_to :json

    def index
      @bus_stops = BusStop.all
      respond_with(@bus_stops)
    end

    def show
      @bus_stop = BusStop.find(params[:id])
      respond_with(@bus_stop)
    end

    def ads
      @ads = BusStop.find(params[:id]).ads
      respond_with(@ads)
    end

    private

    def not_found
      head status: :not_found
    end
  end
end
