require 'machinist/active_record'

Card.blueprint do
	name = {"rspec test"}
	price = 65
	color = "blue"
	set = "big set"
end