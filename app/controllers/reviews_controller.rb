class ReviewsController < ApplicationController
    skip_before_action :authenticate_user! # Temporaire: Pour tester les vues
    # before_action :authenticate_user!
    before_action :find_location, only: [:show, :edit, :update, :destroy]
  
    def new
      @shoe = Shoe.find(params[:shoe_id])
      @location = Location.new
      authorize @review
    end
  
    def show
  
    end
  
    def create
      @shoe = Shoe.find(params[:shoe_id])
      @review = Review.new(review_params)
      @review.shoe = @shoe
      authorize @review
      @review.user = current_user
      if @review.save
        redirect_to shoe_path(@shoe)
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      @review.update(review_params)
      redirect_to review_path(@review)
    end
  
    def destroy
      @review.destroy
      redirect_to dashboard_path
    end
  
    private
  
    def review_params
      params.require(:review).permit(:shoe_id, :user_id, :rating, :comment)
    end
  
    def find_review
      @review = Location.find(params[:id])
      authorize @review
    end
  
  end
  