class LocationsController < ApplicationController
  skip_before_action :authenticate_user! # Temporaire: Pour tester les vues
  # before_action :authenticate_user!
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

    deb = location_params["date_beginning"].split("-")
    endy = location_params["date_end"].split("-")
    @location.date_beginning = Date.new(deb[0].to_i,deb[1].to_i,deb[2].to_i) 
    @location.date_end = Date.new(endy[0].to_i,endy[1].to_i,endy[2].to_i)
    location_period = @location.date_end - @location.date_beginning
    pricing = @shoe.daily_pricing * location_period  
    @location.user = current_user
    if @location.save
      redirect_to dashboard_index_path
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
    params.require(:location).permit(:shoe_id, :user_id, :location_pricing, :date_end, :date_beginning, :photo)
  end

  def find_location
    @location = Location.find(params[:id])
    authorize @location
  end

end
