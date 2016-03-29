# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do
  u = User.create(username: Faker::Name.name)
  c = Contact.create(name: u.username,user_id: u.id, email: Faker::Internet.email)
end

User.all.each do |user|
  Contact.all.each do |contact|
    if rand(2) > 0
      ContactShare.create(user_id: user.id, contact_id: contact.id)
    end
  end
end
