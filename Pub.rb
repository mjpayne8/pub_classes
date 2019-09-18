class Pub

  attr_reader(:name, :till)

  def initialize(name, till, drinks, food)
    @name = name
    @till = till
    @drinks = drinks
    @food = food
  end

  def increase_till(number)
    @till += number
  end

  def number_of_drinks()
    return @drinks.length()
  end

  def amount_of_food()
    return @food.length()
  end

  def remove_drinks(drink)
    @drinks.delete(drink)
  end

  def remove_food(food)
    p food
    p @food
    @food.delete(food)
    p @food
  end

  def check_age(customer)
    return customer.age() >= 18
  end


end
