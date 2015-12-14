class CreateSkillNames < ActiveRecord::Migration
  def change
    create_table :skill_names do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
