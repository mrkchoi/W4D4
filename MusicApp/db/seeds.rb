# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




ActiveRecord::Base.transaction do

  ################################### 
  # CREATE USERS
  ################################### 
  User.destroy_all


  User.create(email: "mrkchoi@gmail.com", password: 'password')
  User.create(email: "david@gmail.com", password: 'password')
  User.create(email: "kenny@gmail.com", password: 'password')
  User.create(email: "jimmy@gmail.com", password: 'password')
  User.create(email: "joe@gmail.com", password: 'password')


  ################################### 
  # CREATE BANDS
  ################################### 
  20.times do
    Band.create(name: Faker::Music.band)
  end

end