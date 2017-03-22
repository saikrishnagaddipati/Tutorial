#path to ruby 
require 'csv'
require 'yaml'

csv_data = CSV.read('data.csv')
csv_data.each{|r| puts r.at(1).split('/')[0]}

this script is used on a csv file with the rows with below format
Environment, 11.11.11.1.88, hostname, fqdn, 
The reason behing building the above script is to seperate the Ip address of thousands of servers and import it into a text file.
Hope it helps someone.
