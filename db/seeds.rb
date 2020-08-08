# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Destroy seeds
puts "Deleting seeds..."
User.destroy_all
Company.destroy_all
Course.destroy_all


#Users
puts "Creating users..."
pedro = User.create!(email: "pedro@mail.com", password: '123456789', first_name: 'Pedro', last_name: 'Fernandez', avatar: 'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2000&q=80')
hernan = User.create!(email: 'hernan@mail.com', password: '123456789', first_name: 'Hernán', last_name: 'Ayala', avatar: 'https://images.unsplash.com/photo-1564564244660-5d73c057f2d2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1355&q=80')


#Companies
puts "Creating companies..."
ibm = Company.create!(name: "IBM", image: "https://tentulogo.com/wp-content/uploads/IBM-logo-FB.jpg")
globant = Company.create!(name: "Globant", image: "https://emprendedoresnews.com/wp-content/uploads/2020/01/company_5d7c04ad08a25a53fd4d5987.png")
auth0 = Company.create!(name: "Auth0", image: "https://cms-assets.tutsplus.com/uploads/users/769/posts/31134/preview_image/auth0.png")

#Courses
puts "Creating courses"

#Data Science
## Cursos IBM
Course.create!(title: "Data Science", company: ibm, category: 'data_science', title: "IBM Data Science", description: "Kickstart your career in data science & ML. Master data science, learn Python & SQL, analyze & visualize data, build machine learning models.", image: 'https://i.pinimg.com/originals/7d/f5/84/7df58491c7f21e09d4b6b5f4df5d2bba.jpg', video: "https://www.youtube.com/watch?v=Bcwd7kmJjHo")
## Cursos Globant
Course.create!(title: "Data Science", company: globant, category: 'data_science', title: 'Data Science - Globant Academy', description: "This is the era of big data. Advances in microelectronics and computer technology make it easier to collect and store huge amounts of data that comes in with great velocity. These days we can easily gather information and measurements that only a few years ago were too expensive to obtain. Over the next decade, a key factor which will decide whether companies succeed or fall behind will be whether they are able to turn their data into insights and actions.", image: 'https://blog.educacionit.com/wp-content/uploads/2019/04/blog-educacionit-12.jpg', video: 'https://www.youtube.com/watch?v=UY7TYoxI-b4')
## Cursos Auth0
Course.create!(title: "Data Science", company: auth0, category: 'data_science', description: 'The art of uncovering the insights and trends in data has been around since ancient times. The ancient Egyptians used census data to increase efficiency in tax collection and they accurately predicted the flooding of the Nile river every year. Since then, people working in data science have carved out a unique and distinct field for the work they do.' title: 'What is Data Science?', image:'https://images.unsplash.com/photo-1495592822108-9e6261896da8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80', video: 'https://www.youtube.com/watch?v=RUJrAZmrskM')
