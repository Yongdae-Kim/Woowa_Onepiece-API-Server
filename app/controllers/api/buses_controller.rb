module Api
  class BusesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found

    respond_to :json

    def index
      @buses = Bus
               .code(params[:code])
               .includes(:day_of_week)
               .all
      respond_with(@buses)
    end

    def show
      @bus = Bus.find(params[:id])
      respond_with(@bus)
    end

    private

    def not_found
      head status: :not_found
    end
  end
end
