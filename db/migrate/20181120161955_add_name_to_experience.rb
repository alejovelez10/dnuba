class AddNameToExperience < ActiveRecord::Migration[5.1]
  def change
    add_column :experiences, :name_proyect, :string
  end
end
