require "pp"
class Bear
  attr_reader :name, :type
  def initialize(name, type)
      @name = name
      @type = type
      @stomach = []
  end

  def food_count
    @stomach.length
  end

  def eat_fish(fish)
    @stomach.push(fish)
  end

  def roar(fishes)
    fishes.clear
  end

  def remove_a_fish(fishes)
    fish = fishes.delete(fishes.sample)
    @stomach.push(fish)
  end
end
