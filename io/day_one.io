# receivers go on the left
# messages go on the right

"hello" println                                         # hello

# let's make an object called Vehicle

Vehicle := Object clone
Vehicle type println                                    # Vehicle
Vehicle description := "Something to take you places"
Vehicle description println                             # Something to take you places
Vehicle slotNames println                               # list(type, description)

# let's create a ferrari object 
# that is an instance of a car object

Car := Vehicle clone
Car description print                                   # something to take you places
ferrari := Car clone
ferrari type println                                    # Car
ferrari slotNames println                               # list()

# capitalizing an object actually matters
# an object that's capitalized, Io sets a type
# an object that's not capitalized, invokes it's parent's type

# we can make ferrari a type if we use 'Ferrari' instead
# Ferrari is a type because it has a type slot

# METHODS

method("This is a method" println)
method() type println                                    # Block

Car drive := method("Vroooom" println)
ferrari drive                                            # Vroooom
ferrari getSlot("drive")                                 # method("Vroooom" println)
ferrari proto println                                    # Car_0x1bb6210:
                                                         #  drive            = method(...)
                                                         #  type             = "Car"

# LISTS AND MAPS

