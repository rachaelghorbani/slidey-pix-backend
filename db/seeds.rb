# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UserImage.destroy_all
Image.destroy_all
User.destroy_all

potato = User.create(username: 'potato')
rachael = User.create(username: 'rachael')
alyssa = User.create(username: 'alyssa')

fall = Image.create(img_url: 'https://live.staticflickr.com/4443/37614774531_72a256658b_3k.jpg', user: potato)
spring = Image.create(img_url: 'https://images.unsplash.com/photo-1470240731273-7821a6eeb6bd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format', user:rachael)

UserImage.create(user: potato, image: fall)
UserImage.create(user: potato, image: spring)
UserImage.create(user: rachael, image: fall)