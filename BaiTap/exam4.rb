class EngNum
  DOLON = { 3  => 'hundred',
            4  => 'thousand',
            7  => 'million',
            10 => 'billion',
            13 => 'quadrillion',
            16 => 'quintillion',
            19 => 'sextillion',
            21 => 'septillion',
            24 => 'octillion',
            27 => 'nonillion',
            30 => 'decillion',
            33 => 'undecillion',
            36 => 'duodecillion',
            39 => 'tredecillion',
            42 => 'quattuordecillion',
            45 => 'quindecillion',
            48 => 'sexdecillion',
            51 => 'septendecillion',
            54 => 'octodecillion',
            57 => 'novemdecillion',
            60 => 'vigintillion',
            63 => 'unvigintillion',
            66 => 'duovigintillion',
            69 => 'trevigintillion',
            71 => 'quattuorvigintillion'}
  BANSO = {
          0 => '',
          1 => 'one',
          2 => 'two',
          3 => 'three',
          4 => 'four',
          5 => 'five',
          6 => 'six',
          7 => 'seven',
          8 => 'eight',
          9 => 'nine',
         10 => 'ten',
         11 => 'eleven',
         12 => 'twelve',
         13 => 'thirteen',
         14 => 'fourteen',
         15 => 'fifteen',
         16 => 'sixteen',
         17 => 'seventeen',
         18 => 'eighteen',
         19 => 'nineteen',
         20 => 'twenty',
         30 => 'thirty',
         40 => 'forty',
         50 => 'fifty',
         60 => 'sixty',
         70 => 'seventy',
         80 => 'eighty',
         90 => 'ninety'}

  def EngNum.read_2(num)
    ketqua = ''
    if num < 0
      ketqua = 'Khong hop le'
    elsif num < 20
      ketqua = BANSO[num]
    elsif num < 100
      phandu = num % 10
      num = num / 10
      donvi = BANSO[phandu]
      chuc = BANSO[num*10]
      ketqua = chuc+' ' +donvi

    end
    return ketqua
  end

  def EngNum.read_3(num)
    ketqua = ''
    arr = num.to_s.split('')
    mid = ''
    if arr.size <= 2
      ketqua = EngNum.read_2(num)
    elsif arr.size <= 3
      mid = DOLON[3]
      ketqua = BANSO[arr[0].to_i]
      ketqua += ' ' + mid
      ketqua += ' ' +EngNum.read_2((arr[-2].to_s+arr[-1].to_s).to_i)
    end
    return ketqua
  end

  def EngNum.read_6(num)
    ketqua = ''
    arr = num.to_s.split('')
    mid = ''
    if arr.size <= 6
      mid = DOLON[4]
      if arr.size ==4
        ketqua += ' ' +EngNum.read_3((arr[0].to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_3((arr[-3].to_s+arr[-2].to_s+arr[-1].to_s).to_i)
      elsif arr.size == 5
        ketqua += ' ' +EngNum.read_3((arr[0].to_s+arr[1].to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_3((arr[-3].to_s+arr[-2].to_s+arr[-1].to_s).to_i)
      elsif arr.size == 6
        ketqua += ' ' +EngNum.read_3((arr[0].to_s+arr[1].to_s+arr[2].to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_3((arr[-3].to_s+arr[-2].to_s+arr[-1].to_s).to_i)
      end

    end
    return ketqua
  end

  def EngNum.read_9(num)
    ketqua = ''
    arr = num.to_s.split('')
    mid = ''
    if arr.size <= 9
      mid = DOLON[7]
      if arr.size == 7
        ketqua += ' ' +EngNum.read_2((arr[0].to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_6((arr[1..-1].join('').to_s).to_i)
      elsif arr.size == 8
        ketqua += ' ' +EngNum.read_2((arr[0..1].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_6((arr[2..-1].join('').to_s).to_i)
      elsif arr.size == 9
        ketqua += ' ' +EngNum.read_3((arr[0..2].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_6((arr[3..-1].join('').to_s).to_i)
      end
    end
    return ketqua
  end

  def EngNum.read_12(num)
    ketqua = ''
    arr = num.to_s.split('')
    mid = ''
    if arr.size <= 12
      mid = DOLON[10]
      if arr.size == 10
        ketqua += ' ' +EngNum.read_2((arr[0].to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_9((arr[1..-1].join('').to_s).to_i)
      elsif arr.size == 11
        ketqua += ' ' +EngNum.read_2((arr[0..1].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_9((arr[2..-1].join('').to_s).to_i)
      elsif arr.size == 12
        ketqua += ' ' +EngNum.read_3((arr[0..2].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_9((arr[3..-1].join('').to_s).to_i)
      end
    end
    return ketqua
  end

  def EngNum.read_15(num)
    ketqua = ''
    arr = num.to_s.split('')
    mid = ''
    if arr.size <= 15
      mid = DOLON[13]
      if arr.size == 13
        ketqua += ' ' +EngNum.read_2((arr[0].to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_12((arr[1..-1].join('').to_s).to_i)
      elsif arr.size == 14
        ketqua += ' ' +EngNum.read_2((arr[0..1].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_12((arr[2..-1].join('').to_s).to_i)
      elsif arr.size == 15
        ketqua += ' ' +EngNum.read_3((arr[0..2].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_12((arr[3..-1].join('').to_s).to_i)
      end
    end
    return ketqua
  end

  def EngNum.read_18(num)
    ketqua = ''
    arr = num.to_s.split('')
    mid = ''
    if arr.size <= 18
      mid = DOLON[16]
      if arr.size == 16
        ketqua += ' ' +EngNum.read_2((arr[0].to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_15((arr[1..-1].join('').to_s).to_i)
      elsif arr.size == 17
        ketqua += ' ' +EngNum.read_2((arr[0..1].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_15((arr[2..-1].join('').to_s).to_i)
      elsif arr.size == 18
        ketqua += ' ' +EngNum.read_3((arr[0..2].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_15((arr[3..-1].join('').to_s).to_i)
      end
    end
    return ketqua
  end

  def EngNum.read_21(num)
    ketqua = ''
    arr = num.to_s.split('')
    mid = ''
    if arr.size <= 21
      mid = DOLON[19]
      if arr.size == 19
        ketqua += ' ' +EngNum.read_2((arr[0].to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_18((arr[1..-1].join('').to_s).to_i)
      elsif arr.size == 20
        ketqua += ' ' +EngNum.read_2((arr[0..1].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_18((arr[2..-1].join('').to_s).to_i)
      elsif arr.size == 21
        ketqua += ' ' +EngNum.read_3((arr[0..2].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_18((arr[3..-1].join('').to_s).to_i)
      end
    end
    return ketqua
  end

  def EngNum.read_24(num)
    ketqua = ''
    arr = num.to_s.split('')
    mid = ''
    if arr.size <= 24
      mid = DOLON[21]
      if arr.size == 22
        ketqua += ' ' +EngNum.read_2((arr[0].to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_21((arr[1..-1].join('').to_s).to_i)
      elsif arr.size == 23
        ketqua += ' ' +EngNum.read_2((arr[0..1].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_21((arr[2..-1].join('').to_s).to_i)
      elsif arr.size == 24
        ketqua += ' ' +EngNum.read_3((arr[0..2].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_21((arr[3..-1].join('').to_s).to_i)
      end
    end
    return ketqua
  end

  def EngNum.read_27(num)
    ketqua = ''
    arr = num.to_s.split('')
    mid = ''
    if arr.size <= 27
      mid = DOLON[24]
      if arr.size == 25
        ketqua += ' ' +EngNum.read_2((arr[0].to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_24((arr[1..-1].join('').to_s).to_i)
      elsif arr.size == 26
        ketqua += ' ' +EngNum.read_2((arr[0..1].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_24((arr[2..-1].join('').to_s).to_i)
      elsif arr.size == 27
        ketqua += ' ' +EngNum.read_3((arr[0..2].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_24((arr[3..-1].join('').to_s).to_i)
      end
    end
    return ketqua
  end

  def EngNum.read_30(num)
    ketqua = ''
    arr = num.to_s.split('')
    mid = ''
    if arr.size <= 30
      mid = DOLON[27]
      if arr.size == 28
        ketqua += ' ' +EngNum.read_2((arr[0].to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_27((arr[1..-1].join('').to_s).to_i)
      elsif arr.size == 29
        ketqua += ' ' +EngNum.read_2((arr[0..1].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_27((arr[2..-1].join('').to_s).to_i)
      elsif arr.size == 30
        ketqua += ' ' +EngNum.read_3((arr[0..2].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_27((arr[3..-1].join('').to_s).to_i)
      end
    end
    return ketqua
  end

  def EngNum.read_33(num)
    ketqua = ''
    arr = num.to_s.split('')
    mid = ''
    if arr.size <= 33
      mid = DOLON[30]
      if arr.size == 31
        ketqua += ' ' +EngNum.read_2((arr[0].to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_30((arr[1..-1].join('').to_s).to_i)
      elsif arr.size == 32
        ketqua += ' ' +EngNum.read_2((arr[0..1].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_30((arr[2..-1].join('').to_s).to_i)
      elsif arr.size == 33
        ketqua += ' ' +EngNum.read_3((arr[0..2].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_30((arr[3..-1].join('').to_s).to_i)
      end
    end
    return ketqua
  end

  def EngNum.read_36(num)
    ketqua = ''
    arr = num.to_s.split('')
    mid = ''
    if arr.size <= 36
      mid = DOLON[33]
      if arr.size == 34
        ketqua += ' ' +EngNum.read_2((arr[0].to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_33((arr[1..-1].join('').to_s).to_i)
      elsif arr.size == 35
        ketqua += ' ' +EngNum.read_2((arr[0..1].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_33((arr[2..-1].join('').to_s).to_i)
      elsif arr.size == 36
        ketqua += ' ' +EngNum.read_3((arr[0..2].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_33((arr[3..-1].join('').to_s).to_i)
      end
    end
    return ketqua
  end

  def EngNum.read_39(num)
    ketqua = ''
    arr = num.to_s.split('')
    mid = ''
    if arr.size <= 39
      mid = DOLON[36]
      if arr.size == 37
        ketqua += ' ' +EngNum.read_2((arr[0].to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_36((arr[1..-1].join('').to_s).to_i)
      elsif arr.size == 38
        ketqua += ' ' +EngNum.read_2((arr[0..1].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_36((arr[2..-1].join('').to_s).to_i)
      elsif arr.size == 39
        ketqua += ' ' +EngNum.read_3((arr[0..2].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_36((arr[3..-1].join('').to_s).to_i)
      end
    end
    return ketqua
  end

  def EngNum.read_42(num)
    ketqua = ''
    arr = num.to_s.split('')
    mid = ''
    if arr.size <= 42
      mid = DOLON[39]
      if arr.size == 40
        ketqua += ' ' +EngNum.read_2((arr[0].to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_39((arr[1..-1].join('').to_s).to_i)
      elsif arr.size == 41
        ketqua += ' ' +EngNum.read_2((arr[0..1].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_39((arr[2..-1].join('').to_s).to_i)
      elsif arr.size == 42
        ketqua += ' ' +EngNum.read_3((arr[0..2].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_39((arr[3..-1].join('').to_s).to_i)
      end
    end
    return ketqua
  end

  def EngNum.read_45(num)
    ketqua = ''
    arr = num.to_s.split('')
    mid = ''
    if arr.size <= 45
      mid = DOLON[42]
      if arr.size == 43
        ketqua += ' ' +EngNum.read_2((arr[0].to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_42((arr[1..-1].join('').to_s).to_i)
      elsif arr.size == 44
        ketqua += ' ' +EngNum.read_2((arr[0..1].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_42((arr[2..-1].join('').to_s).to_i)
      elsif arr.size == 45
        ketqua += ' ' +EngNum.read_3((arr[0..2].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_42((arr[3..-1].join('').to_s).to_i)
      end
    end
    return ketqua
  end

  def EngNum.read_48(num)
    ketqua = ''
    arr = num.to_s.split('')
    mid = ''
    if arr.size <= 48
      mid = DOLON[45]
      if arr.size == 46
        ketqua += ' ' +EngNum.read_2((arr[0].to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_45((arr[1..-1].join('').to_s).to_i)
      elsif arr.size == 47
        ketqua += ' ' +EngNum.read_2((arr[0..1].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_45((arr[2..-1].join('').to_s).to_i)
      elsif arr.size == 48
        ketqua += ' ' +EngNum.read_3((arr[0..2].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_45((arr[3..-1].join('').to_s).to_i)
      end
    end
    return ketqua
  end

  def EngNum.read_51(num)
    ketqua = ''
    arr = num.to_s.split('')
    mid = ''
    if arr.size <= 51
      mid = DOLON[48]
      if arr.size == 49
        ketqua += ' ' +EngNum.read_2((arr[0].to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_48((arr[1..-1].join('').to_s).to_i)
      elsif arr.size == 50
        ketqua += ' ' +EngNum.read_2((arr[0..1].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_48((arr[2..-1].join('').to_s).to_i)
      elsif arr.size == 51
        ketqua += ' ' +EngNum.read_3((arr[0..2].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_48((arr[3..-1].join('').to_s).to_i)
      end
    end
    return ketqua
  end

  def EngNum.read_54(num)
    ketqua = ''
    arr = num.to_s.split('')
    mid = ''
    if arr.size <= 54
      mid = DOLON[51]
      if arr.size == 52
        ketqua += ' ' +EngNum.read_2((arr[0].to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_51((arr[1..-1].join('').to_s).to_i)
      elsif arr.size == 53
        ketqua += ' ' +EngNum.read_2((arr[0..1].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_51((arr[2..-1].join('').to_s).to_i)
      elsif arr.size == 54
        ketqua += ' ' +EngNum.read_3((arr[0..2].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_51((arr[3..-1].join('').to_s).to_i)
      end
    end
    return ketqua
  end

  def EngNum.read_57(num)
    ketqua = ''
    arr = num.to_s.split('')
    mid = ''
    if arr.size <= 57
      mid = DOLON[54]
      if arr.size == 55
        ketqua += ' ' +EngNum.read_2((arr[0].to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_54((arr[1..-1].join('').to_s).to_i)
      elsif arr.size == 56
        ketqua += ' ' +EngNum.read_2((arr[0..1].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_54((arr[2..-1].join('').to_s).to_i)
      elsif arr.size == 57
        ketqua += ' ' +EngNum.read_3((arr[0..2].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_54((arr[3..-1].join('').to_s).to_i)
      end
    end
    return ketqua
  end

  def EngNum.read_60(num)
    ketqua = ''
    arr = num.to_s.split('')
    mid = ''
    if arr.size <= 60
      mid = DOLON[57]
      if arr.size == 58
        ketqua += ' ' +EngNum.read_2((arr[0].to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_57((arr[1..-1].join('').to_s).to_i)
      elsif arr.size == 59
        ketqua += ' ' +EngNum.read_2((arr[0..1].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_57((arr[2..-1].join('').to_s).to_i)
      elsif arr.size == 60
        ketqua += ' ' +EngNum.read_3((arr[0..2].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_57((arr[3..-1].join('').to_s).to_i)
      end
    end
    return ketqua
  end

  def EngNum.read_63(num)
    ketqua = ''
    arr = num.to_s.split('')
    mid = ''
    if arr.size <= 63
      mid = DOLON[60]
      if arr.size == 61
        ketqua += ' ' +EngNum.read_2((arr[0].to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_60((arr[1..-1].join('').to_s).to_i)
      elsif arr.size == 62
        ketqua += ' ' +EngNum.read_2((arr[0..1].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_60((arr[2..-1].join('').to_s).to_i)
      elsif arr.size == 63
        ketqua += ' ' +EngNum.read_3((arr[0..2].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_60((arr[3..-1].join('').to_s).to_i)
      end
    end
    return ketqua
  end

  def EngNum.read_66(num)
    ketqua = ''
    arr = num.to_s.split('')
    mid = ''
    if arr.size <= 66
      mid = DOLON[63]
      if arr.size == 64
        ketqua += ' ' +EngNum.read_2((arr[0].to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_63((arr[1..-1].join('').to_s).to_i)
      elsif arr.size == 65
        ketqua += ' ' +EngNum.read_2((arr[0..1].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_63((arr[2..-1].join('').to_s).to_i)
      elsif arr.size == 66
        ketqua += ' ' +EngNum.read_3((arr[0..2].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_63((arr[3..-1].join('').to_s).to_i)
      end
    end
    return ketqua
  end

  def EngNum.read_69(num)
    ketqua = ''
    arr = num.to_s.split('')
    mid = ''
    if arr.size <= 69
      mid = DOLON[66]
      if arr.size == 67
        ketqua += ' ' +EngNum.read_2((arr[0].to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_66((arr[1..-1].join('').to_s).to_i)
      elsif arr.size == 68
        ketqua += ' ' +EngNum.read_2((arr[0..1].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_66((arr[2..-1].join('').to_s).to_i)
      elsif arr.size == 69
        ketqua += ' ' +EngNum.read_3((arr[0..2].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_66((arr[3..-1].join('').to_s).to_i)
      end
    end
    return ketqua
  end

  def EngNum.read_72(num)
    ketqua = ''
    arr = num.to_s.split('')
    mid = ''
    if arr.size <= 72
      mid = DOLON[69]
      if arr.size == 70
        ketqua += ' ' +EngNum.read_2((arr[0].to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_69((arr[1..-1].join('').to_s).to_i)
      elsif arr.size == 71
        ketqua += ' ' +EngNum.read_2((arr[0..1].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_69((arr[2..-1].join('').to_s).to_i)
      elsif arr.size == 72
        ketqua += ' ' +EngNum.read_3((arr[0..2].join('').to_s).to_i)
        ketqua += ' ' + mid
        ketqua += ' ' +EngNum.read_69((arr[3..-1].join('').to_s).to_i)
      end
    end
    return ketqua
  end

end

puts "Luu y chi doc duoc toi da 72 so"
print "Nhap so : > "
nhap = gets.chomp
if nhap.length <= 2
  puts EngNum.read_2(nhap.to_i)
elsif nhap.length <= 3
  puts EngNum.read_3(nhap.to_i)
elsif nhap.length <= 6
  puts EngNum.read_6(nhap.to_i)
elsif nhap.length <= 9
  puts EngNum.read_9(nhap.to_i)
elsif nhap.length <= 12
  puts EngNum.read_12(nhap.to_i)
elsif nhap.length <= 15
  puts EngNum.read_15(nhap.to_i)
elsif nhap.length <= 18
  puts EngNum.read_18(nhap.to_i)
elsif nhap.length <= 21
  puts EngNum.read_21(nhap.to_i)
elsif nhap.length <= 24
  puts EngNum.read_24(nhap.to_i)
elsif nhap.length <= 27
  puts EngNum.read_27(nhap.to_i)
elsif nhap.length <= 30
  puts EngNum.read_30(nhap.to_i)
elsif nhap.length <= 33
  puts EngNum.read_33(nhap.to_i)
elsif nhap.length <= 36
  puts EngNum.read_36(nhap.to_i)
elsif nhap.length <= 39
  puts EngNum.read_39(nhap.to_i)
elsif nhap.length <= 42
  puts EngNum.read_42(nhap.to_i)
elsif nhap.length <= 45
  puts EngNum.read_45(nhap.to_i)
elsif nhap.length <= 48
  puts EngNum.read_48(nhap.to_i)
elsif nhap.length <= 51
  puts EngNum.read_51(nhap.to_i)
elsif nhap.length <= 54
  puts EngNum.read_54(nhap.to_i)
elsif nhap.length <= 57
  puts EngNum.read_57(nhap.to_i)
elsif nhap.length <= 60
  puts EngNum.read_60(nhap.to_i)
elsif nhap.length <= 63
  puts EngNum.read_63(nhap.to_i)
elsif nhap.length <= 66
  puts EngNum.read_66(nhap.to_i)
elsif nhap.length <= 69
  puts EngNum.read_69(nhap.to_i)
elsif nhap.length <= 72
  puts EngNum.read_72(nhap.to_i)
else
  puts "qua 72 ki tu khong doc duoc"
end
