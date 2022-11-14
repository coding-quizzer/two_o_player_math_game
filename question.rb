class Question

  def initialize ()
    #set both @n1 and @n2 to random number between 1 and 20
    @n1 = 1 + rand(20)
    @n2 = 1 + rand(20)
  end

  def solution
    n1 + n2
  end

  def to_s
    "What does #{n1} + #{n2} equal?"
  end

  private

  attr_reader :n1, :n2

end