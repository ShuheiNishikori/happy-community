class RemoveCommunityIdToChatMessages < ActiveRecord::Migration[5.1]
  def change
    remove_column :chat_messages, :community_id, :integer
  end
end
