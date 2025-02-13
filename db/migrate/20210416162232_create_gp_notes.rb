class CreateGpNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :gp_notes do |t|
      t.string :Gene_ID
      t.string :Note

      t.timestamps
    end
  end
end
