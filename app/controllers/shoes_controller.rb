class ShoesController < ApplicationController
  skip_before_action :authenticate_user! # Temporaire: Pour tester les vues
  # before_action :authenticate_user!, only: :create
  before_action :find_shoe, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      sql_query = " \
        shoes.brand @@ :query \
        OR shoes.color @@ :query \
        OR shoes.description @@ :query \
      "
      @shoes = policy_scope(Shoe).where(sql_query, query: "%#{params[:query]}%")
    else
      @shoes = policy_scope(Shoe).order(created_at: :desc)
    end

    if params[:shoe_size].present?
      @shoes = @shoes.where(shoe_size: params[:shoe_size])
    end
  end

  def show
    @location = Location.new
    @shoe = Shoe.find(params[:id])
    @pricing = @shoe.daily_pricing
    @review = Review.new
  end

  def new
    @shoe = Shoe.new
    authorize @shoe
  end

  def create
    @shoe = Shoe.new(shoe_params)
    @shoe.user = current_user
    authorize @shoe
    if @shoe.save
      redirect_to  dashboard_index_path
    else
      redirect_to  dashboard_index_path(@shoe)
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
    redirect_to dashboard_index_path
  end

  private

  def shoe_params
    params.require(:shoe).permit(:title, :description, :brand, :model, :purchasing_date, :color, :daily_pricing, :shoe_size, :gender, :photo)
  end

  def find_shoe
    @shoe = Shoe.find(params[:id])
    authorize @shoe
  end
end
