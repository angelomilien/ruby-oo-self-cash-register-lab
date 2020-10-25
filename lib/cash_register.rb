
require "pry"


class CashRegister

    # attr_reader 
    attr_accessor :total, :discount 

    def initialize(discount=0, total=0)
        @total = total
        @discount = discount
        @array_of_items = []
    end

    def add_item(product_name, price, quantity=1) 
       @product_name, @price, @quantity = product_name, price, quantity
       @array_of_items << ((@product_name + " " ) * @quantity).split
       self.total += @price * @quantity 
      
    end

    def apply_discount
        return "There is no discount to apply." if @discount == 0
        self.total = self.total - (self.total/100 * 20)
        "After the discount, the total comes to $#{self.total}."
    end
       
    def items
        @array_of_items.flatten
    end

    def void_last_transaction
        self.total -= @price * @quantity
    end
end
