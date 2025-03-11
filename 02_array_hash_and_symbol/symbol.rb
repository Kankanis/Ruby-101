# Symbols are meant to be used as keys and identifiers, while strings are meant to be used for data.
# Symbols are immutable and unique, meaning they cannot be changed and they are only stored once in memory.
# Symbols are often used as keys in hashes, as they are more efficient than strings.

# Creating a symbol
puts :hello
puts :hello.to_s
puts :hello.class

def walk(direction)
  if direction == :north
    puts "You are going north"
  elsif direction == :south
    puts "You are going south"
  elsif direction == :east
    puts "You are going east"
  elsif direction == :west
    puts "You are going west"
  else
    puts "Invalid direction"
  end
end

walk(:north)
walk(:south)
