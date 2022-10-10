def pattern(n)
  return '' if n < 1
  i = n
  result_arr = []
  row_str = ''
  final_str = ''
  while i > 0 do
    row_str += "#{i}"
    result_arr << row_str
    i -= 1
  end
  final_arr = result_arr.reverse
  final_arr.each_with_index do |line, index|
    if index == final_arr.size - 1
      final_str += "#{line}"
    else
      final_str += "#{line}\n"
    end
  end
  final_str
end

def pattern2(n)
  return '' if n < 1
  i = 1
  row_str = ''
  while i <= n do
    str = (i..n).to_a.join.reverse
    if i == n
      row_str += str
    else
      row_str += "#{str}\n"
    end
    i += 1
  end
  row_str
end


def delete_nth(order,max_e)
  numbers_met = Hash.new(0)
  result_arr = []
  order.each do |num|
    numbers_met[num] += 1
  result_arr << num unless numbers_met[num] > max_e
  end
  result_arr
end

puts delete_nth([1,1,1,1],2)
puts delete_nth([20,37,20,21],1)
