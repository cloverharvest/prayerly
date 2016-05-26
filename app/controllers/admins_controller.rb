class AdminsController < ApplicationController
  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(params[:user])
    if @admin.save
      redirect_to home_path, :notice => "Signed up!"
    else
      render :new
    end
  end
end
