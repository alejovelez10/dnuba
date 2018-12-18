class RemoveFieldNameFromCostCenter < ActiveRecord::Migration[5.1]
  def change
    remove_column :cost_centers, :cost_center_id, :integer
  end
end
