class AddStartdayToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :start_day, :date
  end
end
