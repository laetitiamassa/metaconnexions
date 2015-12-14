class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.integer :user_id
      t.integer :skill_name_id

      t.timestamps null: false
    end
  end
end
