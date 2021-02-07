class CashRegister
 
  attr_accessor :total, :discount, :quantity, :price
 
  def initialize(discount = 0)
    @total = 0 
  end 
 
  def birthday
    self.age += 1
  end
end