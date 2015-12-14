class AddAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :profession, :string
    add_column :users, :company, :string
    add_column :users, :video_link, :string
    add_column :users, :is_boss, :boolean
    add_column :users, :is_validated, :boolean
  end
end
