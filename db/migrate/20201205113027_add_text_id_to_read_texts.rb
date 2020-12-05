class AddTextIdToReadTexts < ActiveRecord::Migration[6.0]
  def change
    add_column :read_texts, :text_id, :integer
  end
end
