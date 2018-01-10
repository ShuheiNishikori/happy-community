class AddChatMessageIdToRooms < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :chat_message_id, :integer
  end
end
