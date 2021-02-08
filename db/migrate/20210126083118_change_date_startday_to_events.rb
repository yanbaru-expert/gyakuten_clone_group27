class ChangeDateStartdayToEvents < ActiveRecord::Migration[6.0]
  def change
    change_column :events, :start_day, :datetime
  end
end
