#to match literal at start of string
"Hello World" =~ /^Hello/
output 0  (=~ this pattern is used to get the index of the matched regex)


#Match literal at end of string
"Hello World" =~ /World$/
output 6  

#Match for exact string content
"World" =~ /^World$/
output 0 

#Match for empty string
"" =~ /^$/
output 0

#Don't forget to use backward slash for escape sequences 
"https://" =~ /https:\/\//

#difference between =~ and .match
#=~ is used to give the index of the matched regex
# .match outputs the result(not index)

#checking if the value exists within the range and also at what index it exists
"aa 123" =~ /[0-9]/
output 3

#checking if alphbet exists and also checking the index number
"11 ice" =~ /[a-z]/
3

facts2csv.rb
require 'json'
require 'csv'

# You can filter the facts returned based on a query or just get them all. v3 and v4 API examples.
query = '["=", "certname", "master.inf.puppetlabs.demo"]'
command_v3 = "/usr/bin/curl -G http://localhost:8080/v3/facts --data-urlencode \'query=#{query}\'"
command_v4 = "/usr/bin/curl -G http://localhost:8080/pdb/query/v4/facts --data-urlencode \'query=#{query}\'"
command_all_v3 = "/usr/bin/curl http://localhost:8080/v3/facts"
command_all_v4 = "/usr/bin/curl http://localhost:8080/pdb/query/v4/facts"
# Here's where I select which command to actually use.
command = command_all_v4

# execute the curl command we've chosen to query PuppetDB. Returns data as JSON.
json = %x(#{command})

# convert the JSON returned from PuppetDB into CSV. Magic!
csv_string = CSV.generate do |csv|
  JSON.parse(json).each do |hash|
    csv << hash.values
  end
end

puts csv_string
Comment on gist
 
Comment
 Desktop version



















