class ReviewsController < ApplicationController


  before_action :set_review, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]


  def new

    @review = Review.new

  end


  def create

    @review = Review.new(review_params)

    if @review.save

      redirect_to ...

    end

  end


  def edit

  end


  def update

  end


  def destroy

  end



  private

  def set_review

    @review = Review.find(params[:id])

  end

  def review_params

    params.require(:review).permit(:rating, :body)

  end


end