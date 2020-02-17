# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)	
#10.times do
#		User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Hipster.sentence, email: Faker::Internet.email, age: rand(16..43))
#	end
#10.times do
#	City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
#end
 10.times do |i|
	 User.find(i+1).update(city_id: City.all.ids.sample)
 end
 #20.times do
#	 Gossip.create(title: Faker::Hipster.sentence(word_count: 3), content: Faker::Hipster.sentence, user_id: User.all.ids.sample)
 #end
# 10.times do
#	 Tag.create(title: Faker::Types.rb_string)
 #end
# 20.times do |i|
#	 JoinTableGossipTag.find(i+1).update(tag_id: Tag.all.ids.sample, gossip_id: i+1)
#end
 #10.times do
#	 PrivateMessage.create(content: Faker::Hipster.sentences, recipient_id: User.all.ids.sample, sender_id: User.all.ids.sample)
# end
