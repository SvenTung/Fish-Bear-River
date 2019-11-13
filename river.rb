require "pp"
class River
  attr_reader :name

  def initialize(name, fishes)
    @name = name
    @fishes = fishes
  end

  def count_fish
    return @fishes.count
  end

  def find_fish(name)
    for fish in fishes
      return fish if fish.name == name
    end
    false
  end

  def remove_fish(name)
    fish = find_fish(name)
    @fishes.delete(fish)
  end

  def roar
    @fishes.clear
  end

  def fish_eaten(name, bear)
    remove_fish(name)
    fish = find_fish(name)
    bear.eat_fish(fish)
  end
end
