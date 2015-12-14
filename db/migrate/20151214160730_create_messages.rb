class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :subject
      t.text :body
      t.integer :messagee_id
      t.string :messagor_email
      t.string :messagor_name

      t.timestamps null: false
    end
  end
end
