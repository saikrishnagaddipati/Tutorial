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


