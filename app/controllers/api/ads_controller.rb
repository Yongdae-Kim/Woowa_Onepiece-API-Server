module Api
  class AdsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found

    respond_to :json

    def index
      @ads = Ad.includes(:ad_det).all
      respond_with(@ads)
    end

    def show
      @ad = Ad.find(params[:id])
      respond_with(@ad)
    end

    def bus_stop_ad
      @ad = BusStop.find(params[:bus_stop_id]).ads.find(params[:id])
      respond_with(@ad)
    end

    def bus_stop_ads
      @ads = BusStop.find(params[:bus_stop_id]).ads
      respond_with(@ads)
    end

    private

    def not_found
      head status: :not_found
    end
  end
end
