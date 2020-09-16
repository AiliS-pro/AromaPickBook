class AddImageToAromas < ActiveRecord::Migration[6.0]
  def change
    add_column :aromas, :image, :string
  end
end
