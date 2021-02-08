class ChangeDateStartdayToEvent < ActiveRecord::Migration[6.0]
  def change
    change_column :events, :start_day, :date
    change_column :events, :start_time, :time
    change_column :events, :end_time, :time
  end
end
