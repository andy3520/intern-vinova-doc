#bai 1 tim index trong mang
=begin
a = [1,2,3,4,5,6]
puts "Mang input: "
a.each do |i|
  print i,","
end
puts "\n"
puts "Gia tri can tim:"
val = gets.chomp.to_i
i = 0
while i < a.length do
  if a[i]==val
    puts "Index of #{val} is #{i}"
  end
  i+=1
end

str = a.join('')
puts str
=end
#bai 2 so sanh chuoi
puts "Nhap vao chuoi 1:"
str1 = gets.chomp
puts "Nhap vao chuoi 2:"
str2 = gets.chomp

if str1.casecmp(str2).zero?
  puts "Casecpm: 2 chuoi giong nhau"
else
  puts "Casecpm: 2 chuoi khac nhau"
end

if str1.downcase.to_s==str2.downcase.to_s
  puts "Downcase: 2 chuoi giong nhau"
else
  puts "Downcase: 2 chuoi khac nhau"
end
