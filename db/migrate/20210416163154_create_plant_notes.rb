class CreatePlantNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :plant_notes do |t|
      t.string :Plant_ID
      t.string :Note

      t.timestamps
    end
  end
end
