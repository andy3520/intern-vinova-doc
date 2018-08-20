class Palindrome
  def Palindrome.is_palindrome1?(str)
    delstrip = str.downcase.strip
    delspace = delstrip.delete(' ')
    deldot = delspace.gsub(/[.]/,'')
    return deldot == deldot.reverse ? true : false
  end
  def Palindrome.is_palindrome2?(str)
    delstrip = str.downcase.strip
    delspace = delstrip.delete(' ')
    deldot = delspace.gsub(/[.]/,'')
    left = deldot[0]
    right = deldot[deldot.length-1]
    left = 0
    right = deldot.length-1
    while left < right
      if deldot[left] != deldot[right]
        return false
      end
      left +=1
      right -=1
      return true
    end
  end
end

puts "Nhap chuoi:"
str = gets.chomp
print "Ket qua cach 1: ",Palindrome.is_palindrome1?(str),"\n"
print "Ket qua cach 2: ",Palindrome.is_palindrome2?(str),"\n"
