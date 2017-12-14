class AddOfficialToEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :official, :integer
  end
end
