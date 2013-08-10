# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

Genre.create(:name=>"Action")
Genre.create(:name=>"Educational")
Genre.create(:name=>"Stratgey")
Genre.create(:name=>"Sport")
PlayStyle.create(:name=>"Board")
PlayStyle.create(:name=>"Card")
PlayStyle.create(:name=>"Video")