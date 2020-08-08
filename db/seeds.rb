require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Company.create(name: "IBM", image: "https://tentulogo.com/wp-content/uploads/IBM-logo-FB.jpg")
Company.create(name: "Globant", image: "https://emprendedoresnews.com/wp-content/uploads/2020/01/company_5d7c04ad08a25a53fd4d5987.png")
Company.create(name: "Auth0", image: "https://cms-assets.tutsplus.com/uploads/users/769/posts/31134/preview_image/auth0.png")

Course.create(title: "Data Science", company: Company.find_by(name:"IBM"), category: 1)
Course.create(title: "Data Science", company: Company.find_by(name:"Globant"), category: 1)
Course.create(title: "Data Science", company: Company.find_by(name:"Auth0"), category: 1)
Course.create(title: "Data Science", company: Company.find_by(name:"Auth0"), category: 2)
Course.create(title: "Data Science", company: Company.find_by(name:"Auth0"), category: 2)
Course.create(title: "Data Science", company: Company.find_by(name:"Auth0"), category: 2)
Course.create(title: "Data Science", company: Company.find_by(name:"Auth0"), category: 3)
Course.create(title: "Data Science", company: Company.find_by(name:"Auth0"), category: 3)
Course.create(title: "Data Science", company: Company.find_by(name:"Auth0"), category: 3)

15.times do
  Question.create(course: Course.all.sample, assignment: Faker::TvShows::TheExpanse.quote, correct_answer: [true, false].sample)
end
