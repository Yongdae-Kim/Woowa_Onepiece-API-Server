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

    def imgs
      @imgs = Ad.find(params[:id]).imgs
      respond_with(@imgs)
    end

    private

    def not_found
      head status: :not_found
    end
  end
end
