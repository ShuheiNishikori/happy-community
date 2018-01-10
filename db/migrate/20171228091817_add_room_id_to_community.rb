class AddRoomIdToCommunity < ActiveRecord::Migration[5.1]
  def change
    add_column :communities, :room_id, :integer
  end
end
