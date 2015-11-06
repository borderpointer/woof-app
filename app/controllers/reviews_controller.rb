class ReviewsController < ApplicationController

  skip_before_filter :verify_authenticity_token
  before_action :set_review, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :search_gif_form, :search_gif, :submit_form, :create, :edit, :update, :destroy]


  def new

    @review = Review.new
    @subject = Subject.find(params[:subject_id])

  end


  def search_gif_form

    @review = Review.new
    puts "==================="
    p params[:score]
    p params[:score].class
    puts "==================="

    @subject = Subject.find(params[:subject_id])
    session[:rating] = params[:score]
    # puts "-----------------------"
    # p session[:rating]
    # puts "-----------------------"

  end


  def search_gif

    @review = Review.new

    if params[:search_terms] != nil

      original_search_terms = params[:search_terms]
      formatted_search_terms = params[:search_terms].split(" ").join("+")

      response = HTTParty.get("http://api.giphy.com/v1/gifs/translate?s=" + formatted_search_terms + "&rating=pg-13" + "&api_key=" + Rails.application.secrets.giphy_access_key)

      @gif = response['data']['images']['original']['url']

      session[:chosen_gif] = @gif

      @subject = Subject.find(params[:subject_id])

      render :search_gif_form
      # render :partial => 'search_results'


    end

  end


  def search_gif_results
  end


  def submit_form

  end


  def create

    @review = Review.new(review_params)
    @review.subject_id = params[:subject_id]

    if @review.save

      redirect_to subject_path(params[:subject_id])

    else

      redirect_to subject_path(params[:subject_id])

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

    params.require(:review).permit(:rating, :body, :subject_id, :user_id)

  end

  def search_params

    params.require(:review).permit(:search_term)

  end


end