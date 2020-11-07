class AddImageToTexts < ActiveRecord::Migration[6.0]
  def change
    add_column :texts, :image, :string
  end
end
