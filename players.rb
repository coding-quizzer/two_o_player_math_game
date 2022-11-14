class Players
  attr_reader :players
  def initialize (nums)
    @players = []
    @current_index = 0
    generate_players nums
  end

  def current_player
    @players[@current_index]
  end


  def switch_players
    @current_index = other_index(@current_index)
  end

  def player_win(player)
    other_player(player).is_dead()
  end

  def round_end
    player_win @players[0] or player_win @players[1]
  end

  def scores
    player = @players[0]
    return score_win player if player_win player
    player = @players[1]
    return score_win player if player_win player

    score_normal
  end 

  
  private

  def generate_players nums
    @players << Player.new(nums[0])
    @players << Player.new(nums[1])
  end

  def other_index(player_index)
    (player_index + 1) % 2
  end

  def other_player(player)
    @players[other_index(player.index)]
  end

  def score_win(player)
    "#{player} wins with a score of #{player.show_lives}"
  end

  def score_normal
    "#{@players[0].score} vs #{@players[1].score}"
  end

end