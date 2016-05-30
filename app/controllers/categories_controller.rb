class CategoriesController < ApplicationController
  def index
    if params[:id]
      category=  Category.find(params[:id])
      @prayers = category.prayers
    else
      @prayers = Prayer.all
    end
  end
end
