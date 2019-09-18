class Customer

  attr_reader(:name, :wallet, :age, :drunkeness)

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
    @drunkeness = 0
  end

  def reduce_wallet(number)
    @wallet -= number
  end

  def buy_drink(drink, pub)
    if pub.check_age(self) && @drunkeness < 40
      reduce_wallet(drink.price())
      pub.increase_till(drink.price())
      pub.remove_drinks(drink)
      increase_drunkeness(drink)
    end
  end

  def increase_drunkeness(drink)
    @drunkeness += drink.alcohol_level
  end













end
