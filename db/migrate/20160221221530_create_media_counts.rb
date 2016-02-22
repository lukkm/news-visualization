class CreateMediaCounts < ActiveRecord::Migration
  def change
    create_table :media_counts do |t|
      t.integer :count
      t.string :media

      t.timestamps null: false
    end
  end
end
