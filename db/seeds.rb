# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: "dejagordon80@gmail.com", password: "11")
User.create(email: "me@gmail.com", password: "22")
User.create(email: "you@gmail.com", password: "33")

Mushroom.create(user_id: 1, name: "Agaricus bisporus", body: "The Paris mushroom, also known as the common mushroom is an edible mushroom native to grasslands in Eurasia and North America.", psychedelic: false, deadly: false, img:"")
Mushroom.create(user_id: 1, name: "Morchella", body: "Morel is one type of mushroom species that can not be eaten raw—it needs to be cooked to neutralize its naturally occurring toxins. It can be found in North America, Central America, Europe and Asia.", psychedelic: false, deadly: false, img: "")
Mushroom.create(user_id: 1, name: "Flammulina filiformis", body: "Native to East Asia, these mushrooms are are not exposed to light, resulting in white or pallid fruit bodies with long stems and small caps.", psychedelic: false, deadly: false, img: "")
Mushroom.create(user_id: 1, name: "Trametes versicolor", body: "Turkey Tail mushrooms have been known to prevent and even sometimes treat several types of cancer due to its high antioxidant content. Mainly found in North America, Turkey Tail can be found in Europe and Asia as well.", psychedelic: false, deadly: false, img: "")
Mushroom.create(user_id: 1, name: "Psilocybe azurescens", body: "Known as the world's strongest magic mushroom, it definitely packs a punch — that is if you can find it. In its natural habitat, this fungi favors deciduous woodlands near the Columbia River in US West Coast.", psychedelic: true, deadly: false, img: "")
Mushroom.create(user_id: 1, name: "Panaeolus cyanescens", body: "These fungi contain approximately 2.5% psilocybin and 1.94% psilocin, making them some of the most potent mushrooms around. They're grown all over the world", psychedelic: true, deadly: false, img: "")
Mushroom.create(user_id: 1, name: "Psilocybe semilanceata", body: "They are the most widespread magic mushrooms in the wild, growing natively across 17 countries in northern Europe. These magical shrooms contain the highest levels of psilocybin ever measured; however, the average concentration is only 1%.", psychedelic: true, deadly: false, img: "")
Mushroom.create(user_id: 1, name: "Psilocybe cyanescens", body: "These psychedelic mushrooms are native to Central Europe and the Pacific Northwest, but they can now be found all over the world. The caps are typically small and green before they grow into an enormous patch of wavy brown-colored flesh.", psychedelic: true, deadly: false, img: "")
Mushroom.create(user_id: 1, name: "Chlorophyllum molybdites", body: "Very common in lawns and garden beds, during wet periods of spring, summer and autumn, occurring in groups or fairy rings. This species is easily mistaken for 'edible' mushrooms and smells and tastes earthy. The most obvious feature is the greenish gills of mature caps.", psychedelic: false, deadly: true, img: "")
Mushroom.create(user_id: 1, name: "Amanita phalloides", body: "Perhaps the deadliest of all mushrooms, the death cap is found throughout Europe and closely resembles edible straw mushrooms and caesar's mushrooms.", psychedelic: false, deadly: true, img:"")
Mushroom.create(user_id: 1, name: "Conocybe filaris", body: "Conocybe filaris is an innocent-looking lawn mushroom that is especially common in the Pacific Northwest.  It contains the same mycotoxins as the death cap.", psychedelic: false, deadly: true, img:"")
Mushroom.create(user_id: 1, name: "Amanita species", body: "These incredibly toxic fungi are very similar in appearance to edible button mushrooms, and have been collected by mistake on numerous occasions. One of these species, Amanita bisporigera, is considered to be the most toxic North American mushroom!", psychedelic: true, deadly: true, img: "")