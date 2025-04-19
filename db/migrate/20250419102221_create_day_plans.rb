class CreateDayPlans < ActiveRecord::Migration
  def change
    create_table :day_plans do |t|
      t.integer :day_number
      t.references :activity, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
