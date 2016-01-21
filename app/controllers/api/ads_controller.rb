module Api
  class AdsController < ApplicationController
    before_action :set_bus_stop

    rescue_from ActiveRecord::RecordNotFound, with: :not_found

    respond_to :json

    def index
      @ads = (@bus_stop&.ads || Ad)
             .code(params[:code])
             .offset(params[:offset])
             .limit(params[:limit])
             .includes(:ad_det)
             .order(ad_start_dt: :desc)
             .all
      respond_with(@ads)
    end

    def show
      @ad = (@bus_stop&.ads || Ad)
            .find(params[:id])
      respond_with(@ad)
    end

    private

    def set_bus_stop
      @bus_stop = BusStop.find_by(id: params[:bus_stop_id])
    end

    def not_found
      head status: :not_found
    end
  end
end
