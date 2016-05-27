class PrayersController < ApplicationController
  def index
    @prayers = Prayer.all
    render :index
  end

  def new
    @prayer = Prayer.new
  end

  def create
    @prayer = Prayer.new(prayer_params)
    if @prayer.save
      flash[:success] = "New prayer added."
      redirect_to @prayer
    else
      flash[:error] = @prayer.errors.full_messages.to_sentence
      render :new
    end
  end

  def show
    render :show
  end


  private

    def prayer_params
      params.require(:prayer).permit(:image, :title, :text, :category_id)
    end


end
