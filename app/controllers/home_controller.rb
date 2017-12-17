class HomeController < ApplicationController
  
  # GET /home
  # GET /hoem.json
  def index
    #ログインしているユーザーを取得
    @user = current_user
    #ログインしているユーザーが参加しているコミュニティを取得
    @communities = Community.joins(:members).where("members.user_id = ?", @user.id)
    @events = Event.where(ispublic: true)
  end
end
