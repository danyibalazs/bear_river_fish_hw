require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish')


class FishTest < MiniTest::Test

  def setup
    @fish = Fish.new("FishOne")
  end

  def test_fish_has_name
    assert_equal("FishOne", @fish.name)
  end
end
