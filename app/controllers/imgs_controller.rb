class ImgsController < ApplicationController
  before_action :set_img, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @imgs = Img.all
    respond_with(@imgs)
  end

  def show
    respond_with(@img)
  end

  def new
    @img = Img.new
    respond_with(@img)
  end

  def edit
  end

  def create
    @img = Img.new(img_params)
    @img.save
    respond_with(@img)
  end

  def update
    @img.update(img_params)
    respond_with(@img)
  end

  def destroy
    @img.destroy
    respond_with(@img)
  end

  private

  def set_img
    @img = Img.find(params[:id])
  end

  def img_params
    params.require(:img).permit(
      :img_fname_user, :img_fname_server, :img_size,
      :img_path_root, :img_path_up, :img_path_dn, :ad_id
    )
  end
end
