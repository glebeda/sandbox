def solution(input_str)
  $chars = input_str.split('')
  $pair = 0
  $result = 0
  for i in 0...$chars.length
    if $chars[i] == 'R'
      $pair += 1
    elsif $chars[i] == 'L'
      $pair += -1
    end
    $result += 1 if $pair == 0
  end
  puts $result

end


a = 'RLRRLLRLRRLL'
b = 'RLLLRRRLLR'
c = 'LLRLRLRLRLRLRR'

solution(a)
solution(b)
solution(c)

