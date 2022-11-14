class Game
  def initialize
    @players = []
    @footer = 'NEW TURN'
    @current_index = 0
    generate_players
  end

  def generate_players
    @players << Player.new(1)
    @players << Player.new(2)
  end

  def current_player
    @players[@current_index]
  end

  def switch_player
    @current_index = (@current_index + 1) % 2
  end

  def score_message
    "#{@players[0].score} vs #{@players[1].score}"
  end
    

  def show_footer
    "----- #{@footer} -----"
  end

  private
  attr_accessor :current_index
end

