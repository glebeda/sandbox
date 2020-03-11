def capitalize(s)
  #..
  str_arr = s.split(//)
  str1 = ''
  str2 = ''
  i = 0
  while i < str_arr.length do
    if i.even?
      str1 += str_arr[i].upcase
      str2 += str_arr[i]
    else
      str1 += str_arr[i]
      str2 += str_arr[i].upcase
    end
    i += 1
  end
  [str1, str2]
end

puts capitalize('abcdefgdfdsv')
