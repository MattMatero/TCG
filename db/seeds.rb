# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

c = Card.new
c.name = "bluecard"
c.set = "best set"
c.price = 50
c.color = "blue"
c.image = "Polar_kraken.jpg"
c.save!

c = Card.new
c.name = "redcard"
c.set = "worst set"
c.price = 50.32
c.color = "red"
c.image = "Kiki.jpg"

c.save!

c = Card.new
c.name = "whitecard"
c.set = "worst set"
c.price = 50
c.color = "white"
c.image = "darksteel_colossus.jpg"

c.save!

c = Card.new
c.name = "greencard"
c.set = "best set"
c.price = 15
c.color = "green"
c.image = "Terastodon.jpg"

c.save!

c = Card.new
c.name = "blackcard"
c.set = "worst set"
c.price = 10
c.color = "black"
c.image = "CryptGhast.jpg"

c.save!

c = Card.new
c.name = "big furry monster"
c.set = "joke set"
c.price = 12.25
c.color = "black"
c.image = "big_furry_monster.jpg"

c.save!