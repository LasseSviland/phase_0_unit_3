# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1. Lasse Sviland
# 2.Anup Pradhan
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to add a item to the Grocery list.
# As a user, I want to delete an item from the Grocery list
# As a user, I want to display items in the Grocery list
# # As a user, I want to add price and quantity for each item

 
# Pseudocode
# Define a Class named Grocerylist
# Define a initialize method and set the cart_list = empty
# Define a Add method that will add items to the cart_list
# Define a Delete method that will delete an item from the cart_list
# Define a display method that will display list of items in the cart_list
# Define a Class named Item that will take in arguments as item,quantity and price 
#  Create a Initialize method for the Item class
# Create a attr_reader and attr_writer method for item,quantity and price.
 
 
# Your fabulous code goes here....

# class Grocerylist

#     def initialize
#         @cart_list = []
#     end

#     def add(*item)
#         item.each do |x|
#             @cart_list << x
#         end
#     end
#     def delete(item)
#         @cart_list.delete_if {|x| x == item }
#     end
#     def display
#         @cart_list.each { |x| puts x}
#     end
# end

class Item
    def initialize(name,price,quantity)
       @name = name
       @price = price
       @quantity = quantity
    end
    attr_reader :name,:price,:quantity
    attr_writer :name,:price,:quantity
       
end    
    
class Grocerylist
    def initialize
        @cart_list = []
    end

    def add(*item)
        item.each do |x|
            @cart_list << x
        end
    end
    def delete(item)
        @cart_list.delete_if {|x| x == item }
    end
    def display
        i = 1
        puts "Your list include:"
        @cart_list.each do |x|
            puts "#{i}: #{x.name}, The price is #{x.price} and you want #{x.quantity}"
            i+=1
        end
    end
end




#DRIVER CODE GOES HERE. 
list = Grocerylist.new
egg = Item.new("Egg",3, 4)
apple = Item.new("Apple",3, 4)
ham = Item.new("Ham",10, 1)

 
 list.add(egg,apple,ham)
 list.display
 list.delete(egg)
 list.display
 ham.price = 15
 list.display
 