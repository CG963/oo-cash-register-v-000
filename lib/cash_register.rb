class CashRegister
 
  attr_accessor :total, :discount, :quantity, :price
 
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @price = price
    @quantity = quantity
    @items = []
    @transactions = []
  end 
 
  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end
  
  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      self.total -=(0.01 * discount * @total).to_i
      "After the discount, the total comes to $#{self.total}."
    end
end


  describe '#items' do
    it 'returns an array containing all items that have been added' do
      new_register = CashRegister.new
      new_register.add_item("eggs", 1.99)
      new_register.add_item("tomato", 1.76, 3)
      expect(new_register.items).to eq(["eggs", "tomato", "tomato", "tomato"])
    end
  end

  describe '#void_last_transaction' do
    it 'subtracts the last item from the total' do
      cash_register.add_item("apple", 0.99)
      cash_register.add_item("tomato", 1.76)
      cash_register.void_last_transaction
      expect(cash_register.total).to eq(0.99)
    end

    it 'returns the total to 0.0 if all items have been removed' do
      cash_register.add_item("tomato", 1.76, 2)
      expect{cash_register.void_last_transaction}.to change{cash_register.total}.from(3.52).to(0.0)
    end
  end
end

 