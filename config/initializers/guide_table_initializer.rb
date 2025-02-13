require 'csv'    
guide_table = File.read('app/assets/csv/Guide_table_(USDA_Citrus).csv')
# GuideTable.destroy_all
csv = CSV.parse(guide_table, :headers => true)
csv.each do |row|
#    GuideTable.create!(row.to_hash)
end
