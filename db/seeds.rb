# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Add seed cuisines
CuisineType.delete_all
Restaurant.delete_all

asian = CuisineType.create(name: 'Asian', image_icon: 'I')
mexican = CuisineType.create(name: 'Mexican', image_icon: 'H')
seafood = CuisineType.create(name: 'Seafood', image_icon: 'C')
CuisineType.create(name: 'Burgers', image_icon: 'A')

Restaurant.create(
                  name: 'Giraffe',
                  address: 'Ibn Gvirol 100, Tel Aviv',
                  rating: 2,
                  delivery_time: 90,
                  has_ten_bis: true,
                  cuisine_type_id: asian.id
)

Restaurant.create(
    name: 'Chop chop',
    address: 'Ibn Gvirol 2, Tel Aviv',
    rating: 2,
    delivery_time: 30,
    has_ten_bis: false,
    cuisine_type_id: asian.id
)

Restaurant.create(
              name: 'Herzog',
              address: 'Ibn Gvirol 60, Tel Aviv',
              rating: 3,
              delivery_time: 45,
              has_ten_bis: true
)

Restaurant.create(
              name: 'Pablo The Mexican',
              address: 'Dubnov 8, Tel Aviv',
              rating: 1,
              delivery_time: 120,
              has_ten_bis: true,
              cuisine_type_id: mexican.id
)

Restaurant.create(
    name: 'Stinkin shrimp',
    address: 'Hanatziv 42, Tel Aviv',
    rating: 1,
    delivery_time: 180,
    has_ten_bis: false,
    cuisine_type_id: seafood.id
)

Restaurant.create(
    name: 'Goocha',
    address: 'Ibn Gvirol 8, Tel Aviv',
    rating: 2,
    delivery_time: 110,
    has_ten_bis: true,
    cuisine_type_id: seafood.id
)