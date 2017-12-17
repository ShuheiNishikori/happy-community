class AddAreaToEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :area, :string
  end
end
