class CreateGeneTables < ActiveRecord::Migration[6.1]
  def change
    create_table :gene_tables do |t|
      t.string :Gene_ID
      t.string :Description
      t.string :Chromosome
      t.string :Location
      t.string :Orthogroup
      t.string :Link
      t.string :HZAU_link
      t.string :Sequence_link
      t.string :Diagram_link
      t.string :Live

      t.timestamps
    end
  end
end
