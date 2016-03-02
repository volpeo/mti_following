acclass CreateFollowables < ActiveRecord::Migration
  def change
    create_table :followables do |t|
      t.integer :actable_id
      t.string  :actable_type

      t.timestamps null: false
    end
  end
end
