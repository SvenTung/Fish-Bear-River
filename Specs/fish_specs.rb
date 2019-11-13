require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')

class RiverTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Sam the Salmon")
  end

  def test_check_name
    assert_equal("Sam the Salmon", @fish1.name)
  end
end
