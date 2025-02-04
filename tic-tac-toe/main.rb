require_relative 'sign'
require_relative 'game'
require_relative 'player'

x_mark = X_Mark.new
circle = Circle.new

player1 = Player.new(x_mark)
player2 = Player.new(circle)

Game.new([player1, player2])
