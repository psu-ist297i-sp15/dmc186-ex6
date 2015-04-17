# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# create users
users = [
  { email: 'dan.bou@example.com', password: '12345678', password_confirmation: '12345678' },
  { email: 'jen.smo@example.com', password: '12345678', password_confirmation: '12345678' },
  { email: 'jane.doe@example.com', password: '12345678', password_confirmation: '12345678' },
]
users.each do |u|
  new_user = User.new
  new_user.email = u[:email]
  new_user.password = u[:password]
  new_user.password_confirmation = u[:password_confirmation]
  new_user.save!
end

# create topics
5.times do |i|
  t = Topic.create(title: "Topic ##{i}", description: "This topic is cool because everyone loves the topic number ##{i}.")
  rand(1..100).times do |j|
    vote = t.votes.create
    vote.user_id = User.all[rand(0..User.count-1)][:id]
    vote.save
  end
end
