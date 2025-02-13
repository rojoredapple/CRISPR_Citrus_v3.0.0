class CreateSgrnaTargets < ActiveRecord::Migration[6.1]
  def change
    create_table :sgrna_targets do |t|
      t.string :sgRNA_ID
      t.string :Gene_ID
      t.string :bp_diff
      t.string :pprox
      t.string :PAM
      t.string :gene_direction
      t.string :gene_cutsite
      t.string :genome_direction
      t.string :genomeStart
      t.string :genomeEnd
      t.string :target

      t.timestamps
    end
  end
end
