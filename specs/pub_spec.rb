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


end
