class AddIdsToCostCenter < ActiveRecord::Migration[5.1]
  def change
    add_column :cost_centers, :control_time_id, :integer
  end
end
