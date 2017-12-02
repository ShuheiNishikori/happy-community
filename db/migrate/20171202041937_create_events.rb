class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.integer :community_id
      t.string :name
      t.datetime :event_start_at
      t.datetime :event_end_at
      t.string :place

      t.timestamps
    end
  end
end
