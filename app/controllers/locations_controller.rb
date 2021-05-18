class LocationsController < ApplicationController
  before_action :authenticate_user!

  def new
    @shoe = Shoe.find(params[:shoe_id])
    @location = Location.new
  end

  def show
    @location = Location.find(params[:id])
  end

  def create
    @shoe = Shoe.find(params[:shoe_id])
    @location = Location.new(location_params)
    @location.shoe = @shoe
    if @shoe.save
      redirect_to shoe_path(@shoe)
    else
      render :new
    end
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    @location.update(location_params)
    redirect_to location_path(@location)
  end

  def destroy
    @location = Location.find(params[:id])
    @Location.destroy
    redirect_to dashboard_path
  end

  private

  def location_params
    params.require(:location).permit(:shoe_id, :user_id, :location_pricing, :date_end, :date_beginning)
  end

end
