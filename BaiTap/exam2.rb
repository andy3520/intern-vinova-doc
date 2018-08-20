class AreAnagrams
  def AreAnagrams.are_anagrams1?(str,str1)
    arr = str.downcase.split('')
    arr1 = str1.downcase.split('')
    strout = arr.sort.join('')
    strout1 = arr1.sort.join('')
    if strout==strout1
      return true
    else
      return false
    end
  end
  def AreAnagrams.are_anagrams2?(str,str1)
    out = Hash.new
    ('a'..'z').each{|letter| out.store(letter,"")}
    out1 = Hash.new
    ('a'..'z').each{|letter| out1.store(letter,"")}
    a = str.downcase.split('')
    a1 = str1.downcase.split('')
    a.each do |i|
      if(out.key?(i))
          out["#{i}"] = out["#{i}"].to_i + 1
      end
    end
    a1.each do |i|
      if(out1.key?(i))
        out1["#{i}"] = out1["#{i}"].to_i + 1
      end
    end
    if out == out1
      return true
    else
      return false
    end
  end
end

puts "Nhap chuoi 1:"
str = gets.chomp
puts "Nhap chuoi 2:"
str1 = gets.chomp
puts "\n"
print "Ket qua cach 1: ",AreAnagrams.are_anagrams1?(str,str1),"\n"

print "Ket qua cach 2: ",AreAnagrams.are_anagrams2?(str,str1),"\n"
