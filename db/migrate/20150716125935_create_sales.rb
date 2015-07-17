class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :customer_name
      t.text :address
      t.string :sales_person

      t.timestamps null: false
    end
  end
end
