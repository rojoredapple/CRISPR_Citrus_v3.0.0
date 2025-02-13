  require 'csv'    
  gene_note = File.read('app/assets/csv/Gene_studies_(USDA_Citrus).csv')
#  GeneStudy.destroy_all
  csv = CSV.parse(gene_note, :headers => true)
  csv.each do |row|
    #if row["Live"] == 'TRUE' #Only render those whose "LIVE" property is TRUE
 #     GeneStudy.create!(row.to_hash)
    #end   
  end
 
  plant_note = File.read('app/assets/csv/Plant_pages_Notes_(USDA_Citrus).csv')
 # PlantNote.destroy_all
  csv = CSV.parse(plant_note, :headers => true)
  csv.each do |row|
    #if row["Live"] == 'TRUE' #Only render those whose "LIVE" property is TRUE
 #     PlantNote.create!(row.to_hash)
    #end   
  end
