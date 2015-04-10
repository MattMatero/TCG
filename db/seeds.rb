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

c.save!

c = Card.new
c.name = "redcard"
c.set = "worst set"
c.price = 50.32
c.color = "red"

c.save!

c = Card.new
c.name = "whitecard"
c.set = "worst set"
c.price = 50
c.color = "white"

c.save!

c = Card.new
c.name = "greencard"
c.set = "best set"
c.price = 15
c.color = "green"

c.save!

c = Card.new
c.name = "blackcard"
c.set = "worst set"
c.price = 10
c.color = "black"

c.save!