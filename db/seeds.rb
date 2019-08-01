# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

City.destroy_all
User.destroy_all

	random_city_list = []
10.times do
	random_city = City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
	random_city_list << random_city
end

	random_user_list = []
10.times do
	random_user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence(word_count: 9, supplemental: false, random_words_to_add: 10), email: Faker::Internet.email, age: Faker::Number.within(range: 18..70), city: random_city_list.sample)
	random_user_list << random_user
end

20.times do
	random_gossip = Gossip.create(title: Faker::Book.title, content: Faker::Lorem.sentence(word_count: 9, supplemental: false, random_words_to_add: 10), user: random_user_list.sample)
end


#10.times do
#	random_user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence(word_count: 9, supplemental: false, random_words_to_add: 10), email: Faker::Internet.email, age: Faker::Number.within(range: 18..70), city_id: random_user_list.sample)
#end
