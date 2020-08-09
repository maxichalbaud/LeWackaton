require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Project Assignment
project_web_dev= "El proyecto consiste en el desarrollando una aplicación web que permita la consulta de información temática relativa a las infraestructuras municipales (ej. saneamiento, alumbrado…) obtenidas de un Web Feature Service (WFS) público y su representación geográfica en visor de mapas."


#Destroy seeds
puts "Deleting seeds..."
UserCourse.destroy_all
Company.destroy_all
Question.destroy_all
Course.destroy_all
User.destroy_all


#Companies
puts "Creating companies..."
ibm = Company.create!(name: "IBM", image: "https://tentulogo.com/wp-content/uploads/IBM-logo-FB.jpg")
globant = Company.create!(name: "Globant", image: "https://emprendedoresnews.com/wp-content/uploads/2020/01/company_5d7c04ad08a25a53fd4d5987.png")
auth0 = Company.create!(name: "Auth0", image: "https://cms-assets.tutsplus.com/uploads/users/769/posts/31134/preview_image/auth0.png")
mercadolibre = Company.create!(name: 'MercadoLibre', image: 'https://www.mercadonegro.pe/wp-content/uploads/2020/03/Logo-MercadoLibre-Codo-a-Codo-2-1000x600.png')
quilmes = Company.create!(name: 'Quilmes', image: 'https://upload.wikimedia.org/wikipedia/commons/5/5b/Quilmes_Logo.svg')
google = Company.create!(name: 'Google', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/1200px-Google_2015_logo.svg.png')
amazon = Company.create!(name: 'Amazon', image: 'https://static.trendme.net/user_avatar/logo_full_5246.jpg')


#Users
puts "Creating users..."
flor = User.create!(email: "flor@mail.com", password: '123456789', first_name: 'Flor', last_name: 'Fernandez', avatar: 'https://images.unsplash.com/photo-1544725176-7c40e5a71c5e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1647&q=80')
hernan = User.create!(email: 'hernan@mail.com', password: '123456789', first_name: 'Hernán', last_name: 'Ayala', avatar: 'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2000&q=80')

#Courses
puts "Creating courses"

#Data Science
## Cursos IBM
ibm_data_sci = Course.create!(company: ibm, category: 'data_science', title: "IBM Data Science", description: "Kickstart your career in data science & ML. Master data science, learn Python & SQL, analyze & visualize data, build machine learning models.", image: 'https://i.pinimg.com/originals/7d/f5/84/7df58491c7f21e09d4b6b5f4df5d2bba.jpg', video: "Bcwd7kmJjHo")
## Cursos Globant
Course.create!(company: globant, category: 'data_science', title: 'Data Science - Globant Academy', description: "This is the era of big data. Advances in microelectronics and computer technology make it easier to collect and storage.", image: 'https://blog.educacionit.com/wp-content/uploads/2019/04/blog-educacionit-12.jpg', video: 'UY7TYoxI-b4')
## Cursos Auth0
Course.create!(company: auth0, category: 'data_science', title: 'What is Data Science?', description: 'The art of uncovering the insights and trends in data has been around since ancient times.', image:'https://images.unsplash.com/photo-1495592822108-9e6261896da8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80', video: 'RUJrAZmrskM')


#Marketing Digital
Course.create!(company: ibm, category: 'digital_marketing', title: 'Digital Marketing 101', description: 'Master Digital Marketing Strategy, Social Media Marketing, SEO, YouTube, Email, Facebook Marketing, Analytics & More!', image: 'https://staritltd.com/wp-content/uploads/2020/01/digital-market.jpg', video: 'V92Jx72x88c')
Course.create!(company: ibm, category: 'product_management', title: 'Product Management :Agile Requirements using Product Backlog', description: 'Learn to manage requirements as a scrum product owner using user stories ( Business Analysis , Scrum Master)', image: 'https://miro.medium.com/proxy/1*6ge3gXH51icSvin7oV-4-Q.png', video: 'yUOC-Y0f5ZQ')
Course.create!(company: ibm, category: 'data_science', title: 'Big Data con Python y Spark', description: 'Dive right in with 20+ hands-on examples of analyzing large data sets with Apache Spark, on your desktop or on Hadoop!', image: 'https://www.auraportal.com/wp-content/uploads/2020/01/big-data-cover-v2.png', video: 'M26iIqmqWkI')
Course.create!(company: ibm, category: 'product_management', title: 'Become a SCRUM master', description: 'Learn what scrum is and why it is so powerful for delivering even the most complex project on time.', image: "https://xn--zoraidaceballosdemario-4ec.info/wp-content/uploads/2019/04/Zoraida-Ceballos-De-Mari%C3%B1o-Scrum.png", video: 'cXinM8juOoc')


15.times do
  Course.create!(title: Faker::ProgrammingLanguage.name, company: Company.where.not(name:"IBM").sample, category:[1,2,3].sample, image: "https://static.thenounproject.com/png/340719-200.png")
end

#Questions
puts "Creating questions:"
Course.all.each do |course|
  5.times do
    Question.create!(course: course, assignment: Faker::TvShows::TheExpanse.quote, correct_answer: [true, false].sample)
  end
end
#Web Development
ibm_web_dev = Course.create!(company: ibm, category: 'web_development', title: 'Introduction to Cloud Development with HTML5, CSS3, and JavaScript', description: 'Learn the key tools and programming languages to bootstrap your career as a Cloud Developer.', image: 'https://img-a.udemycdn.com/course/750x422/2314744_c707.jpg' , video: 'mU6anWqZJcc', project: project_web_dev)
Question.create!(course: ibm_web_dev, assignment: "The core purpose of HTML is to(hint: something a pure text file with content won't be able to accomplish)1 punto7.W3C (World Wide Web Consortium) is the only organization that dictates what andhow browsers should implement HTML5", correct_answer: true)
Question.create!(course: ibm_web_dev, assignment: "Browsers ALWAYS interpret HTML sequentially, top to bottom", correct_answer: true)
Question.create!(course: ibm_web_dev, assignment: "Meta tags communicate information about the browser to the server", correct_answer: true)
Question.create!(course: ibm_web_dev, assignment: "The following code rendering in the middle section of the page allows someone todirectly link to that middle section of the page, not just the beginning of the page:1 punto21.Even though the width and height attributes of the 'img' tag are not required, it'salways a good idea to use them", correct_answer: false)
Question.create!(course: ibm_web_dev, assignment: "WHATWG does NOT version HTML. For them, it'sNOTHTML5. It's just HTML.", correct_answer: true)
Question.create!(course: ibm_web_dev, assignment: " By default, a block-level element tries to take up as much horizontal space as itscontaining element will allow", correct_answer: false)


#User courses
puts "Creating user courses"
UserCourse.create!(user: flor, course: ibm_data_sci, status: 'pending')




