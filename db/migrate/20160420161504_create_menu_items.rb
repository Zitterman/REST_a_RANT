class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string :type, null: false
      t.string :name, null: false
      t.integer :price, null: false
      t.timestamps null: false
    end
  end
end
