# snippets from day one of Ruby

puts 'hello, world'
language = 'Ruby'
puts "hello, #{language}"
language = 'my Ruby'
puts "hello, #{language}"

=begin
This tells us a few things about the language:
- Ruby can be interpreted
- When run in the console, line by line, everything returns a value
- Two types of strings
  1. single quotes are interpreted literally
  2. double quotes are evaluated, as in when the value of `language` was returned and substituted into the evaluated string
=end

# playing with objects

puts 4               # 4
puts 4.class         # Integer
puts 4 + 4           # 8
#puts 4.methods       # outputs an array of methods

=begin
that's a funny one
objects have a method called methods that returns an array of methods
cute
=end

x = 4
puts 'This evals to false' unless x == 4      # nil
puts 'This evals to true' if x == 4           # This evals to true

if x == 4
  puts 'This evals to true'
end                                           # This evals to true

unless x == 4
  puts 'This evals to false'
else
  puts 'This evals to true'
end                                           # This evals to true

puts 'This evals to false' if not true        # nil
puts 'This evals to true' if !false           # This evals to true

=begin 
As you can see, Ruby conditions come in two flavors:
1. block
2. single line
=end

x = 0
puts x                    # 0
x = x + 1 while x < 10
puts x                    # 10

x = x - 1 until x == 0
puts x                    # 0

while x < 10
  x = x + 1
  puts x
end
=begin
1
2
3
4
5
6
7
8
9
10
=end

puts 'This evals to true' if 1                  # This evals to true
puts 'This evals to true' if 'random string'    # This evals to true
puts 'This evals to true' if 0                  # This evals to true - ZERO IS TRUE!!!!!
puts 'This evals to true' if true               # This evals to true
puts 'This evals to false' if false             #
puts 'This evals to false' if nil               #

# everything but nil and fals evaluate to true

puts true and false                         # true
puts true or false                          # true
puts true && false                          # false
# puts true && this_will_cause_an_error
puts true | false                           # true
puts false && this_will_not_cause_an_error  # false
# puts true or this_will_not_cause_an_error   # true
puts true || this_will_not_cause_an_error   # true
puts true | false                           # true