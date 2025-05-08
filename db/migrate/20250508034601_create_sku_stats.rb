class CreateSkuStats < ActiveRecord::Migration
  def change
    create_table :sku_stats do |t|
      t.string :sku
      t.string :week
      t.integer :total_quantity

      t.timestamps null: false
    end
  end
end
