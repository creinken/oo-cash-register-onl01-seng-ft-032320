class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def total
    @total
  end
  
  def add_item(item, price)
    item_hash = {item => price}
    @total += price
    @items << item_hash
  end
  
  def apply_discount
    
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    
  end
  
end