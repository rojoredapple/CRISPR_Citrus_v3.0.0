  require 'csv'    
  plant_table = File.read('app/assets/csv/Plant_table_(USDA_Citrus).csv')
#  PlantTable.destroy_all
  csv = CSV.parse(plant_table, :headers => true)
  csv.each do |row|
    if row["Live"] == 'TRUE' #Only render those whose "LIVE" property is TRUE
 #     PlantTable.create!(row.to_hash)
    end   
  end
  