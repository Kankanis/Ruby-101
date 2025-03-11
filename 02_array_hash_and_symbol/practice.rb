# Create an array with 5 numbers
# Access the second element in the array
# Add a new number to the end of the array
# Find the length of the array

# Create a hash with 3 key-value pairs (title, author, pages) representing a book
# Access the value for the key :author
# Add a new key :published_year with the value 1949
# Remove the key :pages from the hash

x = [1, 2 , 3, 4, 5]
puts x[1]
x.push(7)
puts x
puts x.length

book = {
  title: "Marry",
  author: "by Tatty",
  pages: 100
}

puts book[:author]
book[:published_year] = 1949
book.delete(:pages)
puts book
