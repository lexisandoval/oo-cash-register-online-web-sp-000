class CashRegister

  attr_accessor :total, :discount, :quantity, :title, :price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total = price * quantity

  end

  def apply_discount
    discount_percent = 100 - @discount
    new_price = 100/discount_percent
    new_total = total * new_price
    puts "After the discount, the total comes to $#{new_total}"
  end

end
