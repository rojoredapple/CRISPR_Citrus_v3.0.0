  require 'csv'    
  gene_study = File.read('app/assets/csv/Gene_pages_Notes_(USDA_Citrus).csv')
#  GpNote.destroy_all
  csv = CSV.parse(gene_study, :headers => true)
  csv.each do |row|
    #if row["Live"] == 'TRUE' #Only render those whose "LIVE" property is TRUE
#      GpNote.create!(row.to_hash)
    #end   
  end
