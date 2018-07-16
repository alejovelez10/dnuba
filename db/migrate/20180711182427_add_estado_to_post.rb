class AddEstadoToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :estado, :boolean
  end
end
