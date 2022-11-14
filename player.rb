class Player

  @@MAX_LIVES = 3
  @@current_index = 0

  attr_reader :index
  def initialize(number)
    @number = number
    @lives = @@MAX_LIVES
    @index = @@current_index
    @@current_index = @@current_index + 1
  end

  def lose_life()
    self.lives = lives - 1 unless is_dead
  end

  def is_dead()
    lives == 0
  end

  def show_lives()
    "#{lives}/#{@@MAX_LIVES}"
  end

  def score()
    "P#{number}: #{show_lives}"
  end

  def to_s
    "Player #{number}"
  end


  private

  attr_accessor :lives
  attr_reader :number

end
