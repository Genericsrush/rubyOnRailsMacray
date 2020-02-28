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
  t = Temperament.create(behavour: row['Behavour'],
                         description: row['Description'])

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
  c = CatBreed.create!(breed_name: row['breedName'],
                       country_origin: CountryOrigin.find_by(country_name: row['origin']),
                       age_range: row['age_range'])
  4.times do
    cat = c.cats.create(name: Faker::Name.first_name,
                        shots: true)
    2.times do
      offset = rand(Temperament.count)
      cat.cat_temps.create(temperament: Temperament.offset(offset).first)
    end
  end
  puts "#{c.breed_name} saved"
end

puts "There are now #{CatTemp.count} rows in the CatTemp table"
puts "There are now #{Cat.count} rows in the Cats table"
puts "There are now #{CatBreed.count} rows in the CatBreed table"
puts "There are now #{Temperament.count} rows in the temperament table"
puts "There are now #{CountryOrigin.count} rows in the CountryOrigin table"
