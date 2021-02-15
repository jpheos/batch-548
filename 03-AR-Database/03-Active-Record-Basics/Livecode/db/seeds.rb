require 'faker'

Restaurant.destroy_all

CITIES = %w[Lyon Paris]

10.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    city: CITIES.sample,
    rating: rand(0..10)
  )
  restaurant.save!
end
