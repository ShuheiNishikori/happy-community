class HomeController < ApplicationController
  
  # GET /home
  # GET /hoem.json
  def index
    @user = current_user
    @communities = Community.joins(:members).where("members.user_id = ?", @user.id)
  end
end
