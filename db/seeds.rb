# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Task.create(year: 2021,month: 1,day:31,rank:"重",title:"失業保険申請",detail:"失業保険を申請する",category:"仕事")
Task.create(year: 2021,month: 1,day:31,rank:"低",title:"映画鑑賞",detail:"友達と映画を観に行く",category:"個人")