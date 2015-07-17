class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item_name
      t.text :description
      t.string :SKU
      t.decimal :cost_price
      t.string :retail_price
      t.datetime :date_sold
      t.references :sale, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
