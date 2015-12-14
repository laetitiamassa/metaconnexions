class AddResidencyToUsers < ActiveRecord::Migration
  def change
    add_column :users, :residency, :string
  end
end
