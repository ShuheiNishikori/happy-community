class AddPublicToEvent < ActiveRecord::Migration[5.1]
  def change
    #行事に公式・非公式の区別をつける
    add_column :events, :public, :boolean, default: false, null: false
  end
end
