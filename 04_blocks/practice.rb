# Write a method that takes a block and prints "Hello, World!"

# Write a method that takes a block and prints numbers 1 to 5
# count_numbers { |num| puts num }

# Write a method that uses yield with a block that accepts two parameters
# multiply { |a, b| puts a * b }

# Write a method that checks if a block is provided and executes it
# greet # Output: No block given
# greet { puts "Hello, World!" } # Output: Hello, World!

def hello
   yield
end

hello ( puts "Hello, World")

# Write a method that takes a block and prints "Hello, World!"

# Write a method that takes a block and prints numbers 1 to 5
# count_numbers { |num| puts num }

# Write a method that uses yield with a block that accepts two parameters
# multiply { |a, b| puts a * b }

# Write a method that checks if a block is provided and executes it
# greet # Output: No block given
# greet { puts "Hello, World!" } # Output: Hello, World!

def hello
  yield
end

# Test the methods
puts "Testing hello:"
hello { puts "Hello, World!" }

def count_numbers
  (1..5).each { |num| yield(num) }
end

puts "\nTesting count_numbers:"
count_numbers { |num| puts num }

def multiply
  yield(2, 3)  # Example values, you can change these
end

puts "\nTesting multiply:"
multiply { |a, b| puts a * b }

def greet
  if block_given?
    yield
  else
    puts "No block given"
  end
end

puts "\nTesting greet:"
greet  # Without block
greet { puts "Hello, World!" }  # With block
