class PrayersController < ApplicationController
  def index
    @prayers = Prayer.search(params[:search])
  end

end
