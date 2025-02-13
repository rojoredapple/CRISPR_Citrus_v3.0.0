json.extract! plant_table, :id, :Plant_ID, :Species, :Vector, :Link, :Genotyping_summary, :Short_note, :Live, :Phenotyping_text, :Phenotyping_image, :extra_field, :additional_field, :created_at, :updated_at
json.url plant_table_url(plant_table, format: :json)
