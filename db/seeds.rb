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
Category.destroy_all

animals = Category.create(name: 'animals')
cities = Category.create(name: 'cities')
nature = Category.create(name: 'nature')
custom = Category.create(name: 'my custom puzzles')

15.times do 
  User.create(username: Faker::Ancient.unique.hero.downcase)
end

alyssa = User.create(username: 'alyssa')

nature1 = Image.create(img_url: 'https://live.staticflickr.com/4443/37614774531_72a256658b_3k.jpg', category: nature, scramble_pos: Image.scrambler)
nature2 = Image.create(img_url: 'https://images.unsplash.com/photo-1470240731273-7821a6eeb6bd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format', category: nature, scramble_pos: Image.scrambler)
nature3 = Image.create(img_url: 'https://upload.wikimedia.org/wikipedia/commons/f/fd/Mountain_view_in_Robson_valley.jpg', category: nature, scramble_pos: Image.scrambler)
nature4 = Image.create(img_url: 'https://upload.wikimedia.org/wikipedia/commons/e/e4/River_RP.jpg', category: nature, scramble_pos: Image.scrambler)
nature5 = Image.create(img_url: 'https://upload.wikimedia.org/wikipedia/commons/f/f3/Soltan_salt_lake_iran.jpg', category: nature, scramble_pos: Image.scrambler)

animal1 = Image.create(img_url: 'https://upload.wikimedia.org/wikipedia/commons/e/e9/Papio_papio_and_juvenile_Port_Lympne_Wild_Animal_Park.jpg', category: animals, scramble_pos: Image.scrambler)
animal2 = Image.create(img_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Lion_%28Panthera_leo%29_male_6y.jpg/1024px-Lion_%28Panthera_leo%29_male_6y.jpg', category: animals, scramble_pos: Image.scrambler)
animal3 = Image.create(img_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/MC_Kleiner_Panda.jpg/1920px-MC_Kleiner_Panda.jpg', category: animals, scramble_pos: Image.scrambler)
animal4 = Image.create(img_url: 'https://upload.wikimedia.org/wikipedia/commons/7/74/Red_fox_image.jpg', category: animals, scramble_pos: Image.scrambler)
animal5 = Image.create(img_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Zaniskari_Horse_in_Ladhak%2C_Jammu_and_kashmir.jpg/1920px-Zaniskari_Horse_in_Ladhak%2C_Jammu_and_kashmir.jpg', category: animals, scramble_pos: Image.scrambler)

city1 = Image.create(img_url: 'https://upload.wikimedia.org/wikipedia/commons/5/5c/Sydney_skyline_at_dusk_-_Dec_2008.jpg', category: cities, scramble_pos: Image.scrambler)
city2 = Image.create(img_url: 'https://upload.wikimedia.org/wikipedia/commons/d/dc/Colorful_neon_street_signs_in_Kabukich%C5%8D%2C_Shinjuku%2C_Tokyo.jpg', category: cities, scramble_pos: Image.scrambler)
city3 = Image.create(img_url: 'https://upload.wikimedia.org/wikipedia/commons/f/f6/Perth_%28AU%29%2C_Elizabeth_Quay_Bridge_--_2019_--_0375-9.jpg', category: cities, scramble_pos: Image.scrambler)
city4 = Image.create(img_url: 'https://upload.wikimedia.org/wikipedia/commons/5/5f/Manhattan_from_Weehawken%2C_NJ.jpg', category: cities, scramble_pos: Image.scrambler)
city5 = Image.create(img_url: 'https://upload.wikimedia.org/wikipedia/commons/1/10/Sky_view_of_Central_Park_taken_from_neighboring_skyscraper_in_New_York_City.jpg', category: cities, scramble_pos: Image.scrambler)

150.times do
  new_user_image = UserImage.find_or_create_by(user: User.all.sample, image: Image.all.sample)
  new_user_image.update(completed: true, grid_size: rand(3..5), moves: rand(50..300))
end

rachael = User.create(username: 'rachael')
7.times do 
  new_user_image = UserImage.find_or_create_by(user: rachael, image: [nature1, nature2, nature3, nature4, city1, city2, city3, city4, city5, animal1, animal2, animal3, animal4, animal5].sample)
  new_user_image.update(completed: true, grid_size: rand(3..5), moves: rand(50..300))
end
