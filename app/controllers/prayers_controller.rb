class PrayersController < ApplicationController
  
  def index
    @prayers = Prayer.all
    if params[:search]
      @prayers = Prayer.search(params[:search]).order("created_at DESC")
    else
      @prayers = Prayer.all.order('created_at DESC')
    end
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
    @prayer = Prayer.find_by_id(params[:id])
    render :show
  end

  def edit
    @prayer= Prayer.find_by_id(params[:id])
  end

  def update
    @prayer= Prayer.find_by_id(params[:id])
    @prayer.update(prayer_params)
    redirect_to prayer_path(@prayer)
  end

  def destroy
    @prayer= Prayer.find_by_id(params[:id])
    if @prayer.destroy
      flash[:success] = "Prayer deleted."
      redirect_to prayers_path
    else
      flash[:error] = @prayer.errors.full_messages.to_sentence
    end
  end

  private

    def prayer_params
      params.require(:prayer).permit(:image, :title, :text)
    end

end
