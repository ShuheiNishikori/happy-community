class HomeController < ApplicationController
  
  # GET /home
  # GET /hoem.json
  def index
    @user = current_user
    @communities = Community.joins(:members)
  end
end
