# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cuisine.destroy_all

c1 = Cuisine.create name: 'American', image:'https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/buffalo-wings.jpg'
c2 = Cuisine.create name: 'British', image:'https://www.bbcgoodfood.com/sites/default/files/Collections_British_4.jpg'
c3 = Cuisine.create name: 'Caribbean', image:'https://www.bbcgoodfood.com/sites/default/files/rum-punch.jpg'
c4 = Cuisine.create name: 'Chinese', image:'https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/chinese-beef-aubergine-hotpot.jpg'
c5 = Cuisine.create name: 'French', image:'https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/blood-orange-madeleines.jpg'
c6 = Cuisine.create name: 'Greek', image:'https://www.bbcgoodfood.com/sites/default/files/kleftiko.jpg'
c7 = Cuisine.create name: 'Indian', image:'https://www.bbcgoodfood.com/sites/default/files/Collections_Indian_4.jpg'
c8 = Cuisine.create name: 'Italian', image:'https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/canoli3.jpg'
c9 = Cuisine.create name: 'Japanese', image:'https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/ramen.jpg'
c10 = Cuisine.create name: 'Mediterranean', image:'https://www.bbcgoodfood.com/sites/default/files/2196639_MEDIUM.jpeg'
c11 = Cuisine.create name: 'Mexican', image:'https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/huevos-rancheros.jpg'
c12 = Cuisine.create name: 'Persian', image:'https://www.bbcgoodfood.com/sites/default/files/tagine_1.jpg'
c13 = Cuisine.create name: 'Spanish', image:'https://www.bbcgoodfood.com/sites/default/files/2138651_MEDIUM.jpeg'
c14 = Cuisine.create name: 'Thai', image:'https://www.bbcgoodfood.com/sites/default/files/2991673_MEDIUM-1.jpeg'
c15 = Cuisine.create name: 'Turkish', image:'https://www.bbcgoodfood.com/sites/default/files/681666_MEDIUM.jpeg'
c16 = Cuisine.create name: 'Vietnamese', image:'https://www.bbcgoodfood.com/sites/default/files/caramel-trout.jpg'


puts "Created #{Cuisine.all.length} cuisines."
puts Cuisine.pluck(:name).join(', ')







Recipe.destroy_all
r1 = Recipe.create name: 'Texas BBQ medley', description: 'This is a info about this food', serves: 4, prep: '20 MINS', cook: '1 HR, 5 MINS', ingredients: 'This is a ingredients for this food: tomato, egg, chicken', instruction: 'This is a instruction for this food.',  image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe/recipe-image/2016/07/texas-bbq-medley-.jpg?itok=5oSXHSK4', cuisine_id: c1.id



r2 = Recipe.create name: 'Herby toad in the hole', description: 'This is a info about this food', serves: 4, prep: '20 MINS', cook: '1 HR, 5 MINS', ingredients: 'This is a ingredients for this food: tomato, egg, chicken', instruction: 'This is a instruction for this food.',  image:'https://www.bbcgoodfood.com/sites/default/files/styles/teaser_item/public/recipe_images/recipe-image-legacy-id--804456_11.jpg?itok=fBvdH1z2', cuisine_id: c2.id



r3 = Recipe.create name: 'Caribbean beef patties', description: 'This is a info about this food', serves: 4, prep: '20 MINS', cook: '1 HR, 5 MINS', ingredients: 'This is a ingredients for this food: tomato, egg, chicken', instruction: 'This is a instruction for this food.',  image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/caribbean-beef-patties.jpg?itok=DxtJ6GH_', cuisine_id: c3.id



r4 = Recipe.create name: 'Egg fried rice', description: 'This is a info about this food', serves: 4, prep: '20 MINS', cook: '1 HR, 5 MINS', ingredients: 'This is a ingredients for this food: tomato, egg, chicken', instruction: 'This is a instruction for this food.',  image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe/recipe-image/2017/10/egg-fried-rice.jpg?itok=O0PT_kDl', cuisine_id: c4.id



r5 = Recipe.create name: 'Blood orange & dark chocolate madeleines', description: 'This is a info about this food', serves: 4, prep: '20 MINS', cook: '1 HR, 5 MINS', ingredients: 'This is a ingredients for this food: tomato, egg, chicken', instruction: 'This is a instruction for this food.',  image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe/recipe-image/2016/01/blood-orange-madeleines.jpg?itok=KvACRySD', cuisine_id: c5.id



r6 = Recipe.create name: 'Artichoke, aubergine & lamb moussaka', description: 'This is a info about this food', serves: 4, prep: '20 MINS', cook: '1 HR, 5 MINS', ingredients: 'This is a ingredients for this food: tomato, egg, chicken', instruction: 'This is a instruction for this food.',  image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe/recipe-image/2016/06/artichoke-aubergine-lamb-moussaka.jpg?itok=cEFlCdEt', cuisine_id: c6.id

# r = Recipe.create(
#   name: 'Longer name here',
#   description: "This is a great family dinner.
#
# You can have more lines and paragraphs here",
#   serves: 4,
# )


r7 = Recipe.create name: "Creamy beetroot curry", description: 'This is a info about this food', serves: 4, prep: '20 MINS', cook: '1 HR, 5 MINS', ingredients: 'This is a ingredients for this food: tomato, egg, chicken', instruction: 'This is a instruction for this food.',  image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--1125484_11.jpg?itok=Ss3-snfR', cuisine_id: c7.id



r8 = Recipe.create name: 'Pizza Margherita in 4 easy steps', description: 'This is a info about this food', serves: 4, prep: '20 MINS', cook: '1 HR, 5 MINS', ingredients: 'This is a ingredients for this food: tomato, egg, chicken', instruction: 'This is a instruction for this food.', image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--51643_11.jpg?itok=I_hF8vFL', cuisine_id: c8.id



r9 = Recipe.create name: 'Japanese-style bento box', description: 'This is a info about this food', serves: 4, prep: '20 MINS', cook: '1 HR, 5 MINS', ingredients: 'This is a ingredients for this food: tomato, egg, chicken', instruction: 'This is a instruction for this food.', image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/bento.jpg?itok=nm9_7zwp', cuisine_id: c9.id



r10 = Recipe.create name: 'Mediterranean potato salad', description: 'This is a info about this food', serves: 4, prep: '20 MINS', cook: '1 HR, 5 MINS', ingredients: 'This is a ingredients for this food: tomato, egg, chicken', instruction: 'This is a instruction for this food.', image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--994495_10.jpg?itok=IPA-9N5K', cuisine_id: c10.id




r11 = Recipe.create name: 'Chicken enchiladas', description: 'This is a info about this food', serves: 4, prep: '20 MINS', cook: '1 HR, 5 MINS', ingredients: 'This is a ingredients for this food: tomato, egg, chicken', instruction: 'This is a instruction for this food.', image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/user-collections/my-colelction-image/2015/12/recipe-image-legacy-id--414714_12.jpg?itok=Z30YQ1dp', cuisine_id: c11.id



r12 = Recipe.create name: 'Tahchin – Persian savory rice cake', description: 'This is a info about this food', serves: 4, prep: '20 MINS', cook: '1 HR, 5 MINS', ingredients: 'This is a ingredients for this food: tomato, egg, chicken', instruction: 'This is a instruction for this food.', image:'https://i1.wp.com/www.unicornsinthekitchen.com/wp-content/uploads/2017/08/Persian-Savory-Saffron-Cake-Tahchin-3-700px.jpg?resize=500%2C500&ssl=1', cuisine_id: c12.id


r13 = Recipe.create name: 'Spiced tortilla', description: 'This is a info about this food', serves: 4, prep: '20 MINS', cook: '1 HR, 5 MINS', ingredients: 'This is a ingredients for this food: tomato, egg, chicken', instruction: 'This is a instruction for this food.', image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--10375_11.jpg?itok=CdfSbgJI', cuisine_id: c13.id


r14 = Recipe.create name: 'Easy pad Thai', description: 'This is a info about this food', serves: 4, prep: '20 MINS', cook: '1 HR, 5 MINS', ingredients: 'This is a ingredients for this food: tomato, egg, chicken', instruction: 'This is a instruction for this food.', image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--1900_12.jpg?itok=45vz4ijP', cuisine_id: c14.id


r15 = Recipe.create name: 'Turkish pizza with spiced pomegranate beef & feta', description: 'This is a info about this food', serves: 4, prep: '20 MINS', cook: '1 HR, 5 MINS', ingredients: 'This is a ingredients for this food: tomato, egg, chicken', instruction: 'This is a instruction for this food.', image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/turkishpizza.jpg?itok=vYiF7wHX', cuisine_id: c15.id


r16 = Recipe.create name: 'Hot & sour fish soup', description: 'This is a info about this food', serves: 4, prep: '20 MINS', cook: '1 HR, 5 MINS', ingredients: 'This is a ingredients for this food: tomato, egg, chicken', instruction: 'This is a instruction for this food.', image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--815477_11.jpg?itok=7mgGHK7h', cuisine_id: c16.id


puts "Created #{Recipe.all.length} recipes."
puts Recipe.pluck(:name).join(', ')



User.destroy_all

u1 = User.create name: 'Leila',  email: 'leila@ga.co', password: 'chicken'
u2 = User.create name: 'Ben', email: 'ben@ga.co', password: 'chicken'
u3 = User.create name: 'Uness', email: 'uness@ga.co', password: 'chicken'

puts "Created #{User.all.length} users."



Favlist.destroy_all
f1 = Favlist.create  name: 'Leila - My Favourite Recipes'
f2 = Favlist.create  name: 'Ben - My Favourite Recipes'

puts "Created #{Favlist.all.length} favlists."


Review.destroy_all
review1 = Review.create rating:'10', comment:'Everything about cooking is LOVE.'
review2 = Review.create rating:'7', comment:'It’s fun to prepare food for family members.'
review3 = Review.create rating:'5', comment:'I have made a lot of butter creams, and this one is by far the best.  Great texture, great taste.  Thank you! '



u1.recipes << r1 << r2 << r8
u2.recipes << r3 << r4 << r5
u3.recipes << r15 << r10 << r16  << r13 << r14

u1.favlists << f1
u2.favlists << f2

f1.recipes << r1 << r2 << r8
f2.recipes << r2 << r8


r1.reviews << review1
r1.reviews << review1
r2.reviews << review3

u1.reviews << review3
u2.reviews << review2
u3.reviews << review2 
