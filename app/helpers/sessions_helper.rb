module SessionsHelper
  def check_admin
    if session[:admin_id] == nil
      redirect_to :back
    end
  end
end
