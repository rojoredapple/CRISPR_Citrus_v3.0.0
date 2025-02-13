class CreateU6Tables < ActiveRecord::Migration[6.1]
  def change
    create_table :u6_tables do |t|
      t.string :Vector_ID
      t.string :sgRNA_ID
      t.string :Position

      t.timestamps
    end
  end
end
