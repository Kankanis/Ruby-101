def method_with_keywords(city:, state:, zip:)
  puts "City is #{city}"
  puts "State is #{state}"
  puts "Zip is #{zip}"
end

method_with_keywords(city: "Chicago", state: "IL", zip: 60606)
method_with_keywords(zip: 10120, city: "Chicago", state: "IL")

puts "-----------------"

def varargs(arg1, **rest)
  puts "arg1=#{arg1}, rest=#{rest.inspect}"
end

varargs("one")
varargs("one", two: 2)
varargs("one", two: 2, three: 3)

puts "----------------"

# Ruby Keywords Pre 3.0
def search(field, options = {})
  puts "Searching for #{field} in #{options.inspect}"
end

search(:titles, genre: "jazz", duration: 120)
