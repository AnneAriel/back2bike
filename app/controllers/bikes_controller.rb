class BikesController < ApplicationController

  def index
    @bikes = policy_scope(Bike)

    if params[:query].present?
      @bikes = Bike.search_by_bike_criteria(params[:query])
    else
      @bikes = Bike.all
    end


    @markers = @bikes.geocoded.map do |bike|
      {
        lat: bike.latitude,
        lng: bike.longitude,
        info_window: render_to_string(partial: "info_window", locals: {bike: bike}),
        image_url: helpers.asset_url("https://cdn-icons-png.flaticon.com/512/130/130276.png")
      }
    end

  end

  def show
    @bike = Bike.find(params[:id])
    @reservation = Reservation.new
    authorize @bike

    @markers =
    [
      {
      lat: @bike.latitude,
      lng: @bike.longitude,
      info_window: render_to_string(partial: "info_window", locals: {bike: @bike}),
      image_url: helpers.asset_url("https://cdn-icons-png.flaticon.com/512/130/130276.png")
      }
    ]
  end

  def new
    @bike = Bike.new
    authorize @bike
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user
    @bike.save
    redirect_to bike_path(@bike)
    authorize @bike
  end

  def destroy
    @bike = Bike.find(params[:id])
    authorize @bike
    @bike.destroy
    redirect_to bikes_path
  end

  private

  def bike_params
    params.require(:bike).permit(:description, :address, :category, :daily_price, :photo)
  end

end
