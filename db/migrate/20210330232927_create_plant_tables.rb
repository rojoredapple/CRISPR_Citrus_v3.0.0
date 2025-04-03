class CreatePlantTables < ActiveRecord::Migration[6.1]
  def change
    create_table :plant_tables, id: false, primary_key: :Plant_ID do |t|
      t.string :Plant_ID
      t.string :Species
      t.string :Vector
      t.string :Link
      t.string :Genotyping_summary
      t.string :Short_note
      t.string :Live
      t.string :Phenotyping_text
      t.string :Phenotyping_image
      t.string :extra_field
      t.string :additional_field

      t.timestamps
    end
  end
end
