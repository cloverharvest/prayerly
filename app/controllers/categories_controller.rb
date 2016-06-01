class CategoriesController < ApplicationController
  def index
    if params[:id]
      @category=  Category.find(params[:id])
      @prayers = @category.prayers
    else
      @prayers = Prayer.all
    end
  end

  def new
    @category = Category.new(id: params[:id])
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = "New category added."
      # redirect_to category_path(@category)
      redirect_to categories_path
    else
      flash[:error] = @category.errors.full_messages.to_sentence
      render :new
    end
  end

  private
    def category_params
      params.require(:category).permit(:cat_name, :id)
    end
end
