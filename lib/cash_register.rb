class CashRegister
    attr_accessor :discount, :total, :items, :last_transaction

    def initialize(discount = 20)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        self.last_transaction = price * quantity
        self.total += last_transaction
        quantity.times do
            self.items << title
        end
    end

    def apply_discount
        @total = self.total - (self.total * (self.discount.to_f / 100))
        if total > 0
            "After the discount, the total comes to $#{total.to_i}."
        else
            "There is no discount to apply."
        end
    end


    def void_last_transaction
        self.total -= last_transaction
    end

end
