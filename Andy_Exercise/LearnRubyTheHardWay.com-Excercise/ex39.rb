states = {
  'Oregon' => 'OR',
  'Florida' => 'FL',
  'California' => 'CA',
  'New York' => 'NY',
  'Michigan' => 'MI'
}

cities = {
  'CA' => 'San Francisco',
  'MI' => 'Detroit',
  'FL' => 'Jacksonville'
}

cities['NY'] = 'New York'
cities['OR'] = 'Portland'

puts cities
puts states

puts '-' * 10
puts "NY State has: #{cities['NY']}"
puts "OR State has: #{cities['OR']}"

puts '-' * 10
puts "Michigan's abbreviation is: #{states['Michigan']}"
puts "Florida's abbreviation is: #{states['Florida']}"

puts '-' * 10
puts "Michigan has: #{cities[states['Michigan']]}"
puts "Florida has: #{cities[states['Florida']]}"

puts '-' * 10
states.each do |s,a|
  puts "#{s} is abbreviation #{a}"
end

puts '-' * 10
cities.each do |a,c|
  puts "#{a} has the city #{c}"
end

puts '-' * 10
states.each do |s,a|
  city = cities[a]
  puts "#{s} is abbreviation #{a} and has city #{city}"
end

state = states['Texas']

if !state
  puts "Sorry, no Texas."
end

state2 = states['California']

if state2
  puts "Hello cali."
else
  puts "nope cali"
end

city = cities['TX']
city ||= 'Does Note Exist'
puts "The city for the state 'TX' is: #{city}"
