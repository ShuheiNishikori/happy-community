class CreateCommunityTags < ActiveRecord::Migration[5.1]
  def change
    create_table :community_tags do |t|
      t.integer :tag_id
      t.integer :community_id

      t.timestamps
    end
  end
end
