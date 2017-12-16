class ChatMessagesController < ApplicationController
  def index
    unless logged_in?
      return redirect_to login_path
    end
    @current_user ||= User.find(session[:user_id])
    @chat_messages = ChatMessage.all
  end
end
