Category.delete_all
User.delete_all
Article.delete_all

electronics = Category.create(name: "electronics")
housing = Category.create(name: "housing")
cars = Category.create(name: "cars")
outdoor_equipment = Category.create(name: "outdoor equipment")

paco = User.create(name: "Paco Guzman", email: "paco@paco.com", password: "paco")
siena = User.create(name: "Siena Guzman", email: "siena@siena.com", password: "siena")

cars.articles.create(title: "tesla", description: "It an amazing color. It's color is silver.", price: "40000", user_id: 1)
Article.create(title: "iPad", description: "My mom and dad think I use it too much.", price: "100", category_id: electronics.id, user_id: siena.id)

