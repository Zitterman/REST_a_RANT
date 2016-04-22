class AddRoleToServers < ActiveRecord::Migration
  def change
    add_column :servers, :role, :integer, default: 0
  end
end
