# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
auciel = { name: 'Auciel', address: 'Paris', phone_number: '220987', category: 'chinese'}
becarli = { name: 'Becarli', address: 'Antony', phone_number: '220987', category: 'japanese'}
career = { name: 'Career', address: 'Cretail', phone_number: '220987', category: 'italian'}
varetyy = { name: 'Varetyy', address: 'Verbal', phone_number: '220987', category: 'french'}
euthttt = { name: 'Euthttt', address: 'New York', phone_number: '220987', category: 'french'}

[auciel, becarli, career, varetyy, euthttt].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
