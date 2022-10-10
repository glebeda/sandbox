@tags = "@cd_all,@shit, @rm,       @sanity"
@tags = @tags.split(Regexp.union([',', ' '])).each{|item| item.include?('@') ? item : item.insert(0, "@")}.reject{|item| item == '@'}
puts @tags
