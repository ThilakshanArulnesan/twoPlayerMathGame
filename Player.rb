class Player
  attr_reader :name
  attr_accessor :health

  def initialize(name,health)
    @name = name;
    @health = health
  end


  def answerQuestion
    gets.chomp
  end

end

th = Player.new("TH",3)
ans = th.answerQuestion
puts ans
