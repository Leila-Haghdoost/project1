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

#American recipes
r1 = Recipe.create(
  name: "Texas BBQ medley",
  description: "Once you've tried smoking and slow cooking your chicken, you'll be totally converted. The dry brine seasons the meat to the bone and keeps it succulent during cooking",
  serves: 4,
  prep: '20 MINS',
  cook: '1 HR, 5 MINS',
  ingredients:"
  For the brine - to make them juicy\n1½ kg chicken thighs and drumsticks\n180g sea salt flakes\n90g soft dark\nbrown sugar\n2 tbsp chilli flakes\nFor the spice mix - to make them tasty\n2 tbsp sweet smoked paprika\n1 tbsp ground cumin\n1 tbsp sea salt flakes\n1 tbsp dark brown sugar\nFor the sauce - to add some heat\n75g butter\n125ml hot chilli sauce\n1 tbsp maple syrup
  ",
  instruction:"Lorem ipsum turnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin onion chickpea gram corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke.",
  image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe/recipe-image/2016/07/texas-bbq-medley-.jpg?itok=5oSXHSK4',
  cuisine_id: c1.id)

r2 = Recipe.create(
  name: "Buffalo chicken",
  description: "These spicy wings are ideal party food for any celebration. The chicken is brined to make it extra juicy and the smoky sweetness of the sauce adds heat",
  serves: 4,
  prep: '20 MINS',
  cook: '1 HR, 5 MINS',
  ingredients:"
  For the brine - to make them juicy\n1½ kg chicken thighs and drumsticks\n180g sea salt flakes\n90g soft dark\nbrown sugar\n2 tbsp chilli flakes\nFor the spice mix - to make them tasty\n2 tbsp sweet smoked paprika\n1 tbsp ground cumin\n1 tbsp sea salt flakes\n1 tbsp dark brown sugar\nFor the sauce - to add some heat\n75g butter\n125ml hot chilli sauce\n1 tbsp maple syrup
  ",
  instruction:"Lorem ipsum turnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin onion chickpea gram corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke.",
  image:'https://www.bbcgoodfood.com/sites/default/files/styles/teaser_item/public/recipe/recipe-image/2016/11/buffalo-wings.jpg?itok=esDn38kq',
  cuisine_id: c1.id)

r3 = Recipe.create(
  name: "S'mores dip",
  description: "A sized-up, super chocolatey twist on the classic American campfire treat. This s'mores dip will be gone before you can say 'mini marshmallow'",
  serves: 4,
  prep: '20 MINS',
  cook: '1 HR, 5 MINS',
  ingredients:"
  For the brine - to make them juicy\n1½ kg chicken thighs and drumsticks\n180g sea salt flakes\n90g soft dark\nbrown sugar\n2 tbsp chilli flakes\nFor the spice mix - to make them tasty\n2 tbsp sweet smoked paprika\n1 tbsp ground cumin\n1 tbsp sea salt flakes\n1 tbsp dark brown sugar\nFor the sauce - to add some heat\n75g butter\n125ml hot chilli sauce\n1 tbsp maple syrup
  ",
  instruction:"Lorem ipsum turnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin onion chickpea gram corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke.",
  image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe/recipe-image/2016/09/smores-dip.jpg?itok=uGd_7cor',
  cuisine_id: c1.id)

r4 = Recipe.create(
  name: "Fully loaded Cajun chicken burgers",
  description: "Grilled Cajun-spiced chicken breasts topped with bacon, avocado and cheese... set to become a Friday night favourite",
  serves: 4,
  prep: '20 MINS',
  cook: '1 HR, 5 MINS',
  ingredients:"
  For the brine - to make them juicy\n1½ kg chicken thighs and drumsticks\n180g sea salt flakes\n90g soft dark\nbrown sugar\n2 tbsp chilli flakes\nFor the spice mix - to make them tasty\n2 tbsp sweet smoked paprika\n1 tbsp ground cumin\n1 tbsp sea salt flakes\n1 tbsp dark brown sugar\nFor the sauce - to add some heat\n75g butter\n125ml hot chilli sauce\n1 tbsp maple syrup
  ",
  instruction:"Lorem ipsum turnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin onion chickpea gram corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke.",
  image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--17429_11.jpg?itok=7lW0nrDJ',
  cuisine_id: c1.id)

r5 = Recipe.create(
  name: "Choc chip pecan pie",
  description: "An indulgent chocolate and pecan treat with buttery pastry and a gooey filling everybody can get stuck into",
  serves: 4,
  prep: '20 MINS',
  cook: '1 HR, 5 MINS',
  ingredients:"
  For the brine - to make them juicy\n1½ kg chicken thighs and drumsticks\n180g sea salt flakes\n90g soft dark\nbrown sugar\n2 tbsp chilli flakes\nFor the spice mix - to make them tasty\n2 tbsp sweet smoked paprika\n1 tbsp ground cumin\n1 tbsp sea salt flakes\n1 tbsp dark brown sugar\nFor the sauce - to add some heat\n75g butter\n125ml hot chilli sauce\n1 tbsp maple syrup
  ",
  instruction:"Lorem ipsum turnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin onion chickpea gram corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke.",
  image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe/recipe-image/2016/07/choc-chip-pecan-pie.jpg?itok=ZH2c4YS2',
  cuisine_id: c1.id)

r6 = Recipe.create(
  name: "American pancakes",
  description: "Easy, American-style, fluffy pancakes are great for feeding a crowd at breakfast or brunch. Top with something sweet like fruit, jam or syrup, or rashers of crispy bacon.",
  serves: 4,
  prep: '20 MINS',
  cook: '1 HR, 5 MINS',
  ingredients:"
  For the brine - to make them juicy\n1½ kg chicken thighs and drumsticks\n180g sea salt flakes\n90g soft dark\nbrown sugar\n2 tbsp chilli flakes\nFor the spice mix - to make them tasty\n2 tbsp sweet smoked paprika\n1 tbsp ground cumin\n1 tbsp sea salt flakes\n1 tbsp dark brown sugar\nFor the sauce - to add some heat\n75g butter\n125ml hot chilli sauce\n1 tbsp maple syrup
  ",
  instruction:"Lorem ipsum turnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin onion chickpea gram corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke.",
  image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe/recipe-image/2017/05/american-style-pancakes.jpg?itok=_tikdZhR',
  cuisine_id: c1.id)






# British recipes

r7 = Recipe.create(
  name: "Herby toad in the hole",
  description: "This family favourite marries meaty sausages with robust herbs and traditional, comforting Yorkshire pudding",
  serves: 4,
  prep: '20 MINS',
  cook: '1 HR, 5 MINS',
  ingredients:"
  For the brine - to make them juicy\n1½ kg chicken thighs and drumsticks\n180g sea salt flakes\n90g soft dark\nbrown sugar\n2 tbsp chilli flakes\nFor the spice mix - to make them tasty\n2 tbsp sweet smoked paprika\n1 tbsp ground cumin\n1 tbsp sea salt flakes\n1 tbsp dark brown sugar\nFor the sauce - to add some heat\n75g butter\n125ml hot chilli sauce\n1 tbsp maple syrup
  ",
  instruction:"Lorem ipsum turnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin onion chickpea gram corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke.",
  image:'https://www.bbcgoodfood.com/sites/default/files/styles/teaser_item/public/recipe_images/recipe-image-legacy-id--804456_11.jpg?itok=fBvdH1z2',
  cuisine_id: c2.id)

r8 = Recipe.create(
  name: "Lemon & thyme butter-basted roast chicken & gravy",
  description: "Smoothing butter under the bird's skin helps to baste the chicken and herbs add a delicious flavour to the gravy",
  serves: 4,
  prep: '20 MINS',
  cook: '1 HR, 5 MINS',
  ingredients:"
  For the brine - to make them juicy\n1½ kg chicken thighs and drumsticks\n180g sea salt flakes\n90g soft dark\nbrown sugar\n2 tbsp chilli flakes\nFor the spice mix - to make them tasty\n2 tbsp sweet smoked paprika\n1 tbsp ground cumin\n1 tbsp sea salt flakes\n1 tbsp dark brown sugar\nFor the sauce - to add some heat\n75g butter\n125ml hot chilli sauce\n1 tbsp maple syrup
  ",
  instruction:"Lorem ipsum turnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin onion chickpea gram corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke.",
  image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--879457_12.jpg?itok=1xIoE4Yc',
  cuisine_id: c2.id)

r9 = Recipe.create(
  name: "Spiced parsnip shepherd's pies",
  description: "For shepherd's pie - but not as you know it - try cooking up these spicy individual pies",
  serves: 4,
  prep: '20 MINS',
  cook: '1 HR, 5 MINS',
  ingredients:"
  For the brine - to make them juicy\n1½ kg chicken thighs and drumsticks\n180g sea salt flakes\n90g soft dark\nbrown sugar\n2 tbsp chilli flakes\nFor the spice mix - to make them tasty\n2 tbsp sweet smoked paprika\n1 tbsp ground cumin\n1 tbsp sea salt flakes\n1 tbsp dark brown sugar\nFor the sauce - to add some heat\n75g butter\n125ml hot chilli sauce\n1 tbsp maple syrup
  ",
  instruction:"Lorem ipsum turnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin onion chickpea gram corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke.",
  image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--424671_11.jpg?itok=W7ejnAFR',
  cuisine_id: c2.id)

r10 = Recipe.create(
  name: "Lancashire hotpot",
  description: "This famous lamb stew topped with sliced potatoes should be on the menu at every British pub",
  serves: 4,
  prep: '20 MINS',
  cook: '1 HR, 5 MINS',
  ingredients:"
  For the brine - to make them juicy\n1½ kg chicken thighs and drumsticks\n180g sea salt flakes\n90g soft dark\nbrown sugar\n2 tbsp chilli flakes\nFor the spice mix - to make them tasty\n2 tbsp sweet smoked paprika\n1 tbsp ground cumin\n1 tbsp sea salt flakes\n1 tbsp dark brown sugar\nFor the sauce - to add some heat\n75g butter\n125ml hot chilli sauce\n1 tbsp maple syrup
  ",
  instruction:"Lorem ipsum turnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin onion chickpea gram corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke.",
  image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--1035691_10.jpg?itok=j0n5BxDw',
  cuisine_id: c2.id)

r11 = Recipe.create(
  name: "The ultimate makeover: Full English breakfast",
  description: "Angela Nilsen makes a healthier version of an iconic English meal - without losing the nostalgia",
  serves: 4,
  prep: '20 MINS',
  cook: '1 HR, 5 MINS',
  ingredients:"
  For the brine - to make them juicy\n1½ kg chicken thighs and drumsticks\n180g sea salt flakes\n90g soft dark\nbrown sugar\n2 tbsp chilli flakes\nFor the spice mix - to make them tasty\n2 tbsp sweet smoked paprika\n1 tbsp ground cumin\n1 tbsp sea salt flakes\n1 tbsp dark brown sugar\nFor the sauce - to add some heat\n75g butter\n125ml hot chilli sauce\n1 tbsp maple syrup
  ",
  instruction:"Lorem ipsum turnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin onion chickpea gram corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke.",
  image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--592533_12.jpg?itok=yoVezNCb',
  cuisine_id: c2.id)

r12 = Recipe.create(
  name: "Roast lamb with spring herb crumbs",
  description: "This iron-rich dish is ideal for a weekend with family and friends",
  serves: 4,
  prep: '20 MINS',
  cook: '1 HR, 5 MINS',
  ingredients:"
  For the brine - to make them juicy\n1½ kg chicken thighs and drumsticks\n180g sea salt flakes\n90g soft dark\nbrown sugar\n2 tbsp chilli flakes\nFor the spice mix - to make them tasty\n2 tbsp sweet smoked paprika\n1 tbsp ground cumin\n1 tbsp sea salt flakes\n1 tbsp dark brown sugar\nFor the sauce - to add some heat\n75g butter\n125ml hot chilli sauce\n1 tbsp maple syrup
  ",
  instruction:"Lorem ipsum turnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin onion chickpea gram corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke.",
  image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--932451_11.jpg?itok=CMwPFCbU',
  cuisine_id: c2.id)

























r13 = Recipe.create name: 'Caribbean beef patties', description: 'This is a info about this food', serves: 4, prep: '20 MINS', cook: '1 HR, 5 MINS', ingredients: 'This is a ingredients for this food: tomato, egg, chicken', instruction: 'This is a instruction for this food.',  image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/caribbean-beef-patties.jpg?itok=DxtJ6GH_', cuisine_id: c3.id



r14 = Recipe.create name: 'Egg fried rice', description: 'This is a info about this food', serves: 4, prep: '20 MINS', cook: '1 HR, 5 MINS', ingredients: 'This is a ingredients for this food: tomato, egg, chicken', instruction: 'This is a instruction for this food.',  image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe/recipe-image/2017/10/egg-fried-rice.jpg?itok=O0PT_kDl', cuisine_id: c4.id



r15 = Recipe.create name: 'Blood orange & dark chocolate madeleines', description: 'This is a info about this food', serves: 4, prep: '20 MINS', cook: '1 HR, 5 MINS', ingredients: 'This is a ingredients for this food: tomato, egg, chicken', instruction: 'This is a instruction for this food.',  image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe/recipe-image/2016/01/blood-orange-madeleines.jpg?itok=KvACRySD', cuisine_id: c5.id



r16 = Recipe.create name: 'Artichoke, aubergine & lamb moussaka', description: 'This is a info about this food', serves: 4, prep: '20 MINS', cook: '1 HR, 5 MINS', ingredients: 'This is a ingredients for this food: tomato, egg, chicken', instruction: 'This is a instruction for this food.',  image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe/recipe-image/2016/06/artichoke-aubergine-lamb-moussaka.jpg?itok=cEFlCdEt', cuisine_id: c6.id




r17 = Recipe.create name: "Creamy beetroot curry", description: 'This is a info about this food', serves: 4, prep: '20 MINS', cook: '1 HR, 5 MINS', ingredients: 'This is a ingredients for this food: tomato, egg, chicken', instruction: 'This is a instruction for this food.',  image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--1125484_11.jpg?itok=Ss3-snfR', cuisine_id: c7.id



r18 = Recipe.create name: 'Pizza Margherita in 4 easy steps', description: 'This is a info about this food', serves: 4, prep: '20 MINS', cook: '1 HR, 5 MINS', ingredients: 'This is a ingredients for this food: tomato, egg, chicken', instruction: 'This is a instruction for this food.', image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--51643_11.jpg?itok=I_hF8vFL', cuisine_id: c8.id



r19 = Recipe.create name: 'Japanese-style bento box', description: 'This is a info about this food', serves: 4, prep: '20 MINS', cook: '1 HR, 5 MINS', ingredients: 'This is a ingredients for this food: tomato, egg, chicken', instruction: 'This is a instruction for this food.', image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/bento.jpg?itok=nm9_7zwp', cuisine_id: c9.id



r20 = Recipe.create name: 'Mediterranean potato salad', description: 'This is a info about this food', serves: 4, prep: '20 MINS', cook: '1 HR, 5 MINS', ingredients: 'This is a ingredients for this food: tomato, egg, chicken', instruction: 'This is a instruction for this food.', image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--994495_10.jpg?itok=IPA-9N5K', cuisine_id: c10.id




r21 = Recipe.create name: 'Chicken enchiladas', description: 'This is a info about this food', serves: 4, prep: '20 MINS', cook: '1 HR, 5 MINS', ingredients: 'This is a ingredients for this food: tomato, egg, chicken', instruction: 'This is a instruction for this food.', image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/user-collections/my-colelction-image/2015/12/recipe-image-legacy-id--414714_12.jpg?itok=Z30YQ1dp', cuisine_id: c11.id



r22 = Recipe.create name: 'Tahchin – Persian savory rice cake', description: 'This is a info about this food', serves: 4, prep: '20 MINS', cook: '1 HR, 5 MINS', ingredients: 'This is a ingredients for this food: tomato, egg, chicken', instruction: 'This is a instruction for this food.', image:'https://i1.wp.com/www.unicornsinthekitchen.com/wp-content/uploads/2017/08/Persian-Savory-Saffron-Cake-Tahchin-3-700px.jpg?resize=500%2C500&ssl=1', cuisine_id: c12.id


r23 = Recipe.create name: 'Spiced tortilla', description: 'This is a info about this food', serves: 4, prep: '20 MINS', cook: '1 HR, 5 MINS', ingredients: 'This is a ingredients for this food: tomato, egg, chicken', instruction: 'This is a instruction for this food.', image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--10375_11.jpg?itok=CdfSbgJI', cuisine_id: c13.id


r24 = Recipe.create name: 'Easy pad Thai', description: 'This is a info about this food', serves: 4, prep: '20 MINS', cook: '1 HR, 5 MINS', ingredients: 'This is a ingredients for this food: tomato, egg, chicken', instruction: 'This is a instruction for this food.', image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--1900_12.jpg?itok=45vz4ijP', cuisine_id: c14.id


r25 = Recipe.create name: 'Turkish pizza with spiced pomegranate beef & feta', description: 'This is a info about this food', serves: 4, prep: '20 MINS', cook: '1 HR, 5 MINS', ingredients: 'This is a ingredients for this food: tomato, egg, chicken', instruction: 'This is a instruction for this food.', image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/turkishpizza.jpg?itok=vYiF7wHX', cuisine_id: c15.id


r26 = Recipe.create name: 'Hot & sour fish soup', description: 'This is a info about this food', serves: 4, prep: '20 MINS', cook: '1 HR, 5 MINS', ingredients: 'This is a ingredients for this food: tomato, egg, chicken', instruction: 'This is a instruction for this food.', image:'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--815477_11.jpg?itok=7mgGHK7h', cuisine_id: c16.id


puts "Created #{Recipe.all.length} recipes."
puts Recipe.pluck(:name).join(', ')



User.destroy_all

u1 = User.create name: 'Leila',  email: 'leila@ga.co', password: 'chicken'
u2 = User.create name: 'Ben', email: 'ben@ga.co', password: 'chicken'
u3 = User.create name: 'Uness', email: 'uness@ga.co', password: 'chicken'

puts "Created #{User.all.length} users."


#
# Favlist.destroy_all
# f1 = Favlist.create  name: 'Leila - My Favourite Recipes'
# f2 = Favlist.create  name: 'Ben - My Favourite Recipes'
#
# puts "Created #{Favlist.all.length} favlists."


Review.destroy_all
review1 = Review.create rating:'10', comment:'Everything about cooking is LOVE.'
review2 = Review.create rating:'7', comment:'It’s fun to prepare food for family members.'
review3 = Review.create rating:'5', comment:'I have made a lot of butter creams, and this one is by far the best.  Great texture, great taste.  Thank you! '



u1.recipes << r1 << r2 << r8
u2.recipes << r3 << r4 << r5
u3.recipes << r6 << r7 << r9  << r10 << r11
#
# u1.favlists << f1
# u2.favlists << f2
# f1.recipes << r1 << r2 << r8
# f2.recipes << r2 << r8

u1.favourites << r1 << r2 << r3
u2.favourites << r1 << r2 << r4
u3.favourites << r1 << r3 << r5 << r6



r1.reviews << review1
r1.reviews << review1
r2.reviews << review3

u1.reviews << review3
u2.reviews << review2
u3.reviews << review2
