def cach1
  nums = [1, 2, 3]
  letters = ['a', 'b', 'c']
  output = Array.new
  nums.each do |i|
    letters.each do |f|
      output << [i,f]
    end
  end
  print "Cach 1 :",output.to_s,"\n"
end
cach1
#Cach2
def cach2
  nums = [1, 2, 3]
  letters = ['a', 'b', 'c']
  output = Array.new
  nums.each do |i|
    temp = Array.new
    temp << i
    output << temp
  end

  output *=letters.size

  i = 0
  j = 0

  while i < output.size
    while j < letters.size
      k = 0
      while k < nums.size
      output[k] << letters [j]
      k+=1
      j+=1
      end
    end
    i+=1
  end
  print "Cach 2 :",output.to_s,"\n"
end
cach2
