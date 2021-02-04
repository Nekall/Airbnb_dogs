Dogsitter.destroy_all
Dog.destroy_all
Stroll.destroy_all
City.destroy_all

5.times do
  city = City.create(city_name: Faker::Address.city)
end

15.times do
  Dogsitter.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  city_id: City.all.sample.id
  )
end

45.times do
  Dog.create(
  name: Faker::Creature::Dog.name,
  gender:Faker::Creature::Dog.gender,
  breed: Faker::Creature::Dog.breed,
  city_id: City.all.sample.id
  )
end

35.times do
  Stroll.create(
  dogsitter_id: Dogsitter.all.sample.id,
  dog_id: Dog.all.sample.id,
  date: Faker::Time.forward(days: 30, period: :day)
  )
end

puts "Dogs et Dogsitters et Strolls créés"
