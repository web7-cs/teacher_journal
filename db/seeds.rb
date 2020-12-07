# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 AdminUser.create!(email: 'admin@example.com', password: '123123', password_confirmation: '123123') if Rails.env.development?

User.create!(username: "PanuvitChantara",
             email: "someone@someone.com",
             password: "foobar",
             password_confirmation: "foobar",
             is_creator: true)

99.times do |n|
  username = "John-#{n+1}"
  email = "example-#{n+1}@smc.com"
  password = "password"
  User.create!(username: username,
               email: email,
               password: password,
               password_confirmation: password,
               is_creator: false)
end

#Create following relationships
users = User.all
user = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed)}
followers.each { |follower| follower.follow(user)}