# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Post.destroy_all

User.create(first_name: "Barrett", last_name: "Cope", github_username: "bcope", is_admin: true)
User.create(first_name: "Tim", last_name: "Foley", github_username: "timfoley", is_admin: true)
User.create(first_name: "Nick", last_name: "Oki", github_username: "nickoki", is_admin: true)

Post.create(title: "Test Title 1", link: "https://www.google.com", description: "Test Description 1", link_content_date: "2016-10-01", user_id: 1)
Post.create(title: "Test Title 2", link: "https://www.google.com", description: "Test Description 2", link_content_date: "2016-10-02", user_id: 2)
Post.create(title: "Test Title 3", link: "https://www.google.com", description: "Test Description 3", link_content_date: "2016-10-03", user_id: 3)
Post.create(title: "Test Title 4", link: "https://www.google.com", description: "Test Description 4", link_content_date: "2016-10-04", user_id: 1)
