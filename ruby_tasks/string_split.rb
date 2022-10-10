require "test/unit/assertions"
include Test::Unit::Assertions

def split_str(input)
  input.split(':').join
end

def assert_test
  assert true
  puts 'Valera'
end

assert_test
#split_str('xxx:yyy:zzz')
