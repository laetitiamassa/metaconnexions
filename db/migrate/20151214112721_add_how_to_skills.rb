class AddHowToSkills < ActiveRecord::Migration
  def change
    add_column :skills, :how, :string
  end
end
