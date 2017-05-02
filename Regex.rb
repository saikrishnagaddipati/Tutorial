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
