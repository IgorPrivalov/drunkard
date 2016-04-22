require_relative 'card'
require_relative 'deck'
require_relative 'game'
require_relative 'player'

name = gets.chomp
game = Game.new name
game.play


