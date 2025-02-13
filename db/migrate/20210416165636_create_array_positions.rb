class CreateArrayPositions < ActiveRecord::Migration[6.1]
  def change
    create_table :array_positions do |t|
      t.string :Array_ID
      t.string :sgRNA_ID
      t.string :tRNA_position

      t.timestamps
    end
  end
end
