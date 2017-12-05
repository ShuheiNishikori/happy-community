class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :password_digest
      t.string :name
      t.integer :age
      t.string :sex
      t.string :area
      t.string :email
      t.text :freetext

      t.timestamps
    end
  end
end
