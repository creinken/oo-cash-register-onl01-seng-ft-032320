class CashRegister
  attr_accessor :total, :discount, :previous_total
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def total
    @total
  end
  
  def add_item(item, price, quantity = 1)
    item_info_array = [item, price]
    quantity.times do
      @previous_total = @total
      @total += price
      @items << item_info_array
    end
  end
  
  def apply_discount
    if @discount == 0
      message = "There is no discount to apply."
    else
      @total -= (@total * (@discount.to_f / 100)).to_i
      message = "After the discount, the total comes to $#{@total}."
    end
    
    message
  end
  
  def items
    item_names = []
    @items.each do |item_info|
      item_names << item_info[0]
    end
    
    item_names
  end
  
  def void_last_transaction
    # @total - 
  end
  
end