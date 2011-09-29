# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cars = Car.create([
	{ make: "Audi", model: "A4", built_at: "2004-02-02", e_space: 1869, e_power: 96, e_horses: 131, price: 9000, length: 173000},
	{ make: "Audi", model: "A4", built_at: "2002-02-02", e_space: 2500, e_power: 120, e_horses: 164, price: 6800, length: 196256},
	{ make: "Audi", model: "A4", built_at: "2003-02-02", e_space: 1595, e_power: 75, e_horses: 102, price: 6100, length: 161150},

	{ make: "BMW", model: "5", built_at: "2008-02-02", e_space: 2500, e_power: 130, e_horses: 177, price: 11000, length: 240000},
	{ make: "BMW", model: "5", built_at: "2001-02-02", e_space: 2497, e_power: 120, e_horses: 164, price: 5500, length: 245000},
	
	{ make: "BMW", model: "6", built_at: "2007-02-02", e_space: 2996, e_power: 190, e_horses: 259, price: 43500, length: 88974},
	{ make: "BMW", model: "6", built_at: "2007-02-02", e_space: 2996, e_power: 190, e_horses: 259, price: 20500, length: 136000},

	{ make: "Audi", model: "A6", built_at: "2000-02-02", e_space: 2500, e_power: 180, e_horses: 245, price: 5000, length: 250000},
	
	{ make: "AlfaRomeo", model: "Giulietta", built_at: "2011-02-02", e_space: 1368, e_power: 88, e_horses: 120, price: 16500, length: 5800},
	{ make: "Chrysler", model: "Crossfire", built_at: "2003-02-02", e_space: 1368, e_power: 160, e_horses: 218, price: 9900, length: 137500},

	{ make: "Chrysler", model: "Crossfire", built_at: "2007-02-02", e_space: 3199, e_power: 160, e_horses: 218, price: 13990, length: 14100},
	
])