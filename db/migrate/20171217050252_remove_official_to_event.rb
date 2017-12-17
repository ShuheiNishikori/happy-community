class RemoveOfficialToEvent < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :official, :integer
  end
end
