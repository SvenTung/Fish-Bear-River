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

  def roar(amazon)
    amazon.clear
  end

  def remove_a_fish(amazon)
    fish = amazon.remove_random_fish
    @stomach.push(fish)
  end
end
