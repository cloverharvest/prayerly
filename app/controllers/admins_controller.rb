class AdminsController < ApplicationController
  def index

  end
  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      redirect_to root_path, :notice => "Signed up!" #going to root_path for now, will be redirected to admins_index or prayers#index
    else
      render :new
    end
  end

  private

  def admin_params
    params.require(:admin).permit(:email, :password, :password_confirmation)
  end
end
