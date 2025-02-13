class CreateGuideTables < ActiveRecord::Migration[6.1]
  def change
    create_table :guide_tables do |t|
      t.string :sgRNA_ID
      t.string :Sequence
      t.string :Orthologs_targeted

      t.timestamps
    end
  end
end
