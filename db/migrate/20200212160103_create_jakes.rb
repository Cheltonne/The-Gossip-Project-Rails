class CreateJakes < ActiveRecord::Migration[6.0]
  def change
    create_table :jakes do |t|

      t.timestamps
    end
  end
end
