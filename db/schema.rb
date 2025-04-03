# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2021_04_16_171136) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "array_position", primary_key: "array_id", id: { type: :string, limit: 255 }, force: :cascade do |t|
    t.string "sgrna_id", limit: 255
    t.integer "trna_position"
  end

  create_table "array_positions", force: :cascade do |t|
    t.string "Array_ID"
    t.string "sgRNA_ID"
    t.string "tRNA_position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "array_table", primary_key: "array_id", id: { type: :string, limit: 255 }, force: :cascade do |t|
    t.integer "length"
    t.date "arrived"
    t.string "supplier", limit: 255
    t.string "batch", limit: 255
  end

  create_table "array_tables", force: :cascade do |t|
    t.string "Array_ID"
    t.string "Length"
    t.string "Arrived"
    t.string "Supplier"
    t.string "Batch"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gene_athals", force: :cascade do |t|
    t.string "Gene_ID"
    t.string "Orthogroup_genes_Athal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gene_csins", force: :cascade do |t|
    t.string "Gene_ID"
    t.string "Orthogroup_genes_Csin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gene_studies", force: :cascade do |t|
    t.string "Gene_ID"
    t.string "Study"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gene_table", primary_key: "gene_id", id: { type: :string, limit: 255 }, force: :cascade do |t|
    t.string "description", limit: 65535
    t.string "chromosome", limit: 255
    t.integer "location"
    t.string "orthogroup", limit: 255
    t.string "link", limit: 255
    t.string "hzau_link", limit: 255
    t.string "sequence_link", limit: 255
    t.string "diagram_link", limit: 255
    t.boolean "live"
  end

  create_table "gene_tables", id: :integer, default: nil, force: :cascade do |t|
    t.string "gene_id", limit: 255
    t.string "description", limit: 65535
    t.string "chromosome", limit: 255
    t.integer "location"
    t.string "orthogroup", limit: 255
    t.string "link", limit: 255
    t.string "hzau_link", limit: 255
    t.string "sequence_link", limit: 255
    t.string "diagram_link", limit: 255
    t.boolean "live"
  end

  create_table "genotyping", primary_key: "plant_id", id: { type: :string, limit: 255 }, force: :cascade do |t|
    t.string "gene_id", limit: 255
    t.string "sgrna_id", limit: 255
    t.string "genotyping_image", limit: 255
    t.string "editing_efficiency", limit: 255
    t.string "disruption_efficiency", limit: 255
  end

  create_table "genotyping_tables", force: :cascade do |t|
    t.string "Plant_ID"
    t.string "Gene_ID"
    t.string "sgRNA_ID"
    t.string "Genotyping_image"
    t.string "Editing_efficiency"
    t.string "Disruption_efficiency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gp_athal", primary_key: "gene_id", id: { type: :string, limit: 255 }, force: :cascade do |t|
    t.string "orthogroup_genes_athal", limit: 255
  end

  create_table "gp_csin", primary_key: "gene_id", id: { type: :string, limit: 255 }, force: :cascade do |t|
    t.string "orthogroup_genes_csin", limit: 255
  end

  create_table "gp_notes", force: :cascade do |t|
    t.string "Gene_ID"
    t.string "Note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gp_studies", primary_key: "gene_id", id: { type: :string, limit: 255 }, force: :cascade do |t|
    t.string "study", limit: 65535
  end

  create_table "guide_table", primary_key: "sgrna_id", id: { type: :string, limit: 255 }, force: :cascade do |t|
    t.string "sequence", limit: 255
    t.string "orthologs_targeted", limit: 255
  end

  create_table "guide_tables", force: :cascade do |t|
    t.string "sgRNA_ID"
    t.string "Sequence"
    t.string "Orthologs_targeted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plant_notes", force: :cascade do |t|
    t.string "Plant_ID"
    t.string "Note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plant_table", primary_key: "plant_id", id: { type: :string, limit: 255 }, force: :cascade do |t|
    t.string "species", limit: 255
    t.string "vector_id", limit: 255
    t.date "date_to_soil"
    t.string "genotyping_summary", limit: 255
    t.string "short_note", limit: 255
    t.string "link", limit: 255
    t.boolean "live"
  end

  create_table "plant_tables", force: :cascade do |t|
    t.string "Plant_ID"
    t.string "Species"
    t.string "Vector"
    t.string "Link"
    t.string "Genotyping_summary"
    t.string "Short_note"
    t.string "Live"
    t.string "Phenotyping_text"
    t.string "Phenotyping_image"
    t.string "extra_field"
    t.string "additional_field"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.date "publish_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pp_notes", primary_key: "plant_id", id: { type: :string, limit: 255 }, force: :cascade do |t|
    t.string "note", limit: 65535
  end

  create_table "sgrna_targets", force: :cascade do |t|
    t.string "sgRNA_ID"
    t.string "Gene_ID"
    t.string "bp_diff"
    t.string "pprox"
    t.string "PAM"
    t.string "gene_direction"
    t.string "gene_cutsite"
    t.string "genome_direction"
    t.string "genomeStart"
    t.string "genomeEnd"
    t.string "target"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "u6_table", primary_key: "vector_id", id: { type: :string, limit: 255 }, force: :cascade do |t|
    t.string "sgrna_id", limit: 255
    t.integer "position"
  end

  create_table "u6_tables", force: :cascade do |t|
    t.string "Vector_ID"
    t.string "sgRNA_ID"
    t.string "Position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vector_table", primary_key: "vector_id", id: { type: :string, limit: 255 }, force: :cascade do |t|
    t.string "backbone", limit: 255
    t.string "array_id", limit: 255
    t.boolean "u6_vector"
    t.string "short_note", limit: 255
    t.string "link", limit: 255
  end

  create_table "vector_tables", force: :cascade do |t|
    t.string "Vector_ID"
    t.string "Backbone"
    t.string "tRNA_array"
    t.string "U6_vector"
    t.string "Short_note"
    t.string "Vector_link"
    t.string "Cloned"
    t.string "Cloned_by"
    t.string "Box_1_Ago_EHA105"
    t.string "Transformed_valencia"
    t.string "Transformed_carrizo"
    t.string "GFP_positives"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
