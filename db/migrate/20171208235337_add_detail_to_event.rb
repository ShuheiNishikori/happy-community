class AddDetailToEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :detail, :text
  end
end
