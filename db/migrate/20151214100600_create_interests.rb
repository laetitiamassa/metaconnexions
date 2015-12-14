class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.integer :interest_name_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
