
class CashRegister
    attr_accessor :total, :discount,:items


        def initialize(employee_discount = 0 )
            @employee_discount = employee_discount
            @total = 0
            @items = []
            @items_prices = []
        end
        def discount
            @employee_discount
        end
        def total
            @total 
        end
        def add_item(title,price,quantity = 1)
            quantity.times { @items << title }
              @items_prices << price
            @total +=(price * quantity)
          
        end
        def apply_discount
                if self.discount > 0
                 self.total -= (self.total * self.discount/100.0)
                 "After the discount, the total comes to $800."
                else
                     "There is no discount to apply."
                end
        end
        def void_last_transaction
                last_item_price = @items_prices.pop.to_f
                @total -= last_item_price
            if @items_prices.pop.to_f == 0.0
                @total = 0.0
            end
    end

        

end