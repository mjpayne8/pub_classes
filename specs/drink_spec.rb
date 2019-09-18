require("minitest/autorun")
require("minitest/rg")
require_relative("../Drink")

class TestDrink < MiniTest::Test

  def setup()
    @drink = Drink.new("vodka", 4)
  end

  def test_drink_name__return_vodka
    assert_equal("vodka", @drink.name())
  end

  def test_drink_price__return_4
    assert_equal(4, @drink.price())
  end

end
