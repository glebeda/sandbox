def event_sql_generator
  result_query = []
  insert_statement = "INSERT INTO genealogy_event (Site_ID,Event_ID,Family_Tree_ID,Data_Language,Individual_ID,`Date`,Sorted_Date,`Type`,Structured_Date,Onetime_Processed_Date) VALUES"
  result_query.push(insert_statement)
  site_query = "(1190119351,"
  other_data_query = ",1,'DF',"
  postfix = ",'Between Sep 28 1998 and June 5 1999',199809287,'Circumcision','BET 28 SEP 1998 AND 5 JUN 1999',1),"
  postfix_ending = ",'Between Sep 28 1998 and June 5 1999',199809287,'Circumcision','BET 28 SEP 1998 AND 5 JUN 1999',1);"
  individual_id = 1500004
  event_count = 0
  file_count = 0
  max_events_per_individual = 1000
  max_event_id = 1999997
  (1500001..max_event_id).each do |event_id|
    event_count = event_count + 1
    file_count = file_count + 1
    if file_count == 100000 || event_id == max_event_id
      result_query.push(site_query + event_id.to_s + other_data_query + individual_id.to_s + postfix_ending)
      write_the_file(event_id.to_s, result_query)
      result_query = []
      result_query.push(insert_statement)
      file_count = 0
    else
      result_query.push(site_query + event_id.to_s + other_data_query + individual_id.to_s + postfix)
    end
    if event_count == max_events_per_individual
      individual_id = individual_id + 1
      event_count = 0
    end
  end
end

def write_the_file(file_postfix, result_query)
  query_file = File.new("query_file_#{file_postfix}.txt", "w")
  query_file.puts(result_query)
  query_file.close
end

event_sql_generator
