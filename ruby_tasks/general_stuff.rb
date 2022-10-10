a = %w(Cat Dog Bird)
puts a.grep /^Dog/
profiles = [1, 2, 3, 4, 5, 6, 7, 8]


def my_bloody_method(numbers)
  method_name = __method__
  puts "I am here!"
  puts "method name - #{method_name}"
  numbers.each do |profile|
    puts profile
    return if profile > 4
  end

end

my_bloody_method(profiles)



