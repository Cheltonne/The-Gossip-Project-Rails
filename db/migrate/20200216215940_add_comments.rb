class AddComments < ActiveRecord::Migration[6.0]
	def change
		create_table :comments do |t|
			t.text :content
			t.references :gossip, index: :true
			t.references :user, index: :true

			t.timestamps
		end
	end
	end
