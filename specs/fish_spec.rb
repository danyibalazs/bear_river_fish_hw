require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish')


class FishTest < MiniTest::Test

  def setup
    @fish = Fish.new("FishyOne")
  end

  def test_fish_has_name
    assert_equal("FishyOne", @fish.name)
  end
end
