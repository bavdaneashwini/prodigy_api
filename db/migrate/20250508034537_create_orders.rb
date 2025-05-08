class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :external_id
      t.datetime :placed_at
      t.datetime :locked_at

      t.timestamps null: false
    end
  end
end
