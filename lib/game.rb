class Game

  attr_reader :player_one, :player_two

  def initialize(player1, player2)
    @player_one = player1
    @player_two = player2
    @i = 0
  end

  def attack
    @i += 1
    chosen_player.sustain_damage
  end

  def display_player_one_name
    @player_one.name
  end

  def chosen_player
    @i % 2 == 0 ? @player_one : @player_two
  end

end
