class CashRegister
 
  attr_accessor :total, :discount, :quantity, :price
 
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @price = price
    @quantity = quantity
    @items = []
    @trnsactions = []
  end 
 
  def add_item
    self.age += 1
  end
end