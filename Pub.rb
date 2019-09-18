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
    @drinks.delete_at(@drinks.index(drink))
  end

  def remove_food(food)
    @food.delete(food)
  end

  def check_age(customer)
    return customer.age() >= 18
  end

  def stock()
    unique_drinks = @drinks.uniq()
    stock_array = []
    for unique_drink_item in unique_drinks
      input = {
        drink_type: unique_drink_item,
        number: 0
      }
      for drink_item in @drinks
        if drink_item == unique_drink_item
          input[:number] += 1
        end
      end
      stock_array.push(input)
    end
    return stock_array
  end

  def stock_value()
    total = 0
    for drink in @drinks
      total += drink.price 
    end
    return total
  end

end
