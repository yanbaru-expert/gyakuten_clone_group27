class RemoveStartdayFromEvents < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :start_day, :datetime
  end
end
