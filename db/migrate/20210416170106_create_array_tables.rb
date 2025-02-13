class CreateArrayTables < ActiveRecord::Migration[6.1]
  def change
    create_table :array_tables do |t|
      t.string :Array_ID
      t.string :Length
      t.string :Arrived
      t.string :Supplier
      t.string :Batch

      t.timestamps
    end
  end
end
