the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

for num in the_count
  puts "This is count #{num}"
end

fruits.each do |f|
  puts "A fruits of type: #{f}"
end

change.each {|i| puts "I got #{i}"}


elements = []

(0..5).each do |i|
  puts "adding #{i} to the list."
  elements << i
end

elements.each {|i| puts "Element was: #{i}"}
