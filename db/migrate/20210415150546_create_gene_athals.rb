class CreateGeneAthals < ActiveRecord::Migration[6.1]
  def change
    create_table :gene_athals do |t|
      t.string :Gene_ID
      t.string :Orthogroup_genes_Athal

      t.timestamps
    end
  end
end
