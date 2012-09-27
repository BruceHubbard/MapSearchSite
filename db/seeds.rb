# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Address.delete_all
Address.create(:address1 => "2033 Macintosh Ln.", :city => "Middletown", :state => "OH", :zip => "45044",
				:latitude => 33.5206, :longitude => -86.8025)
