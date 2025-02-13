class CreateGeneStudies < ActiveRecord::Migration[6.1]
  def change
    create_table :gene_studies do |t|
      t.string :Gene_ID
      t.string :Study

      t.timestamps
    end
  end
end
