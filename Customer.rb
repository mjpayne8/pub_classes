class Customer

  attr_reader(:name, :wallet)

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end



 def reduce_wallet(number)
  @wallet -= number
 end














end
