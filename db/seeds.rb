Game.destroy_all
Player.destroy_all
Company.destroy_all

game1 = Game.create(player_turn: 0)

player1 = Player.create(name: "Bank", money: 1000000, position:0)
player2 = Player.create(name: "Andrius", money: 10000, position: 0)
player3 = Player.create(name: "Steve", money: 10000, position: 0)

company1 = Company.create(name: "Apple", industry: "Conglomerate", price: 15500, tile_number: 32, servers: 0)
company2 = Company.create(name: "Amazon", industry: "Conglomerate", price: 15000, tile_number: 31, servers: 0)
company3 = Company.create(name: "Facebook", industry: "Social Media", price: 14500, tile_number: 29, servers: 0)
company4 = Company.create(name: "Google", industry: "Conglomerate", price: 14000, tile_number: 26, servers: 0)
company5 = Company.create(name: "Uber", industry: "travel", price: 13500, tile_number: 25, servers: 0)
company6 = Company.create(name: "Deliveroo", industry: "Food", price: 12000, tile_number: 22, servers: 0)
company7 = Company.create(name: "Stripe", industry: "Software", price: 11000, tile_number: 18, servers: 0)
company8 = Company.create(name: "Thought Machine", industry: "Software", price: 10500, tile_number: 17, servers: 0)
company9 = Company.create(name: "Snapchat", industry: "Social Media", price: 10100, tile_number: 15, servers: 0)
company10 = Company.create(name: "Pinterest", industry: "Consumer", price: 9000, tile_number: 14, servers: 0)
company11 = Company.create(name: "Github", industry: "Software", price: 8500, tile_number: 12, servers: 0)
company12 = Company.create(name: "Uber", industry: "travel", price: 8000, tile_number: 10, servers: 0)
company13 = Company.create(name: "Not sure", industry: "Food", price: 7000, tile_number: 6, servers: 0)
company14 = Company.create(name: "Paystream", industry: "Software", price: 6500, tile_number: 5, servers: 0)
company15 = Company.create(name: "Etsy", industry: "Consumer", price: 4000, tile_number: 4, servers: 0)
company16 = Company.create(name: "Flatiron", industry: "Education", price: 10100, tile_number: 3, servers: 0)


game1.players << player1
game1.players << player2
game1.players << player3



companies = [company1, company2, company3, company4, company5, company6, company7, company8, company9, company10, company11, company12, company13, company14, company15, company16]
companies.map{ |company| player1.companies << company }