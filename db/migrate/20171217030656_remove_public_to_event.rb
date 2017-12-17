class RemovePublicToEvent < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :public, :boolean
  end
end
