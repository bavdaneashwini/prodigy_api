class CreateUserActivities < ActiveRecord::Migration
  def change
    create_table :user_activities do |t|
      t.references :user, index: true, foreign_key: true
      t.references :activity, index: true, foreign_key: true
      t.integer :day_number
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
