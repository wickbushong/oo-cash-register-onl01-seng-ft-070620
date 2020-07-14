require 'pry'

class CashRegister
    attr_accessor :total, :last_total, :discount, :items

    @@droor = 0

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quant = 1)
        @last_total = @total
        quant.times do 
            @items << title
            @total += price
        end
    end

    def apply_discount
        if @discount != 0
            @total *= 1 - (@discount.to_f/100)
            "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        @total = @last_total
    end

end