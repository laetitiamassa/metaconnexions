class AddCoordonneesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :telephone, :string
    add_column :users, :facebook, :string
    add_column :users, :twitter, :string
    add_column :users, :linkedin, :string
    add_column :users, :instagram, :string
    add_column :users, :blog, :string
    add_column :users, :website, :string
  end
end
