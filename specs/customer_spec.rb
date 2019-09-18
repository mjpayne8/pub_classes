require("minitest/autorun")
require("minitest/rg")
require_relative("../Drink")
require_relative("../Pub")
require_relative("../Customer")
require_relative("../Food")

class TestCustomer < MiniTest::Test

  def setup()
    @drink = Drink.new("Vodka", 4, 20)
    @food = Food.new("pizza", 5, 20)
    @second_drink = Drink.new("Tequila", 4, 50)
    @pub = Pub.new("Labyrinth", 2000, [@drink, @second_drink], [@food])
    @customer = Customer.new("Adrien", 300, 21)
    @second_customer = Customer.new("Mark", 200, 12)
  end

  def test_name__returns_adrien()
    assert_equal("Adrien", @customer.name())
  end

  def test_wallet__returns_300()
    assert_equal(300, @customer.wallet())
  end

  def test_age__returns_12()
    assert_equal(12, @second_customer.age())
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
    assert_equal(1, @pub.number_of_drinks)
  end

  def test_increase_drunkeness_by_alcohol_level
    @customer.increase_drunkeness(@drink)
    assert_equal(20, @customer.drunkeness())
  end

  def test_buy_drink__nothing_happens_if_underage()
    @second_customer.buy_drink(@drink, @pub)
    assert_equal(200, @second_customer.wallet)
    assert_equal(2000, @pub.till)
    assert_equal(2, @pub.number_of_drinks)
  end

  def test_buy_drink__nothing_happens_if_too_drunk()
    @customer.buy_drink(@second_drink, @pub)
    @customer.buy_drink(@drink, @pub)
    assert_equal(296, @customer.wallet)
    assert_equal(2004, @pub.till)
    assert_equal(1, @pub.number_of_drinks)
  end

  def test_buy_food()
    @customer.buy_food(@food, @pub)
    assert_equal(295, @customer.wallet)
    assert_equal(2005, @pub.till)
    assert_equal(0, @pub.amount_of_food)
    assert_equal(-20, @customer.drunkeness)
  end

def test_decrease_drunkeness()
  @customer.decrease_drunkeness(@food)
  assert_equal(-20, @customer.drunkeness)
end


end
