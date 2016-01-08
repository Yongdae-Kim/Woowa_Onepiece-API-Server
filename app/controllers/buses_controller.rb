class BusesController < ApplicationController
  before_action :set_bus, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /buses
  # GET /buses.json
  def index
    @buses = Bus.all
  end

  # GET /buses/1
  # GET /buses/1.json
  def show
  end

  # GET /buses/new
  def new
    @bus = Bus.new
  end

  # GET /buses/1/edit
  def edit
  end

  # POST /buses
  # POST /buses.json
  def create
    @bus = Bus.new(bus_params)
    @bus.save
    respond_with(@bus)
  end

  # PATCH/PUT /buses/1
  # PATCH/PUT /buses/1.json
  def update
    @bus.update(bus_params)
    respond_with(@bus)
  end

  # DELETE /buses/1
  # DELETE /buses/1.json
  def destroy
    @bus.destroy
    respond_with(@bus)
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_bus
    @bus = Bus.find(params[:id])
  end

  # Never trust parameters from the scary internet,
  # only allow the white list through.
  def bus_params
    params.require(:bus).permit(:bus_id, :bus_nm, :bus_dow_id)
  end
end
