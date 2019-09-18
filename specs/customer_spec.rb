require("minitest/autorun")
require("minitest/rg")
require_relative("../Drink")
require_relative("../Pub")
require_relative("../Customer")

class TestCustomer < MiniTest::Test

  def setup()
    @drink = Drink.new("Vodka", 4, 20)
    @pub = Pub.new("Labyrinth", 2000, [@drink])
    @customer = Customer.new("Adrien", 300, 12)
  end

  def test_name__returns_adrien()
    assert_equal("Adrien", @customer.name())
  end

  def test_wallet__returns_300()
    assert_equal(300, @customer.wallet())
  end

  def test_age__returns_12()
    assert_equal(12, @customer.age())
  end

  def test_drunkeness__returns_0()
    assert_equal(0, @customer.drunkeness())
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

  def test_increase_drunkeness_by_alcohol_level
    @customer.increase_drunkeness(@drink)
    assert_equal(20, @customer.drunkeness())
  end


end
