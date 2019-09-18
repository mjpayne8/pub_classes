class Customer

  attr_reader(:name, :wallet)

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def reduce_wallet(number)
    @wallet -= number
  end

  def buy_drink(drink, pub)
    reduce_wallet(drink.price())
    pub.increase_till(drink.price())
    pub.remove_drinks(drink)
  end













end
