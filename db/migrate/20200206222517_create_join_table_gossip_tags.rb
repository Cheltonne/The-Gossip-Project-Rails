class CreateJoinTableGossipTags < ActiveRecord::Migration[5.2]
  def change
    create_table :join_table_gossip_tags do |t|
      t.belongs_to :tag, foreign_key: true, index: true
      t.belongs_to :gossip, foreign_key: true, index: true

      t.timestamps
    end
  end
end
