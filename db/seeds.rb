# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Grape.destroy_all
# Region.destroy_all
# Winetype.destroy_all
# Bottle.destroy_all

grape1 = Grape.create!(name: "Syrah, Grenache")
grape2 = Grape.create!(name: "Merlot")

region1 = Region.create!(name: "Luberon")
region2 = Region.create!(name: "Bordeaux")

winetype1 = WineType.create!(name: "Sec")
winetype2 = WineType.create!(name: "Tanique")

# stock1 = Stock.create!()

bottle = Bottle.new(
  name: "Luberon Rouge",
  vineyard: "Domaine de Fontenille",
  year: "2018",
  description: "Un vin puissant, au tannin équilibrer, une acidité présente en bouche",
  grape: grape1,
  region: region1,
  wine_type: winetype2
  )

bottle.save!

Bottle.create(
   name: "Bordeaux Rouge",
   vineyard: "Mouton Cadet",
   year: "2017",
   description: "Un vin puissant, au tannin équilibrer, une acidité présente en bouche",
   grape: grape2,
   region: region2,
   wine_type: winetype1
  )


puts "fini"
