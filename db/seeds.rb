# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Company.create(name: "IBM")
Company.create(name: "Globant")
Company.create(name: "Auth0")

Course.create(title: "Data Science", company: Company.find_by(name:"IBM"))
Course.create(title: "Data Science", company: Company.find_by(name:"Globant"))
Course.create(title: "Data Science", company: Company.find_by(name:"Auth0"))
