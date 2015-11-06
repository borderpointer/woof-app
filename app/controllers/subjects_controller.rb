class SubjectsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create]

  def index

    @subjects = Subject.all

  end


  def new

    @subject = Subject.new
    @category = Subject.uniq.pluck(:category)

  end


  def create

    @subject = Subject.new(subject_params)

    if @subject.save

      flash[:notice] = "Success!"

      redirect_to subjects_path

    else

      flash[:notice] = "Unable to Create Your Post"

      render :new

    end

  end


  def show

    @subject = Subject.find(params[:id])
    @review = Review.new
    @review.subject_id = @subject.id
    @review.user_id = current_user.id

  end


  private

  def subject_params

    params.require(:subject).permit(:name, :category, :address, :photo)

  end


end