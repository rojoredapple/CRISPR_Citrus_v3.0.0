  require 'csv'    
  genotyping_table = File.read('app/assets/csv/Gene_pages_Genotyping_(USDA_Citrus).csv')
#  GenotypingTable.destroy_all
  csv = CSV.parse(genotyping_table, :headers => true)
  csv.each do |row|
    #if row["Live"] == 'TRUE' #Only render those whose "LIVE" property is TRUE
#      GenotypingTable.create!(row.to_hash)
    #end   
  end
  