class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :table
      t.references :menu_item
      t.timestamps null: false
    end
  end
end
