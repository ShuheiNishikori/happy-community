class AddCommunityIdToChatMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :chat_messages, :community_id, :integer
  end
end
