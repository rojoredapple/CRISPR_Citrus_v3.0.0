json.extract! genotyping_table, :id, :Plant_ID, :Gene_ID, :sgRNA_ID, :Genotyping_image, :Editing_efficiency, :Disruption_efficiency, :created_at, :updated_at
json.url genotyping_table_url(genotyping_table, format: :json)
