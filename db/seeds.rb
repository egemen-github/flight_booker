# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

Passenger.delete_all
Booking.delete_all
Airport.delete_all
Flight.delete_all

Airport.find_or_create_by(name: 'IST', id: 1, location: 'Istanbul, Turkey')
Airport.find_or_create_by(name: 'BER', id: 2, location: 'Berlin, Germany')
Airport.find_or_create_by(name: 'OSL', id: 3, location: 'Oslo, Norway')
Airport.find_or_create_by(name: 'JFK', id: 4, location: 'New York, United States')
Airport.find_or_create_by(name: 'CPT', id: 5, location: 'Cape Town, South Africa')
Airport.find_or_create_by(name: 'HND', id: 6, location: 'Tokyo, Japan')
Airport.find_or_create_by(name: 'GIG', id: 7, location: 'Rio de Janeiro, Brazil')


(Date.today..Date.today + 150.days).each do |day|
   puts day.strftime("%d/%m/%Y")
   i = 0
   while i < 7
      Flight.find_or_create_by(departure_id: 1, arrival_id: ([*1..7] - [1]).sample, flight_date: Date.strptime("#{day.strftime("%d/%m/%Y")}", "%d/%m/%Y"), flight_time: Time.new.change(hour: rand(0..23), min: rand(0..59)), duration: ([*1..6]).sample)
      Flight.find_or_create_by(departure_id: 2, arrival_id: ([*1..7] - [2]).sample, flight_date: Date.strptime("#{day.strftime("%d/%m/%Y")}", "%d/%m/%Y"), flight_time: Time.new.change(hour: rand(0..23), min: rand(0..59)), duration: ([*1..9]).sample)
      Flight.find_or_create_by(departure_id: 3, arrival_id: ([*1..7] - [3]).sample, flight_date: Date.strptime("#{day.strftime("%d/%m/%Y")}", "%d/%m/%Y"), flight_time: Time.new.change(hour: rand(0..23), min: rand(0..59)), duration: ([*1..8]).sample)
      Flight.find_or_create_by(departure_id: 4, arrival_id: ([*1..7] - [4]).sample, flight_date: Date.strptime("#{day.strftime("%d/%m/%Y")}", "%d/%m/%Y"), flight_time: Time.new.change(hour: rand(0..23), min: rand(0..59)), duration: ([*1..10]).sample)
      Flight.find_or_create_by(departure_id: 5, arrival_id: ([*1..7] - [5]).sample, flight_date: Date.strptime("#{day.strftime("%d/%m/%Y")}", "%d/%m/%Y"), flight_time: Time.new.change(hour: rand(0..23), min: rand(0..59)), duration: ([*1..10]).sample)
      Flight.find_or_create_by(departure_id: 6, arrival_id: ([*1..7] - [6]).sample, flight_date: Date.strptime("#{day.strftime("%d/%m/%Y")}", "%d/%m/%Y"), flight_time: Time.new.change(hour: rand(0..23), min: rand(0..59)), duration: ([*1..10]).sample)
      Flight.find_or_create_by(departure_id: 7, arrival_id: ([*1..7] - [7]).sample, flight_date: Date.strptime("#{day.strftime("%d/%m/%Y")}", "%d/%m/%Y"), flight_time: Time.new.change(hour: rand(0..23), min: rand(0..59)), duration: ([*1..10]).sample)
      i += 1
   end
end
