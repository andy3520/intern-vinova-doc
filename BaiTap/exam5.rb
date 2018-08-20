class RomanNum
  DONVI = {
              1 => 'I',
              2 => 'II',
              3 => 'III',
              4 => 'IV',
              5 => 'V',
              6 => 'VI',
              7 => 'VII',
              8 => 'VIII',
              9 => 'IX'
              }

    CHUC = {
            1 => 'X',
            2 => 'XX',
            3 => 'XXX',
            4 => 'XL',
            5 => 'L',
            6 => 'LX',
            7 => 'LXX',
            8 => 'LXXX',
            9 => 'XC'
            }

    TRAM = {
            1 => 'C',
            2 => 'CC',
            3 => 'CCC',
            4 => 'CD',
            5 => 'D',
            6 => 'DC',
            7 => 'DCC',
            8 => 'DCCC',
            9 => 'CM'
            }

    NGAN =  {
            1 => 'M',
            2 => 'MM',
            3 => 'MMM'
            }

  def RomanNum.value(char)
    case char.to_s
      when 'I'
        return 1
      when 'V'
        return 5
      when 'X'
        return 10
      when 'L'
        return 50
      when 'C'
        return 100
      when 'D'
        return 500
      when 'M'
        return 1000
      else
        return -1
    end
  end

  def RomanNum.Rom2Dec(char)
    ketqua = 0
    arr = char.to_s.split('')
    l = arr.length.to_i
    count = 0
    while count < l

      v1 = RomanNum.value(arr[count]).to_i
      if (count+1)<l
        v2 = RomanNum.value(arr[count+1]).to_i
        if v1 >= v2
          ketqua += v1
        else
          ketqua = ketqua + v2 - v1
          count+=1
        end
        count+=1
      else
        ketqua += v1
        count+=1
      end

    end
    return ketqua
  end

  def RomanNum.Dec2Rom(num)
    ketqua = ''
    if num <= 0
      puts "Vui long nhap > 0"
      return
    elsif num >= 4000
      puts "Vuot gioi han so la ma toi da la 3999"
      return
    else
      arr = num.to_s.split('')
      case arr.length
        when 1
          return ketqua = DONVI[arr[0].to_i]
        when 2
          ketqua = CHUC[arr[0].to_i]
          ketqua += DONVI[arr[-1].to_i]
          return ketqua
        when 3
          ketqua = TRAM[arr[0].to_i]
          ketqua += CHUC[arr[1].to_i]
          ketqua += DONVI[arr[-1].to_i]
          return ketqua
        when 4
          ketqua = NGAN[arr[0].to_i]
          ketqua += TRAM[arr[1].to_i]
          ketqua += CHUC[arr[2].to_i]
          ketqua += DONVI[arr[-1].to_i]
        return ketqua
      end
    end
  end
end

puts """
1.Roman to Decimal
2.Decimal to Roman
Choose function:
"""

chon = gets.chomp

case chon.to_i
  when 1
    puts "Type Roman Num:"
    char = gets.chomp
    puts "Decimal Value:"
    puts RomanNum.Rom2Dec(char.to_s)
  when 2
    puts "Type Decimal Num:"
    num = gets.chomp
    puts "Decimal Value:"
    puts RomanNum.Dec2Rom(num.to_i)
end

