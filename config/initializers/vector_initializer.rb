require 'csv'    
vector = File.read('app/assets/csv/Vector_table_(USDA_Citrus).csv')
# VectorTable.destroy_all
csv = CSV.parse(vector, :headers => true)
csv.each do |row|
  #if row["Live"] == 'TRUE' #Only render those whose "LIVE" property is TRUE
#    VectorTable.create!(row.to_hash)
  #end   
end

array_position = File.read('app/assets/csv/Array_position_(USDA_Citrus).csv')
# ArrayPosition.destroy_all
csv = CSV.parse(array_position, :headers => true)
csv.each do |row|
  #if row["Live"] == 'TRUE' #Only render those whose "LIVE" property is TRUE
#    ArrayPosition.create!(row.to_hash)
  #end   
end

array_table = File.read('app/assets/csv/Array_table_(USDA_Citrus).csv')
# ArrayTable.destroy_all
csv = CSV.parse(array_table, :headers => true)
csv.each do |row|
  #if row["Live"] == 'TRUE' #Only render those whose "LIVE" property is TRUE
#    ArrayTable.create!(row.to_hash)
  #end   
end

sgRNA_targets = File.read('app/assets/csv/sgRNA_targets_(USDA_Citrus).csv')
# SgrnaTarget.destroy_all
csv = CSV.parse(sgRNA_targets, :headers => true)
csv.each do |row|
  #if row["Live"] == 'TRUE' #Only render those whose "LIVE" property is TRUE
#    SgrnaTarget.create!(row.to_hash)
  #end   
end

u6table = File.read('app/assets/csv/U6_table_(USDA_Citrus).csv')
# U6Table.destroy_all
csv = CSV.parse(u6table, :headers => true)
csv.each do |row|
  #if row["Live"] == 'TRUE' #Only render those whose "LIVE" property is TRUE
#    U6Table.create!(row.to_hash)
  #end   
end
