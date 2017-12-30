class RemoveRoomIdToCommunity < ActiveRecord::Migration[5.1]
  def change
    remove_column :communities, :room_id
  end
end
