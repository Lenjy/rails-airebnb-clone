class LocationsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_location, only: [:show, :edit, :update, :destroy]

  def new
    @shoe = Shoe.find(params[:shoe_id])
    @location = Location.new
    authorize @location 
  end

  def show
    
  end

  def create
    @shoe = Shoe.find(params[:shoe_id])
    @location = Location.new(location_params)
    @location.shoe = @shoe
    authorize @location     
    if @shoe.save
      redirect_to shoe_path(@shoe)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @location.update(location_params)
    redirect_to location_path(@location)
  end

  def destroy
    @Location.destroy
    redirect_to dashboard_path
  end

  private

  def location_params
    params.require(:location).permit(:shoe_id, :user_id, :location_pricing, :date_end, :date_beginning)
  end

  def find_location
    @location = Location.find(params[:id])
    authorize @location
  end

end
