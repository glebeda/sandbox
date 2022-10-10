require_relative 'enum_module'

def get_mfa(name)
  puts name
end

def times_loop(number_of_pages)
  #2.times {|i| puts i}
    number_of_pages.times {|i| puts i+1}

end

get_mfa(Mfa_name::WIX_PROD)

#times_loop(3)




