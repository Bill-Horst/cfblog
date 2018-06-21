# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.delete_all
Tag.delete_all
Comment.delete_all
Post.delete_all

c1 = Category.create(name: "Technology")
c2 = Category.create(name: "Japanese Culture")
c3 = Category.create(name: "Dogs")

t1 = Tag.create(name: "stamps")
t2 = Tag.create(name: "dogs")
t3 = Tag.create(name: "phones")
t4 = Tag.create(name: "sad stories")
t5 = Tag.create(name: "recommendations")
t6 = Tag.create(name: "funny stories")
t7 = Tag.create(name: "Japanese language")
t8 = Tag.create(name: "English language")
t9 = Tag.create(name: "cats")
t10 = Tag.create(name: "elepahants")

p1 = Post.create(title: "Flip Phones in 2018!",
subtitle: "Why You Should Get a Flip Phone!",
imageurl:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuTtmgOnl8ZZ8b1tmzCWOYS0YskXn_Y_ditGSbWIeBrglgnn10Ew",
post_body: "Get a flip phone because they're making a comeback.",
category_id: c1.id)
p1.tags << t3
p1.tags << t4
p1.tags << t5
p1.tags << t8

p2 = Post.create(title: "盗まれたはんこ",
subtitle: "盗まれたはんこの悲しい極まりない話です。",
imageurl:"stamp.jpeg",
post_body: "秋わむ日典ごっひ気訟ヒセ株載81",
category_id: c2.id)
p2.tags << t7
p2.tags << t1
p2.tags << t6

p3 = Post.create(title: "Dogs",
subtitle: "Dogs on the Bed!",
imageurl:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzwHeGb9YcRpelhsyP-WKvx7ZoggVTaT9j37wvtqOHyltNhJhb",
post_body: "Dogs are great. Get yourself a dog after you get a flip phone.",
category_id: c3.id)
p3.tags << t2
p3.tags << t4
p3.tags << t6
p3.tags << t8

p4 = Post.create(title: "Cats",
subtitle: "Cats on the Bed!",
imageurl:"https://static.designboom.com/wp-content/uploads/2018/04/cat-VR-isobar-designboom-600.jpg",
post_body: "Cats are great. Get yourself a cat after you get a dog and a flip phone.",
category_id: c1.id)
p4.tags << t9
p4.tags << t4
p4.tags << t6
p4.tags << t8

p5 = Post.create(title: "Elephants",
subtitle: "Elephants on the Bed!",
imageurl:"https://i.ytimg.com/vi/SNggmeilXDQ/maxresdefault.jpg",
post_body: "Elephants are great. Get yourself an elephant after you get a dog, a cat, and a flip phone.",
category_id: c1.id)
p5.tags << t10
p5.tags << t5
p5.tags << t8
