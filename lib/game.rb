class Game
  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @players = [player_1, player_2] # might fail
    @counter = 0
  end

  def pimp_slap
    if @counter == 0
      @player_2.oop_your_dying
      @counter = 1
    else @counter == 1
      @player_1.oop_your_dying
      @counter = 0
    end
  end

  def turn
    return @player_1 if @counter == 0

    @player_2
  end

  def opponent
    return @player_1 if @counter == 1

    @player_2
  end

  def game_over?
    @player_1.hp == 0 || @player_2.hp == 0
  end

  def who_won_do
    return @player_2 if @player1.hp == 0

    @player_1
  end 
end
