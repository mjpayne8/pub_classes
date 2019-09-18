require("minitest/autorun")
require("minitest/rg")
require_relative("../Food")

class TestFood < MiniTest::Test

  def setup()
    @food = Food.new("pizza", 5, 20)
  end

  def test_food_by_name__return_pizza
    assert_equal("pizza", @food.name())
  end

  def test_food_price__return_5
    assert_equal(5, @food.price())
  end

  def test_rejuvenation_level__return_20
    assert_equal(20, @food.rejuvenation_level())
  end













end
