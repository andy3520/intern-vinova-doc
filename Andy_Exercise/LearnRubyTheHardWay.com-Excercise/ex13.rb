first, second, third = ARGV

puts "Your first variable is: #{first.to_i*2}"
puts "Your second variable is: #{second.to_i*4}"
puts "Your third variable is: #{third.to_i*6}"

print "Give me a number: "
num = $stdin.gets.chomp.to_i # STDIN
puts "10xNum : #{num*10}"
