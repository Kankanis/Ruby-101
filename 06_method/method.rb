# you can redefine a method in Ruby, but only the last definition will be used.

class Batman
  def who_is_robin
    puts "Dick Grayson"
  end

  def who_is_robin
    puts "Damian Wayne"
  end
end

Batman.new.who_is_robin

# endless method does not require the end statement
def hello(world) = puts world

hello("test")

# sometimes you'll want to define a method with no body
def a_method_name; end

# a method may end with ?, ! or =
puts 1.even?
puts 2.even?

sample = "this is my code"
puts sample.chop
puts sample

sample.chop!
puts sample
