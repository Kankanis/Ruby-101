number = 10  # You can change this value to test
# Write a program that checks if a number is positive, negative, or zero
# Write a program that checks if a number is even or odd

# Write a while loop that counts from 1 to 10
# Write a while loop to print the first 5 even numbers

if number > 0
  puts "positive"
  elsif number < 0
    puts "negative"
  else
  puts "zero"
end

if number % 2 == 0
  puts "even"
else
  puts "odd"
end

x = 1
while x <= 10
  puts x
  x+=1
end

puts "------------------------"

y = 1
while y <= 10
  if y % 2 == 0
    puts y
  end
  y += 1
end
