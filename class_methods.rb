###################################
######  CLASS METHODS & SELF  #####
###################################

#Currently we have been creating classes expect many object to be created from them to utilize their functionality.

#With the help of the keyword 'self', we will have


###################################
######     LEARNING GOALS     #####
###################################

# Review what we've learned about classes so far:
    #Constructor (initialize)
    #Instance Methods
    #Attributes (stored in instance variables)

# Discover new functionality within classes:
    # Class Methods and
    # self


###################################
######      CLASS_REVIEW      #####
###################################

## INSTANCE VARIABLES

## INSTANCE METHODS

      #INITIALIZE METHOD


## ATTRIBUTES


# class Order
#   def initialize(subtotal, quantity) # <= instance method
#     @subtotal = subtotal
#     @quantity = quantity
#   end
#
#   def total # <= instance method
#     @subtotal * @quantity
#   end
#
#   def to_money # <= instance method
#     # in the line below, `total` is invoking the instance method above
#     "$" + sprintf("%0.02f", total / 100)
#   end
# end
#
# order = Order.new(1000, 2)
# order.to_money #=> $20.00


###################################
########    CLASS METHODS   #######
########     USING SELF     #######
###################################

#Class methods are called directly by the class and not by an instance of the class.





###################################
######    LETS TRY IT OUT!    #####
###################################


# class Pawn
#   attr_reader :position
#   def initialize(position)
#     @position = position
#   end
#
#   # This is the class method, it starts with self.
#   # It is only called on the class directly Pawn.make_row
#   def self.make_row(side)
#     if side == "white"
#       num = 2
#     else
#       num = 7
#     end
#
#     pawns = []
#     ("a".."h").each do |letter|
#       pawns << self.new("#{letter}#{num}")
#     end
#
#     pawns
#   end
# end
#
# #make one pawn
# one_pawn = Pawn.new("A2")
#
# #make a whole row of pawns
# pawns = Pawn.make_row("black")
#
# #What is being stored in this local variable pawns?
# print pawns
#
# #WHAT IS THIS DOING!?
# puts pawns.shuffle.first.position



###################################
######   WHERE IS THIS USED?  #####
###################################
#Class methods are for anything that does not deal with an individual instance of a class


#In Gems, like faker
  # https://github.com/stympy/faker/blob/master/lib/faker/hacker.rb

#When we get into databases, our data will be tied to a class. That class will have some premade class methods for us to use:  .find, .last, .where
#Those class methods allow you to find specific objects of that class based on an specified attributes of that class.
