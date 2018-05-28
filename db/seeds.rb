# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.delete_all
Category.delete_all

Category.create(name: "Dogs")
Category.create(name: "Flip Phones")
Category.create(name: "Stamps")

Post.create(
  [
    {
      title: "Flip Phones in 2018!",
      subtitle: "Why you should get a flip phone!",
      imageurl:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuTtmgOnl8ZZ8b1tmzCWOYS0YskXn_Y_ditGSbWIeBrglgnn10Ew",
      post_body: "Lorem Ipsum",
      category_id: Category.first.id
    },
    {
      title: "盗まれたはんこ",
      subtitle: "盗まれたはんこの悲しい極まりない話です。",
      imageurl:"stamp.jpeg",
      post_body: "秋わむ日典ごっひ気訟ヒセ株載81",
      category_id: Category.first.id
    },
    {
      title: "Test Title",
      subtitle: "Test Subtitle",
      imageurl:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzwHeGb9YcRpelhsyP-WKvx7ZoggVTaT9j37wvtqOHyltNhJhb",
      post_body: "Lorem ipsum",
      category_id: Category.last.id
    }
  ]
)
