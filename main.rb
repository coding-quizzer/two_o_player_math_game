require './player.rb'
require './players.rb'
require './question.rb'
require './turn.rb'
require './game.rb'

players = Players.new ([1, 2])

players.current_player.lose_life
players.current_player.lose_life

puts players.round_end