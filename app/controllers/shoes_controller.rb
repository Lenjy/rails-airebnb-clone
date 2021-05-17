class ShoesController < ApplicationController
  before_action :find_shoe, only: [:show, :edit, :update, :destroy]

  def index
    @shoes = Shoe.all
  end

  def show
  end

  def new
    @shoe = Shoe.new
  end

  def create
    @shoe = Shoe.new(shoe_params)
    if @shoe.save
      redirect_to shoes_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @shoe.update(shoe_params)
    redirect_to shoe_path(@shoe)
  end

  def destroy
    @shoe.destroy
    redirect_to shoes_path
  end

  private

  def shoe_params
    params.require(:shoe).permit(:title, :description, :brand, :model, :purchasing_date, :color, :daily_pricing)
  end

  def find_shoe
    @shoe = Shoe.find(params[:id])
  end
end
