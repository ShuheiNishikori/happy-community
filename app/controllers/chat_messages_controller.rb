class ChatMessagesController < ApplicationController

  def index
    unless logged_in?
      return redirect_to login_path
    end
    @current_user ||= User.find(session[:user_id])
    @community_id = params[:community_id]
    @chat_user = Member.where(community_id: @community_id).select(:user_id)
    @chat_messages = ChatMessage.where(user_id: @chat_user)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chat_messages
      @chat_messages = ChatMessage.find(params[:id])
    end
  
    # Never trust parameters from the scary internet, only allow the white list through.
    def chat_messages_params
      params.require(:chat_messages).permit(:community_id, :user_id, :body)
    end
  
end
