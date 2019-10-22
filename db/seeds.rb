# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Game.destroy_all
Player.destroy_all
Company.destroy_all

game1 = Game.create(player_turn: 0)

player1 = Player.create(name: "Andrius", money: 10000, position: 0)
player2 = Player.create(name: "Steve", money: 10000, position: 0)

company1 = Company.create(name: "Apple", industry: "Conglomerate", price: 700000000, tile_number: 0, servers: 0)
company2 = Company.create(name: "Amazon", industry: "Conglomerate", price: 750000000, servers: 0)
company3 = Company.create(name: "Facebook", industry: "Conglomerate", price: 685000000, servers: 0)
company4 = Company.create(name: "Google", industry: "Conglomerate", price: 800000000, servers: 0)
company5 = Company.create(name: "Uber", industry: "travel", price: 100000000, servers: 0)
company6 = Company.create(name: "Deliveroo", industry: "Food", price: 50000000, servers: 0)
company7 = Company.create(name: "Thought Machine", industry: "AI", price: 7000000, servers: 0)
# company8 = Company.create(name: "Deliveroo", industry: "Food", price: 50000000, servers: 0)
# company6 = Company.create(name: "Deliveroo", industry: "Food", price: 50000000, servers: 0)

game1.players << player1
game1.players << player2

companies = [company1, company2, company3, company4]
companies2 = [company5, company6, company7]

companies.map{ |company| player1.companies << company}
companies2.map{ |company| player2.companies << company}

# companies.map{|company| game1.companies << company}

# players = [player1, player2]
# players.map{|player| game1.players << player}

# player1.companies << company1
# player1.companies << company2
# player2.companies << company3
# player2.companies << company4
# player1.companies << company5
# player2.companies << company6