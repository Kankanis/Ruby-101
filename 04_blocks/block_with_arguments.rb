def who_says_what
  yield("Dave", "hello")
  yield("Andy", "goodbye")
end

who_says_what { |person, phrase| puts "#{person} says #{phrase}" }

# Example of looping using a block
["cat", "dog", "horse"].each { |name| print name, " " }
5.times { print "*" }
3.upto(6) { |i| print i }
('a'..'e').each { |char| print char }

puts "---------------"
# _1 is a shorthand for the first parameter in a block when using numbered parameters.
("a".."e").each { print _1 }
