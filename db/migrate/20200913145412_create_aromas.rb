class CreateAromas < ActiveRecord::Migration[6.0]
  def change
    create_table :aromas do |t|
      t.string :name, null: false
      t.string :family_name
      t.string :fragrance_note
      t.string :fragrance_type
      t.text :explain_text
      t.longblob :img, null: false
      t.timestamps
    end
  end
end
