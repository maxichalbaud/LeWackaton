require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Project Assignment
project_web_dev= "<div class='row d-flex justify-content-center'>
          <h3 style='width: 800px;'>Build a Product Landing Page</h3>
          <p style='width: 800px; text-align: center;'>Objective: Build a CodePen.io app that is functionally similar to this: <a href='https://codepen.io/freeCodeCamp/full/RKRbwL'>https://codepen.io/freeCodeCamp/full/RKRbwL.</a></p>
          <p style='width: 800px; text-align: center;'>Fulfill the below user stories and get all of the tests to pass. Give it your own personal style.</p>
          <p style='width: 800px; text-align: center;'>You can use HTML, JavaScript, and CSS to complete this project. Plain CSS is recommended because that is what the lessons have covered so far and you should get some practice with plain CSS. You can use Bootstrap or SASS if you choose. Additional technologies (just for example jQuery, React, Angular, or Vue) are not recommended for this project, and using them is at your own risk. Other projects will give you a chance to work with different technology stacks like React. We will accept and try to fix all issue reports that use the suggested technology stack for this project. Happy coding!</p>
          <div style='width: 800px; text-align: center;' class='mt-5 mb-5'>
            <ul>
              <li>User Story #1: My product landing page should have a header element with a corresponding id='header'.</li>
              <li>User Story #2: I can see an image within the header element with a corresponding id='header-img'. A company logo would make a good image here.</li>
              <li>User Story #3: Within the #header element I can see a nav element with a corresponding id='nav-bar'.</li>
              <li>User Story #4: I can see at least three clickable elements inside the nav element, each with the class nav-link.</li>
              <li>User Story #5: When I click a .nav-link button in the nav element, I am taken to the corresponding section of the landing page.</li>
              <li>User Story #6: I can watch an embedded product video with id='video'.</li>
              <li>User Story #7: My landing page has a form element with a corresponding id='form'.</li>
              <li>User Story #8: Within the form, there is an input field with id='email' where I can enter an email address.</li>
              <li>User Story #9: The #email input field should have placeholder text to let the user know what the field is for.</li>
              <li>User Story #10: The #email input field uses HTML5 validation to confirm that the entered text is an email address.</li>
              <li>User Story #11: Within the form, there is a submit input with a corresponding id='submit'.</li>
              <li>User Story #12: When I click the #submit element, the email is submitted to a static page (use this mock URL: https://www.freecodecamp.com/email-submit).</li>
              <li>User Story #13: The navbar should always be at the top of the viewport.</li>
              <li>User Story #14: My product landing page should have at least one media query.</li>
              <li>User Story #15: My product landing page should utilize CSS flexbox at least once.</li>
            </ul>
          </div>
          "


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
ibm_web_dev = Course.create!(company: ibm, category: 'web_development', title: 'Introduction to Cloud Development with HTML5, CSS3, and JavaScript', description: 'Learn the key tools and programming languages to bootstrap your career as a Cloud Developer.', image: 'https://seo-trench.com/wp-content/uploads/2019/11/12-Websites-You-Should-Check-Out-to-Learn-Web-Development-Fast.png' , video: 'mU6anWqZJcc', project: project_web_dev)
Question.create!(course: ibm_web_dev, assignment: "The core purpose of HTML is to(hint: something a pure text file with content won't be able to accomplish)1 punto7.W3C (World Wide Web Consortium) is the only organization that dictates what andhow browsers should implement HTML5", correct_answer: true)
Question.create!(course: ibm_web_dev, assignment: "Browsers ALWAYS interpret HTML sequentially, top to bottom", correct_answer: true)
Question.create!(course: ibm_web_dev, assignment: "Meta tags communicate information about the browser to the server", correct_answer: true)
Question.create!(course: ibm_web_dev, assignment: "The following code rendering in the middle section of the page allows someone todirectly link to that middle section of the page, not just the beginning of the page:1 punto21.Even though the width and height attributes of the 'img' tag are not required, it'salways a good idea to use them", correct_answer: false)
Question.create!(course: ibm_web_dev, assignment: "WHATWG does NOT version HTML. For them, it'sNOTHTML5. It's just HTML.", correct_answer: true)
Question.create!(course: ibm_web_dev, assignment: " By default, a block-level element tries to take up as much horizontal space as itscontaining element will allow", correct_answer: false)


#User courses
puts "Creating user courses"
UserCourse.create!(user: flor, course: ibm_data_sci, status: 'pending')




