class CreatePhrases < ActiveRecord::Migration[5.2]
  def change
    create_table :phrases do |t|
      t.integer :user_id
      t.integer :language_id
      t.string :user_message
      t.string :new_message

      t.timestamps
    end
  end
end
