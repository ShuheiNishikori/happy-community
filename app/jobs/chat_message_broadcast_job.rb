class ChatMessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(chat_message)
    ActionCable.server.broadcast 'chat_message_channel',user_name: chat_message.user_name, message: chat_message.body
    # Do something later
  end
end
