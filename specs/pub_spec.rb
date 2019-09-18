require("minitest/autorun")
require("minitest/rg")
require_relative("../Drink")
require_relative("../Pub")

class TestPub < MiniTest::Test

  def setup()
    @drink = Drink.new("Vodka", 4)
    @pub = Pub.new("Labyrinth", 2000, [@drink])

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

  def test_remove_drinks___return_number_of_drinks_0
    @pub.remove_drinks(@drink)
    assert_equal(0, @pub.number_of_drinks)
  end
  







end
