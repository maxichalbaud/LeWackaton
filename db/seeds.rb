require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Companies


#Destroy seeds
puts "Deleting seeds..."
User.destroy_all
Company.destroy_all
Course.destroy_all


#Companies
puts "Creating companies..."
ibm = Company.create!(name: "IBM", image: "https://tentulogo.com/wp-content/uploads/IBM-logo-FB.jpg")
globant = Company.create!(name: "Globant", image: "https://emprendedoresnews.com/wp-content/uploads/2020/01/company_5d7c04ad08a25a53fd4d5987.png")
auth0 = Company.create!(name: "Auth0", image: "https://cms-assets.tutsplus.com/uploads/users/769/posts/31134/preview_image/auth0.png")

#Users
puts "Creating users..."
pedro = User.create!(email: "pedro@mail.com", password: '123456789', first_name: 'Pedro', last_name: 'Fernandez', avatar: 'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2000&q=80')
hernan = User.create!(email: 'hernan@mail.com', password: '123456789', first_name: 'Hernán', last_name: 'Ayala', avatar: 'https://images.unsplash.com/photo-1564564244660-5d73c057f2d2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1355&q=80')

#Courses
puts "Creating courses"

#Data Science
## Cursos IBM
ibm_data_sci = Course.create!(company: ibm, category: 'data_science', title: "IBM Data Science", description: "Kickstart your career in data science & ML. Master data science, learn Python & SQL, analyze & visualize data, build machine learning models.", image: 'https://i.pinimg.com/originals/7d/f5/84/7df58491c7f21e09d4b6b5f4df5d2bba.jpg', video: "Bcwd7kmJjHo")
## Cursos Globant
Course.create!(company: globant, category: 'data_science', title: 'Data Science - Globant Academy', description: "This is the era of big data. Advances in microelectronics and computer technology make it easier to collect and storage.", image: 'https://blog.educacionit.com/wp-content/uploads/2019/04/blog-educacionit-12.jpg', video: 'UY7TYoxI-b4')
## Cursos Auth0
Course.create!(company: auth0, category: 'data_science', title: 'What is Data Science?', description: 'The art of uncovering the insights and trends in data has been around since ancient times.', image:'https://images.unsplash.com/photo-1495592822108-9e6261896da8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80', video: 'RUJrAZmrskM')

15.times do
  Course.create!(title: Faker::ProgrammingLanguage.name, company: Company.all.sample, category:[1,2,3].sample)
end

#Questions
puts "Creating questions:"
Course.all.each do |course|
  5.times do
    Question.create!(course: course, assignment: Faker::TvShows::TheExpanse.quote, correct_answer: [true, false].sample)
  end
end


#User courses
puts "Creating user courses"
UserCourse.create!(user: pedro, course: ibm_data_sci, status: 'pending')


