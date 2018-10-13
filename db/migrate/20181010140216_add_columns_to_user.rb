class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone, :string
    add_column :users, :image, :string
    add_column :users, :address, :string
    add_column :users, :status, :integer, default: 0, index: true
    add_column :users, :role, :integer, default: 0, index: true

  end
end
