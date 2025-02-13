class CreateGenotypingTables < ActiveRecord::Migration[6.1]
  def change
    create_table :genotyping_tables do |t|
      t.string :Plant_ID
      t.string :Gene_ID
      t.string :sgRNA_ID
      t.string :Genotyping_image
      t.string :Editing_efficiency
      t.string :Disruption_efficiency

      t.timestamps
    end
  end
end
