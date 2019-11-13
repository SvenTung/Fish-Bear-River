require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')
require_relative('../bear')

class RiverTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Sam the Salmon")
  end

  def setup
    @fish1 = Fish.new("Sam the Salmon")
    @fish2 = Fish.new("Timmy the Trout")
    @fish3 = Fish.new("Poppy the Pike")
    @fish4 = Fish.new("Steve the Seabass")
    @fish5 = Fish.new("Eliza the Eel")
    @fish6 = Fish.new("Catherine the Catfish")

    @fishes = [@fish1, @fish2, @fish3, @fish4, @fish5, @fish6]

    @amazon = River.new("Amazon", @fishes)
  end


  def test_check_name
    assert_equal("Amazon", @amazon.name)
  end

  def test_count_fish
    result = @amazon.count_fish
    assert_equal(6, result)
  end

  def test_remove_fish
    @amazon.remove_fish("Timmy the Trout")
    assert_equal(5, @amazon.count_fish)
  end

  def test_remove_random_fish
    @amazon.remove_random_fish
    assert_equal(5, @amazon.count_fish)
    @amazon.remove_random_fish
    assert_equal(4, @amazon.count_fish)
  end

  def test_eat_fish
    @bear = Bear.new("Bobby", "Brown")
    @amazon.fish_eaten("Poppy the Pike", @bear)
    @amazon.fish_eaten("Steve the Seabass", @bear)
    assert_equal(2, @bear.food_count)
    assert_equal(4, @amazon.count_fish)
  end
end
