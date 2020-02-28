# frozen_string_literal: true

# ActiveRecord::Base.logger = Logger.new(STDOUT)
require 'csv'
require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
CatTemp.destroy_all
Temperament.destroy_all
Cat.destroy_all
CatBreed.destroy_all
CountryOrigin.destroy_all

csv_text = File.read(Rails.root.join('lib', 'seeds', 'Temperament.csv'))
csv = CSV.parse(csv_text, headers: true)
csv.each do |row|
  t = Temperament.new
  t.behavour = row['Behavour']
  t.description = row['Description']
  t.save
  puts "#{t.behavour} saved"
end

csv_text2 = File.read(Rails.root.join('lib', 'seeds', 'Country.csv'))
csv2 = CSV.parse(csv_text2, headers: true)
csv2.each do |row|
  o = CountryOrigin.new
  o.country_name = row[0]
  o.abbreviation = row['abbrivation']
  o.save
  puts "#{o.country_name} saved"
end

csv_text3 = File.read(Rails.root.join('lib', 'seeds', 'CatBreeds.csv'))
csv3 = CSV.parse(csv_text3, headers: true)
csv3.each do |row|
  c = CatBreed.new
  c.breed_name = row['breedName']
  c.country_origin = CountryOrigin.find_by(abbreviation: row['country_codes'])
  c.age_range = row['age_range']
  c.save
  puts "#{c.breed_name} saved"
end

50.times do
  Cat.create(name: Faker::Name.first_name, shots: true, cat_breed: CatBreed.limit(1).order('RANDOM()').first)
end
150.times do
  CatTemp.create(cat: Cat.limit(1).order('RANDOM()').first, temperament: Temperament.limit(1).order('RANDOM()').first)
end

puts "There are now #{CatTemp.count} rows in the CatTemp table"
puts "There are now #{Cat.count} rows in the Cats table"
puts "There are now #{CatBreed.count} rows in the CatBreed table"
puts "There are now #{Temperament.count} rows in the temperament table"
puts "There are now #{CountryOrigin.count} rows in the CountryOrigin table"
