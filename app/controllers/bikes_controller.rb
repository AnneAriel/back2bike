class BikesController < ApplicationController

  def index
    @bikes = Bike.all
  end

  def show
  @bike = Bike.find(params[:id])
  end

  def new
    @bike = Bike.new
  end

  def create
  @bike = Bike.new(bike_params)
  @bike.save
  end

  private

  def bike_params
    params.require(:bike).permit(:description, :localisation, :category, :daily_price)
  end

end
