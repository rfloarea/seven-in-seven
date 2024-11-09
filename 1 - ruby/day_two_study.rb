# === FILES ===

# this is simple, risky for large files
puts "=== SLURPING ==="
puts File.readlines 'test.txt'

# I am told that it is better to read files line by line
# rather than "slurping" them
puts "=== STREAMING ==="
File.foreach('test.txt') do |line|
  puts line
end

# or as a onliner
# File.foreach('test.txt') {|line| puts line}


# you can also do this without using a code block
# ensure closes the file even if an exception is raised
# we need to close the file ourselves in this method
puts "=== STREAMING, NO CODE BLOCK ==="
begin
  f = File.open 'test.txt'
  while line = f.gets
    puts line
  end
ensure
  f.close
end

# === HASH TO ARRAY TO HASH

lou = {:dog=>"pittie", :age=>8}
puts lou
puts lou.to_a.to_s

sissy = [dog: "pittie", age: 6]
puts sissy.to_h