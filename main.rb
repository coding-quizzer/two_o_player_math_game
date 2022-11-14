require './player.rb'
require './question.rb'
require './turn.rb'

player1 = Player.new 1
turn1 = Turn.new player1
turn1.run
puts player1.score