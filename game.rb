class Game
  def initialize
    @players = Players.new [1,2]
    @footer = 'NEW TURN'
    @turn = Turn.new(@players.current_player)
  end

  def current_player
    @players.current_player
  end

  def switch_players
    @players.switch_players
  end

  def set_footer
    return @footer = "NEW TURN" unless @players.round_end

    @footer = "GAME OVER"
  end

  def show_footer
    puts "----- #{@footer} -----"
  end

  def run
    until @players.round_end
      @turn.generate current_player
      @turn.run
      puts @players.scores
      set_footer
      show_footer
      switch_players
    end
    puts 'Good bye!'
  end


  private
  attr_reader :players
end

