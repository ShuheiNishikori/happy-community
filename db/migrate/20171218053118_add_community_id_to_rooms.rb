class AddCommunityIdToRooms < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :community_id, :integer
  end
end
