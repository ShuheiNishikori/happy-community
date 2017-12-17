class AddIspublicToEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :ispublic, :boolean
  end
end
