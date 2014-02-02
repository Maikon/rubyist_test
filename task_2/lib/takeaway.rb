class Takeaway
  attr_reader :menu, :order

  MENU = {
    pizza: 12.50,
    dessert: 3.20,
    drink: 2.99
  }

  def initialize
    @order = []
  end

end