result_str = "'1501003': {'story_id': '1140'}, "
ind_id = 1501003
story_id = 1140
for i in 0..2000
  ind_id += 1
  story_id += 1
  result_str = result_str + "'#{ind_id}': {'story_id': '#{story_id}'}, "
end
puts result_str
