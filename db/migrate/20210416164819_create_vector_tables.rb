class CreateVectorTables < ActiveRecord::Migration[6.1]
  def change
    create_table :vector_tables do |t|
      t.string :Vector_ID
      t.string :Backbone
      t.string :tRNA_array
      t.string :U6_vector
      t.string :Short_note
      t.string :Vector_link
      t.string :Cloned
      t.string :Cloned_by
      t.string :Box_1_Ago_EHA105
      t.string :Transformed_valencia
      t.string :Transformed_carrizo
      t.string :GFP_positives

      t.timestamps
    end
  end
end
