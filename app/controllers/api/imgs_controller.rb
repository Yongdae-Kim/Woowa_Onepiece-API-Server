module Api
  class ImgsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found

    respond_to :json

    def index
      @imgs = Img.all
      respond_with(@imgs)
    end

    def show
      @img = Img.find(params[:id])
      respond_with(@img)
    end

    def ads_imgs
      @imgs = Ad.find(params[:ad_id]).imgs
      respond_with(@imgs)
    end

    def ads_img
      @img = Ad.find(params[:ad_id]).imgs.find(params[:id])
      respond_with(@img)
    end

    private

    def not_found
      head status: :not_found
    end
  end
end
