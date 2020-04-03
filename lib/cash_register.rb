class CashRegister
  attr_accessor :total
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def total
    
  end
  
  def add_item(item)
    @items << item
  end
  
  def apply_discount
    
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    
  end
  
end