class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :order, index: true, foreign_key: true
      t.string :sku
      t.integer :quantity
      t.boolean :original

      t.timestamps null: false
    end
  end
end
