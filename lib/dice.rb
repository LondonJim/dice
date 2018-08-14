class Dice

  attr_reader :roll_storage, :turn_storage

  def initialize
    @roll_storage = []
    @turn_storage = []
  end

  def roll(dice_rolls = 1)
    @roll_storage = []
    dice_rolls.times { @roll_storage << random_return }
    turn_storage << @roll_storage.inject(:+)
  end

  def random_return
    rand(1..6)
  end

end
