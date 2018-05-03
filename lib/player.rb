class Player
  attr_reader :name, :health

  def initialize(name)
    @name = name
    @health = 100
  end

  def attack(player)
    player.sustain_damage
  end

private

  def sustain_damage
    @health -= 10
  end

end
