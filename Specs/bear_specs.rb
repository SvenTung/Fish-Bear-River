require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzly")

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
    assert_equal("Yogi", @bear.name)
  end

  def test_check_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_check_empty_stomach
    assert_equal(0, @bear.food_count)
  end

  def test_bear_roar
    @bear.roar(@amazon)
    assert_equal(0, @amazon.count_fish)
  end

  def test_remove_a_fish
    @bear.remove_a_fish(@amazon)
    assert_equal(1, @bear.food_count)
    assert_equal(5, @amazon.count_fish)
  end
end
