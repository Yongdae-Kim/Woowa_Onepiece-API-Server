class DayOfWeeksController < ApplicationController
  before_action :set_day_of_week, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @day_of_weeks = DayOfWeek.all
    respond_with(@day_of_weeks)
  end

  def show
    respond_with(@day_of_week)
  end

  def new
    @day_of_week = DayOfWeek.new
    respond_with(@day_of_week)
  end

  def edit
  end

  def create
    @day_of_week = DayOfWeek.new(day_of_week_params)
    @day_of_week.save
    respond_with(@day_of_week)
  end

  def update
    @day_of_week.update(day_of_week_params)
    respond_with(@day_of_week)
  end

  def destroy
    @day_of_week.destroy
    respond_with(@day_of_week)
  end

  private

  def set_day_of_week
    @day_of_week = DayOfWeek.find(params[:id])
  end

  def day_of_week_params
    params.require(:day_of_week).permit(:dow_nm, :dow_cd_id)
  end
end
