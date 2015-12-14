class CreateInterestNames < ActiveRecord::Migration
  def change
    create_table :interest_names do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
