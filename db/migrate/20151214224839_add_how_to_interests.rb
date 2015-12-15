class AddHowToInterests < ActiveRecord::Migration
  def change
    add_column :interests, :how, :string
  end
end
