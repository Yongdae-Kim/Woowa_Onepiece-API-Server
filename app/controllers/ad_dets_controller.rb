class AdDetsController < ApplicationController
  before_action :set_ad_det, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @ad_dets = AdDet.all
    respond_with(@ad_dets)
  end

  def show
    respond_with(@ad_det)
  end

  def new
    @ad_det = AdDet.new
    respond_with(@ad_det)
  end

  def edit
  end

  def create
    @ad_det = AdDet.new(ad_det_params)
    @ad_det.save
    respond_with(@ad_det)
  end

  def update
    @ad_det.update(ad_det_params)
    respond_with(@ad_det)
  end

  def destroy
    @ad_det.destroy
    respond_with(@ad_det)
  end

  private

  def set_ad_det
    @ad_det = AdDet.find(params[:id])
  end

  def ad_det_params
    params.require(:ad_det).permit(
      :ad_det_lng, :ad_det_lat, :ad_det_ct1,
      :ad_det_ct2, :ad_id, :ad_det_addr
    )
  end
end
