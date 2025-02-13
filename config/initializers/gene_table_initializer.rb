  require 'csv'    
  gene_table = File.read('app/assets/csv/Gene_table_(USDA_Citrus).csv')
#  GeneTable.destroy_all
  csv = CSV.parse(gene_table, :headers => true)
  csv.each do |row|
    if row["Live"] == 'TRUE' #Only render those whose "LIVE" property is TRUE
#      GeneTable.create!(row.to_hash)
    end   
  end
  