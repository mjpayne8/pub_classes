class Pub

  attr_reader(:name, :till)

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
  end

  def increase_till(number)
    @till += number
  end

  def number_of_drinks()
    return @drinks.length()
  end

  def remove_drinks(drink)
    @drinks.delete(drink)
  end

  def check_age(customer)
    return customer.age() >= 18
  end


end
