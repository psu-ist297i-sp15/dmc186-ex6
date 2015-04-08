# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
5.times do |i|
  t = Topic.create(title: "Topic ##{i}", description: "This topic is cool because everyone loves the topic number ##{i}.")
  rand(1..100).times do |j|
    t.votes.create
  end
end
x = User.new
x.email='dan.cou@example.com'
x.password='12345678'
x.password_confirmation='12345678'
x.save!
