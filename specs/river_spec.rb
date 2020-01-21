require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../fish')


class RiverTest < MiniTest::Test
  def setup
    @fish1 = Fish.new("FishOne")
    @fish2 = Fish.new("FishTwo")
    @fish3 = Fish.new("FishThree")

    @fish_arr = [@fish1, @fish2, @fish3]

    @river = River.new("Amazon", @fish_arr)
  end

  def test_river_has_name
    assert_equal("Amazon", @river.name)
  end

  def test_remove_fish()
    @river.remove_fish()
    assert_equal(2, @river.fish_count())
  end
end
