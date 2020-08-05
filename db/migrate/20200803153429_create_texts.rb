class CreateTexts < ActiveRecord::Migration[6.0]
  def change
    create_table :texts do |t|
      t.integer :number
      t.string :content

      t.timestamps
    end
  end
end
