# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.where(email: "thecarehubapp@gmail.com").first_or_create.update_attributes(name: "Care Hub App Team",
    email: "thecarehubapp@gmail.com",
    password:              "devcamp2",
    password_confirmation: "devcamp2")