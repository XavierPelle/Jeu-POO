require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


my_game = Game.new("Wolverine")

puts my_game.enemies
puts my_game.is_still_ongoing?
puts my_game.show_players
puts my_game.menu
puts my_game.kill_player
puts ""
puts my_game.enemies
puts my_game.menu_choice