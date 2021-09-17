# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Drink.create([
  {name: "vodka", description: "a European clear distilled alcoholic beverage"}
  {name: "screwdriver", description: "an alcoholic drink made with orange juice and vodka"}
  {name: "whiskey sour", description: "a mixed drink made with whiskey, lemon juice, and sugar or syrup"}
])

vodka = Drink.create(name: "vodka", description: "a European clear distilled alcoholic beverage", image_url: "https://www.writework.com/uploads/17/170779/image29.jpg")
screwdriver = Drink.create(name: "screwdriver", description: "an alcoholic drink made with orange juice and vodka", image_url: "https://www.thecocktaildb.com/images/media/drink/8xnyke1504352207.jpg")
whiskeysour = Drink.create(name: "whiskey sour", description: "a mixed drink made with whiskey, lemon juice, and sugar or syrup", image_url: "https://www.thecocktaildb.com/images/media/drink/hbkfsh1589574990.jpg")
Review.create([
  {title: "Unaged spirit", content: "Distilled and filtered repeatedly to achieve smoothness and clarity, it has had a reputation for blandness.", drink_id: vodka.id},
  {title: "Classic cocktail", content: "Love this simple, two-ingredient cocktail. It’s fresh, works perfectly for brunch and works well at night.", drink_id: screwdriver.id},
  {title: "Best drink ever", content: "The Whisky Sour is one of the simplest yet most-loved cocktails by all manner of whisky connoisseur.", drink_id: whiskeysour.id}
])