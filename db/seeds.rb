# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#   
user = User.where(email: "superadmin@blog.rails").first_or_initialize
user.update!(
    password: "12345678",
    password_confirmation: "12345678"
)

# 100.times do |i|
#   BlogPost.create title: "Blog Post #{i}", content: "This is content for this blog post #{i}"
# end
