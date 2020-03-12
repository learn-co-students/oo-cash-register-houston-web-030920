class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction
    
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity=1)
        self.total += (price * quantity)
        i = 1 
        while i <= quantity do 
            self.items.push(title)
            i += 1
        end
        self.last_transaction = price * quantity
    end

    def apply_discount
        if self.discount > 0
            self.discount = (self.discount.to_f * 0.01) * self.total
            self.total = (self.total - self.discount).to_i
            return "After the discount, the total comes to $800."
        else
            return "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end

end