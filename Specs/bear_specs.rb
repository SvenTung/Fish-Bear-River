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
    @amazon.roar
    assert_equal(0, @amazon.count_fish)
  end

  def test_food_count
    @bear.eat_fish("Catherine the Catfish")
    @amazon.remove_fish("Catherine the Catfish")
    @bear.eat_fish("Eliza the Eel")
    @amazon.remove_fish("Eliza the Eel")
    assert_equal(2, @bear.food_count)
  end
end
