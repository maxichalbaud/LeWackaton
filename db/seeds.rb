# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Users
pedro = User.new(email: "pedro@mail.com", password: '123456789', first_name: 'Pedro', last_name: 'Fernandez', avatar: 'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2000&q=80')
hernan = User.new(email: 'hernan@mail.com', password: '123456789', first_name: 'Hernán', last_name: 'Ayala', avatar: 'https://images.unsplash.com/photo-1564564244660-5d73c057f2d2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1355&q=80')


#Companies
ibm = Company.create(name: "IBM")
globant = Company.create(name: "Globant")
auth0 = Company.create(name: "Auth0")

#Courses
Course.create(title: "Data Science", company: ibm)
Course.create(title: "Data Science", company: globant)
Course.create(title: "Data Science", company: auth0)
