  require 'csv'

# csv = File.read(Rails.root.join("lib", "seeds", "regions.csv"))
# # csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
# csv_options = { headers: :first_row, header_converters: :symbol, :encoding => "ISO-8859-1" }
# CSV.foreach(csv, csv_options) do |row|
#   Region.create!(row)
# end
# puts "Done"

user = User.create!(email: 'lol@lol.com', password: 'azerty')
csv_options = { col_sep: ';', quote_char: '"', headers: :first_row }

region_table = CSV.parse(File.read('lib/seeds/regions.csv'), csv_options)
  region_table['name'].each do |name|
    Region.create!(name: name)
  end

grape_table = CSV.parse(File.read('lib/seeds/grapes.csv'), csv_options)
  grape_table['name'].each do |name|
    Grape.create!(name: name)
  end

winetype_table = CSV.parse(File.read('lib/seeds/wine_type.csv'), csv_options)
  winetype_table['name'].each do |name|
    WineType.create!(name: name)
  end

foods_table = CSV.parse(File.read('lib/seeds/foods.csv'), csv_options)
  foods_table['name'].each do |name|
    Food.create!(name: name)
  end

bottles_table = File.read(Rails.root.join("lib", "seeds", "bottles.csv"))
csv = CSV.parse(bottles_table, csv_options)
csv.each do |row|
  t = Bottle.new
  t.name = row["name"]
  t.vineyard = row["vineyard"]
  t.year = row["year"]
  t.wine_type_id = row["wine_type_id"]
  t.region_id = row["region_id"]
  t.grape_id = row["grape_id"]
  t.description = row["description"]
  t.peak_year = row["peak_year"]
  t.preservation_advice = row["preservation_advice"]
  t.image = row["image"]
  t.save
end

associations_table = File.read(Rails.root.join("lib", "seeds", "associations.csv"))
csv = CSV.parse(associations_table, csv_options)
csv.each do |row|
  t = Association.new
  t.food_id = row["food_id"]
  t.bottle_id = row["bottle_id"]
  t.save
end


puts "Terminé"

# csv_text = File.read(Rails.root.join("lib", "seeds", "regions.csv"))
# csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")

# csv.each do |row|
#   Region.create!(name = row[:name])
# end
# puts "Done"



# CSV.foreach(Rails.root.join('data/grapes.csv'), headers: true) do |row|
#   Region.create( {
#     name: row["name"]
#   } )
# end

# csv_text = File.read(Rails.root.join("db", "wine_type.csv"))
# csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
# csv.each do |row|
#   t = WineType.new
#   t.name = row["name"]
#   t.save
#   puts "#{t.name} saved"
# end
# puts "Done"



# csv_text = File.read(Rails.root.join("db", "bottles.csv"))
# csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
# csv.each do |row|
#   t = Bottle.new
#   t.name = row["name"]
#   t.vineyard = row["vineyard"]
#   t.year = row["year"]
#   t.wine_type_id = row["wine_type_id"]
#   t.region_id = row["region_id"]
#   t.grape_id = row["grape_id"]
#   t.description = row["description"]
#   t.peak_year = row["peak_year"]
#   t.preservation_advice = row["preservation_advice"]
#   t.save
#   puts "#{t.name}, #{t.vineyard} saved"
# end
# puts "There are now #{Bottle.count} rows in the bottles table"




# Grape.destroy_all
# Region.destroy_all
# Winetype.destroy_all
# Bottle.destroy_all


# grape1 = Grape.create!(name: "Syrah, Grenache")
# grape2 = Grape.create!(name: "Merlot")

# region1 = Region.create!(name: "Luberon")
# region2 = Region.create!(name: "Bordeaux")

# winetype1 = WineType.create!(name: "Sec")
# winetype2 = WineType.create!(name: "Tanique")

# stock = Stock.create!(quantity: 0, )

# bottle = Bottle.new(
#   name: "Luberon Rouge",
#   vineyard: "Domaine de Fontenille",
#   year: "2018",
#   description: "Un vin puissant, au tannin équilibrer, une acidité présente en bouche",
#   grape: grape1,
#   region: region1,
#   wine_type: winetype2
#   quantity: 0
#   )

# bottle.save!

# Bottle.create(
#    name: "Bordeaux Rouge",
#    vineyard: "Mouton Cadet",
#    year: "2017",
#    description: "Un vin puissant, au tannin équilibrer, une acidité présente en bouche",
#    grape: grape2,
#    region: region2,
#    wine_type: winetype1
#   )

# user = User.first
# cellar = Cellar.create!(user: user)
# stock1 = Stock.create!(quantity: 5, cellar:cellar, bottle: Bottle.first)
# stock2 = Stock.create!(quantity: 3, cellar:cellar, bottle: Bottle.last)





