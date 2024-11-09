# every function returns something
def tell_the_truth
  true
end

puts tell_the_truth                       # true

# === ARRAYS ===
animals = ['lions', 'tigers', 'bears']
puts animals                              # lions tigers bears
puts animals[0]                           # lions
puts animals[10]                          # nil
puts animals[-2]                          # tigers
# use a range
# all the items from 0 to 1, inclusive
puts animals[0..1]                        # lions tigers
puts (0..1).class                         # Range
puts [1].class                            # Array
puts [1].methods.include?('[]')           # i have the wrong ruby version for this, but it's true
=begin
  it's interesting
  [] is a method of Array
  this is new to me
=end

a = []
a[0] = 'zero'
a[1] = 1
a[2] = ['a', 'b', 'c']                           # you can have different types in an array:
puts a.to_s                                      # ["zero", 1, ["a", "b", "c"]]

b = [[1, 2, 3], [10, 20, 30], ['a', 'b', 'c']]   # you can do multidimentional arrays (arrays in arrays)
puts b[0][0]                                     # 1
puts b[1][2]                                     # 30
puts b[2][-2]                                    # b

c = [1]
c.push(2)
puts c.to_s                                      # [1, 2]
puts c.pop                                       # 2
puts c.to_s                                      # [1]

# === HASHES ===

numbers = {1 => 'one', 2 => 'two'}
puts numbers                                    # {1 => 'one', 2 => 'two'}
puts numbers[1]                                 # one

# === SYMBOLS ===

puts 'wtf is a symbol'.object_id                # 70357612855880
puts 'wtf is a symbol'.object_id                # 70357612855800
                                                # without symbols, we get
                                                # two objects that look the same but are distinct

puts :'wtf is a symbol'.object_id               # 1057268
puts :'wtf is a symbol'.object_id               # 1057268
                                                # but now we use symbols to access the same object

# === CODE BLOCKS ===
# or, functions without a name

3.times {puts 'this uses the times method'}

# we can also create a custom method that accomplishes this
class Integer
  def my_times
    i = self
    while i > 0
      i = i - 1
      yield
    end
  end
end

3.my_times {puts 'custom method'}                 
                                                  # custom method
                                                  # custom method
                                                  # custom method

cute_animals = ['lions and', 'tigers and', 'bears.', 'Oh my!']
cute_animals.each {|animal| puts animal}

# === CLASSES ===

puts 4.class                                                  # Integer
puts 4.class.superclass                                       # Numeric
puts 4.class.superclass.superclass                            # Object
puts 4.class.superclass.superclass.superclass                 # BasicObject
puts 4.class.superclass.superclass.superclass.superclass      # nil

puts 4.class.class                                            # Class
puts 4.class.class.superclass                                 # Module
puts 4.class.class.superclass.superclass.superclass           # BasicObject


# this class allows you to access every node in a tree
class Tree
  # define instance variables, an accessor, and a setter
  attr_accessor :children, :node_name

  # this runs when the class instantiates a new object
  def initialize (name, children=[])
    # instance variables
    @node_name = name
    @children = children
  end

  # calls visit on the inbound code block
  # then recursively calls visit_all for each child
  def visit_all (&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end

  # calls the inbound code block
  def visit (&block)
    block.call self
  end
end

ruby_tree = Tree.new("Ruby", [Tree.new("Puby", [Tree.new("Blueby")]), Tree.new("Strewby")])

# visit our root node
ruby_tree.visit {|node| puts node.node_name}                          # Ruby

# visit each node in the tree
ruby_tree.visit_all {|node| puts node.node_name}                      # Ruby
                                                                      # Puby
                                                                      # Blueby
                                                                      # Strewby


# Enumerable and Sets

# comparable stuff
# <=> returns 1 if a > b, and -1 if a < b, and 0 otherwise
puts 'begin' <=> 'end'          # -1
puts '5' <=> '4'                # 1
puts 'ruby' <=> 'ruby'          # 0

a = [5, 3, 4, 2, 1]
puts a.sort.to_s                # [1. 2. 3. 4. 5]
puts a.any? {|i| i > 6}         # false
puts a.any? {|i| i > 4}         # true
puts a.all? {|i| i > 0}         # true
puts a.collect {|i| i * 2}      # 10, 6, 8, 4, 2
puts a.map {|i| i * 4}          # 20, 12, 16, 8, 4
puts a.select {|i| i % 2 == 1}  # 5, 3, 1
puts a.select {|i| i % 2 == 0}  # 2
puts a.max                      # 5
puts a.member?(2)               # true

# inject executes the code block for each item in the list
# the first argument is the running total (the result of the previous execution)
# the second argument is the item in the list
puts a.inject {|sum, i| sum + i}          # 15
puts a.inject(10) {|sum, i| sum + i}      # 25
puts a.inject {|product, i| product * i}  # 120

a.inject(0) do |sum, i|
  puts "sum: #{sum}  i: #{i}  sum + i: #{sum + i}"
  sum + i
end
=begin
sum: 0  i: 5  sum + i: 5
sum: 5  i: 3  sum + i: 8
sum: 8  i: 4  sum + i: 12
sum: 12  i: 2  sum + i: 14
sum: 14  i: 1  sum + i: 15
=end

a.inject do |sum, i|
  puts "sum: #{sum}  i: #{i}  sum + i: #{sum + i}"
  sum + i
end
=begin
sum: 5  i: 3  sum + i: 8
sum: 8  i: 4  sum + i: 12
sum: 12  i: 2  sum + i: 14
sum: 14  i: 1  sum + i: 15
=end

# inject will use the first item in the list as its first argument if none is given