class ReviewsController < ApplicationController

  skip_before_filter :verify_authenticity_token
  before_action :set_review, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :search_gif_form, :search_gif, :submit_form, :create, :edit, :update, :destroy]


  def new

    @review = Review.new
    @subject = Subject.find(params[:subject_id])

  end


  def search_gif_form

    @subject = Subject.find(params[:subject_id])
    session[:rating] = params[:score]
    puts "-----------------------"
    p session[:rating]
    puts "-----------------------"

  end


  def search_gif

    if params[:search_terms] != nil

      MotionGiphy::Client.search(params[:search_terms]) do |response|

      if response.success?

        gifs = response.data

        gif = response.data.first

        puts gif.id
        puts gif.giphy_url

        # Returns a MotionGiphy::Image
        puts gif.fixed_width.url

        return gifs

      else

        puts response.error.message

      end

    end

    puts "===================="
    p gifs
    puts "===================="

    @gifs = gifs

    session[:chosen_gif] = params[:chosen_gif]

    render :partial => 'search_results'

    end

  end


  def search_gif_results

  end


  def submit_form

  end


  def create

    @review = Review.new(review_params)
    @review.subject_id = params[:id]
    @review.user_id = current_user.id

    if @review.save

      redirect_to subject_path(params[:id])

    else

      redirect_to subject_path(params[:id])

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

  def search_params

    params.require(:review).permit(:search_term)

  end


end