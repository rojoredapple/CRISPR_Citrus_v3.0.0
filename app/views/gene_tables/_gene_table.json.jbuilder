json.extract! gene_table, :id, :Gene_ID, :Description, :Chromosome, :Location, :Orthogroup, :Link, :HZAU_link, :Sequence_link, :Diagram_link, :Live, :created_at, :updated_at
json.url gene_table_url(gene_table, format: :json)
