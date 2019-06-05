class CreateLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :languages do |t|
      t.string :lang_name
      t.string :lang_code

      t.timestamps
    end
  end
end
