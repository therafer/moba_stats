# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  Game.delete_all
  dota = Game.create(name: "Dota 2")
    Hero.create(game_id: dota.id, name: "Bounty Hunter")
    Hero.create(game_id: dota.id, name: "Slardar")
  lol = Game.create(name: "League of Legends")
    Hero.create(game_id: lol.id, name: "Troll King")
  hon = Game.create(name: "Hero's of Newearth")
    Hero.create(game_id: hon.id, name: "Devourer")
