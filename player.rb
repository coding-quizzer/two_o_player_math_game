class Player

  @@max_lives = 3
  def initialize(number)
    @number = number
    @lives = @@max_lives
  end

  def lose_life()
    self.lives = lives - 1 unless is_dead
  end

  def is_dead()
    lives == 0
  end

  def show_lives()
    "#{lives}/#{@@max_lives}"
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
