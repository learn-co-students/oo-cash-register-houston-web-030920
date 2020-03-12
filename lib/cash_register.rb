#SCUFFED CODE INCOMING!!!
#iF IT WoRKs, iT worKS


class CashRegister
    attr_accessor :discount,:total
    
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @item_prices = []
        @quantity = []
    end

    def add_item (title,price,quantity = 1)
        @total += (price * quantity)
        @quantity << quantity
        while quantity != 0
            @items << title
            @item_prices << price
            quantity -= 1
        end
    end

    def apply_discount
        #SCUFFED CODE CAUSE I CANT MATH
        if discount != 0
            @total -= (@total * (@discount.to_f/100))
            return "After the discount, the total comes to $#{@total.to_i}."
        else
            return "There is no discount to apply."
        end

    end

    def items
        @items
    end

    def void_last_transaction

        @total =  @total - (@item_prices.pop * @quantity.pop)
        
    end


end
