class AddIdToCostOfHoursCenter < ActiveRecord::Migration[5.1]
  def change
    add_column :cost_of_hours_centers, :control_time_id, :integer
  end
end
