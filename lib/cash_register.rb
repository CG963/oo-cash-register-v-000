class Register
  attr_accessor :discount. :total
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end
  
  def add_item(item, price, quantity = 1)
    
    
  end
  
  def apply_discount
    
  end
  
  def items
    
  end
  
end