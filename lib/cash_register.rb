
class CashRegister

    attr_accessor :discount, :total, :quantity, :title, :items, :last_transaction
    
     
    def initialize(discount=0)
        @discount = discount
        @total = 0
        @items =[]
        
    end

    def add_item(title,price,quantity=1)
        self.title =title
        self.quantity =quantity
        self.last_transaction = (price * quantity)
        quantity.times do
            self.items << title
          end
      
        self.total += self.last_transaction
    end

    def apply_discount
        dis = (self.discount * self.total ) /100
        
        if (self.discount == nil || self.discount == 0)
            return "There is no discount to apply."

        elsif (self.discount > 0)

           self.total =self.total - (dis.to_i)
 
           "After the discount, the total comes to $#{self.total}."
        end
    end

    def void_last_transaction
         self.total -=self.last_transaction
    end



end

test =CashRegister.new
puts test.add_item("book",1000)
puts test.add_item("Pen",1000)
puts test.apply_discount
pp test.items

