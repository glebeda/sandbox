# require 'timeout'
# include Timeout
#
# popup_exists = false
# Timeout.timeout(60) do
#   puts("clicking on button")
#   sleep 6
#   popup_exists ? break : puts("Trying to click on button again")
# end
# puts "finished"


title = "I INDEX wanna be your dog"
title = title.downcase
errors = []
blacklisted_strings = ['index', 'records']
blacklisted_strings.each do |string|
  if title.include?(string)
    errors << "Blacklisted string: #{string} was found in collection title!"
  end
end
puts errors

#array_of_urls.reject { |title| title.match(/dog/) }
