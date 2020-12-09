class RemoveUserToTexts < ActiveRecord::Migration[6.0]
  def change
    remove_column :texts, :user, :integer
  end
end
