require("minitest/autorun")
require("minitest/rg")
require_relative("../Drink")
require_relative("../Pub")
require_relative("../Customer")

class TestCustomer < MiniTest::Test

  def setup()
    @drink = Drink.new("Vodka", 4)
    @pub = Pub.new("Labyrinth", 2000, [@drink])
    @customer = Customer.new("Adrien", 300)
  end

  def test_name__returns_adrien()
    assert_equal("Adrien", @customer.name())
  end

  def test_wallet__returns_300()
    assert_equal(300, @customer.wallet())
  end

end
