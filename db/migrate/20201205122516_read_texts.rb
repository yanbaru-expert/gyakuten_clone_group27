class ReadTexts < ActiveRecord::Migration[6.0]
  def change
    drop_table :read_texts
  end
end
