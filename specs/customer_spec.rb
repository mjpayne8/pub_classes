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

  def test_reduce_wallet__returns_296()
    @customer.reduce_wallet(4)
    assert_equal(296, @customer.wallet)
  end

  def test_buy_drink()
    @customer.buy_drink(@drink, @pub)
    assert_equal(296, @customer.wallet)
    assert_equal(2004, @pub.till)
    assert_equal(0, @pub.number_of_drinks)
  end


end
