puts "Cleaning the DB..."

Car.destroy_all
Owner.destroy_all

puts "Creating owners ..."
john = Owner.create!(nickname: "Johnny B Good")
seb = Owner.create!(nickname: "The Saint")
georgina = Owner.create!(nickname: "Poshbird")
freddie = Owner.create!(nickname: "Not a geezer")
trev = Owner.create!(nickname: "Clever")

puts "Creating cars..."
Car.create!(brand: "McLaren", model: "12C", year: 1999, fuel: "Unleaded petrol", owner: john)

Car.create!(brand: "Porsche ", model: "959", year: 1987, fuel: "Unleaded petrol", owner: seb )

Car.create!(brand: "Nolan", model: "M600", year: 2012, fuel: "Unleaded petrol", owner: georgina )

Car.create!(brand: "Lancia", model: "Stratos", year: 1975, fuel: "Unleaded petrol", owner: freddie )

Car.create!(brand: "Jaguar", model: "XJ220", year: 1999, fuel: "Unleaded petrol", owner: trev)

puts "Done! #{Owner.count} owners and #{Car.count} cars created"
