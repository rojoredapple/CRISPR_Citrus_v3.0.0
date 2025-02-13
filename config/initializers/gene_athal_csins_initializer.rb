require 'csv'    

athal = File.read('app/assets/csv/Gene_pages_Athal_(USDA_Citrus).csv')
# GeneAthal.destroy_all
csv = CSV.parse(athal, :headers => true)
csv.each do |row|
#    GeneAthal.create!(row.to_hash)
end

csin = File.read('app/assets/csv/Gene_pages_Csin_(USDA_Citrus).csv')
# GeneCsin.destroy_all
csv = CSV.parse(csin, :headers => true)
csv.each do |row|
#    GeneCsin.create!(row.to_hash)
end
