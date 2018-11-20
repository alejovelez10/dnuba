class CreateExperiences < ActiveRecord::Migration[5.1]
  def change
    create_table :experiences do |t|
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :image4
      t.string :client
      t.text :description
      t.text :functionalitie

      t.timestamps
    end
  end
end
