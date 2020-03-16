class CashRegister

    attr_accessor :total, :discount, :items, :price

    @@previous_total = 0

    def initialize(discount=0)
        @price = price
        @total = 0
        @items = []
        @discount = discount
    end

    def total
        return @total
    end

    def add_item(title, price, quantity=1)
        @total += price * quantity
        quantity.times do 
            @items << title
        end 
            @last_transaction = price * quantity 
    end


    def apply_discount
        if @discount > 0
        @discount = @discount/100.to_f
        @total = @total - (@discount * @total)
        "After the discount, the total comes to $#{total.to_i}."
    else 
        "There is no discount to apply."
    end
    end 

    

    def optional_quantity
        return @optional_quantity
    end 

    def void_last_transaction
            @total = @total - @last_transaction
    end
end
