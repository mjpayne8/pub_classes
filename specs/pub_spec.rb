require("minitest/autorun")
require("minitest/rg")
require_relative("../Drink")
require_relative("../Pub")
require_relative("../Customer")
require_relative("../Food")

class TestPub < MiniTest::Test

  def setup()
    @drink = Drink.new("Vodka", 4, 20)
    @customer1 = Customer.new("Adrien", 300, 12)
    @customer2 = Customer.new("Mark", 200, 32)
    @food = Food.new("pizza", 5, 20)
    @pub = Pub.new("Labyrinth", 2000, [@drink], [@food])
  end

  def test_pub_name__return_Labyrinth()
    assert_equal("Labyrinth", @pub.name)
  end

  def test_pub_name__return_2000()
    assert_equal(2000, @pub.till())
  end

  def test_increase_till__till_increase_to_2004()
    @pub.increase_till(4)
    assert_equal(2004, @pub.till())
  end

  def test_number_of_drinks()
    assert_equal(1, @pub.number_of_drinks)
  end

  def test_amount_of_food()
    assert_equal(1, @pub.amount_of_food)
  end

  def test_remove_drinks___return_number_of_drinks_0
    @pub.remove_drinks(@drink)
    assert_equal(0, @pub.number_of_drinks)
  end

  def test_remove_food___return_amount_of_food_0
    @pub.remove_food(@food)
    assert_equal(0, @pub.amount_of_food)
  end

  def test_age_check__customer1_returns_false()
    assert_equal(false, @pub.check_age(@customer1))
  end

  def test_age_check__customer2_returns_true()
    assert_equal(true, @pub.check_age(@customer2))
  end




end
