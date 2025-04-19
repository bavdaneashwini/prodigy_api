class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.string :frequency
      t.integer :duration_seconds
      t.string :category

      t.timestamps null: false
    end
  end
end
