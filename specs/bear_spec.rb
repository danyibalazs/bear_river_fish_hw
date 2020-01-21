require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')
require_relative('../river')
require_relative('../fish')


class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzly")

    @fish1 = Fish.new("FishOne")
    @fish2 = Fish.new("FishTwo")
    @fish3 = Fish.new("FishThree")

    @fish_arr = [@fish1, @fish2, @fish3]

    @river = River.new("Amazon", @fish_arr)
  end

  def test_bear_has_name()
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_has_type()
    assert_equal("Grizzly", @bear.type)
  end

  def test_check_stomach()
    assert_equal(0, @bear.food_count())
  end

  def test_roar()
    assert_equal("Roarr!", @bear.roar())
  end

  def test_take_fish_from_river()
    @bear.take_fish_from_river(@river)
    assert_equal(1, @bear.food_count())
    assert_equal(2, @river.fish_count())
  end
end
