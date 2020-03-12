class CashRegister
    attr_accessor :total, :discount, :title, :quantity, :items, :prices

    def initialize(discount = 0)
        @total = 0
        @items = []
        @prices = []
        @discount = discount
    end 

    def add_item(title, price, quantity = 1)
        price *= quantity
        self.total += price
        i = 1
        while i <= quantity do
            self.items.push(title)
            self.prices.push(price)
            i += 1
        end 
        # quantity.times do 
        #     self.items.push(title)
        # end
    end

    def apply_discount()
        if self.discount > 0
            self.discount = (self.discount.to_f * 0.01) * self.total
            self.total = (self.total - self.discount).to_i
            return "After the discount, the total comes to $#{self.total}."
        else 
            return "There is no discount to apply."
        end 
    end 

    def void_last_transaction
        self.total -= self.prices.last
        if self.items == []
            self.total = 0.0
        end
    end 


end

