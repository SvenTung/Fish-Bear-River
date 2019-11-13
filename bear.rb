require "pp"
class Bear
  attr_reader :name
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

end
