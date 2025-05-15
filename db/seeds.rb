puts "Cleaning the DB..."

Car.destroy_all

puts "Creating owners ..."
John = Owner.create!(nickname: "Johnny B Good")
Seb = Owner.create!(nickname: "The Saint")
Georgina = Owner.create!(nickname: "Poshbird")
Freddie Owner.create!(nickname: "not a geezer")
Trev = Owner.create!(nickname: "Clever")

puts "Creating cars..."
Car.create!(brand: "McLaren", model: "570" year: 1999, fuel: "Unleaded petrol", owner: Johnny B Good )

Car.create!(brand: "Porsche 959", model: "570" year: 1999, fuel: "Unleaded petrol", owner: The Saint )

Car.create!(brand: "Nolan", model: "570" year: 1999, fuel: "Unleaded petrol", owner: Poshbird )

Car.create!(brand: "Stratos", model: "570" year: 1999, fuel: "Unleaded petrol", owner: not a geezer )

Car.create!(brand: "Jaguar", model: "500" year: 1999, fuel: "Unleaded petrol", owner: Clever )

puts "Done! #{Owner.count} owners and #{Car.count} cars created"
