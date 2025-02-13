class CreateGeneCsins < ActiveRecord::Migration[6.1]
  def change
    create_table :gene_csins do |t|
      t.string :Gene_ID
      t.string :Orthogroup_genes_Csin

      t.timestamps
    end
  end
end
