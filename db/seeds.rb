# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create!({email: 'qwerty@gmail.com', password: 'asdfgh', password_confirmation: 'asdfgh', first_name: 'user', last_name: 'one'})

30.times do 
  Course.create!({title: Faker::Educator.course_name, description: Faker::Quote.yoda, user_id: User.first.id})


end