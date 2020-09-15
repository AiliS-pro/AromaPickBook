class CreateAromas < ActiveRecord::Migration[6.0]
  def change
    create_table :aromas do |t|
      t.string :name
      t.string :family_name
      t.string :fragrance_note
      t.string :fragrance_type
      t.text :explain_text
      t.string :image
      t.timestamps
    end
  end
end
