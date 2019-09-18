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

end
