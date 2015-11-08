class ReviewsController < ApplicationController

  attr_accessor :body, :subject_id, :user_id

  skip_before_filter :verify_authenticity_token
  before_action :set_review, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :search_gif, :create, :edit, :update, :destroy]


  def new

    @review = Review.new
    @subject = Subject.find(params[:subject_id])
    session[:form_type] = "new"

  end


  def search_gif

    @review = Review.new
    @subject = Subject.find(params[:subject_id])

    if params[:text_response] != nil

      original_search_terms = params[:text_response]
      formatted_search_terms = params[:text_response].gsub(/\s+'!'+'?'/,'+')

      response = HTTParty.get("http://api.giphy.com/v1/gifs/translate?s=" + formatted_search_terms + "&rating=pg-13" + "&api_key=" + Rails.application.secrets.giphy_access_key)

      @gif = response['data']['images']['original']['url']

      @text_response = params[:text_response]

      session[:form_type] = nil
      render :new

    end

  end


  def create

    @review = Review.new(review_params)

    if @review.save

      redirect_to subject_path(params[:subject_id])

    else

      redirect_to subject_path(params[:subject_id])

    end

  end


  def edit

    @subject = Subject.find(params[:subject_id])
    session[:form_type] = "edit"

  end


  def edit_gif

    @subject = Subject.find(params[:subject_id])

    if params[:text_response] != nil

      original_search_terms = params[:text_response]
      formatted_search_terms = params[:text_response].split(" ").join("+")

      response = HTTParty.get("http://api.giphy.com/v1/gifs/translate?s=" + formatted_search_terms + "&rating=pg-13" + "&api_key=" + Rails.application.secrets.giphy_access_key)

      @gif = response['data']['images']['original']['url']

      @text_response = params[:text_response]

      @review = Review.find(params[:review_id])

      session[:form_type] = nil
      render :edit

    end

  end


  def update

    if @review.update(review_params)

      redirect_to subject_path(params[:subject_id])

    end

  end


  def destroy

    @review.destroy

    redirect_to subject_path(params[:subject_id])

  end


  private

  def set_review

    @review = Review.find(params[:id])

  end

  def review_params

    params.require(:review).permit(:gif_response, :user_id, :subject_id, :text_response)

  end


end