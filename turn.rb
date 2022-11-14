class Turn
  @@positive_response = "YES! You are correct."
  @@negative_response = "Seriously? No!"
  def initialize(player)
    @player = player
    @question = Question.new
    @player_answer = ""
  end

  def run
    puts "#{@player}: #{@question}"
    player_answer = $stdin.gets.chomp.to_i
    is_correct = correct_answer?(player_answer)
    puts is_correct ? @@positive_response : @@negative_response
    @player.lose_life unless is_correct
  end

  def correct_answer?(player_answer)
    player_answer == @question.solution
  end

  private
    
end