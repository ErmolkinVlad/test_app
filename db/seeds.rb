# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


users = User.create([{name: :Vlad}, {name: :Sergey}, {name: :Aline}, {name: :Oleg}, {name: :Julia}, {name: :Sophia}])

games = GameSession.create([{name: :first, score: 2, user_id: 1}, 
                              {name: :first1, score: 3, user_id: 2}, 
                              {name: :first2, score: 23, user_id: 3}, 
                              {name: :first3, score: 273, user_id: 3}, 
                              {name: :first4, score: 53, user_id: 4}, 
                              {name: :first5, score: 42, user_id: 5}])