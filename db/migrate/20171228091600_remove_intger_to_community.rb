class RemoveIntgerToCommunity < ActiveRecord::Migration[5.1]
  def change
    remove_column :communities, :integer, :string
  end
end
