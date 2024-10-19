module ToFile
  def filename
    "object_#{self.object_id}.txt"
  end

  # write the output of the to_s method to the file name supplied by the filename method
  def to_f
    File.open(filename, 'w') {|f| f.write(to_s)}
  end
end

class Person
  # include our module
  include ToFile
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def to_s
    name
  end
end

Person.new('test').to_f