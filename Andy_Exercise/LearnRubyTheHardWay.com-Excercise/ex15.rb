prompt = '> '
puts "What file do you like to open?",prompt
filename = gets.chomp

txt = open(filename)

puts "Here's your file #{filename}:"
print txt.read
