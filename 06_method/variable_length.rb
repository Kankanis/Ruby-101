def variable_args(arg1, *rest)
  puts "arg1=#{arg1}, rest=#{rest.inspect}"
end

variable_args("one")
variable_args("one", "two")
variable_args("one", "two", "three")

puts "--------"

class Example
  def method_1(*)
    method_2(*)
  end

  def method_2(*array_args)
    puts array_args.join (", ")
  end
end

puts Example.new.method_1(1, 2, 3)

puts "---------"

# you can put the splat parameter anywhere in a method's parameter list.

def split_apart(first, *splat, last)
  puts "First: #{first.inspect}, splat: #{splat.inspect}, last: #{last.inspect}"
end

split_apart(1, 2)
split_apart(1, 2, 3)
split_apart(1, 2, 3, 4)
