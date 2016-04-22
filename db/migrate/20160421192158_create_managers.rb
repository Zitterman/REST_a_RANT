class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.string :name, null: false
      t.string :password_digest, null: false
    end
  end
end
