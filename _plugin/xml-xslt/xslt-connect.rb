#!/usr/bin/ruby -w

require "dbi"

begin
   # connect to the MySQL server
   dbh = DBI.connect("DBI:Mysql:TESTDB:localhost", "user", "")
   # get server version string and display it
   row = dbh.select_one("SELECT VERSION()")
   puts "Server version: " + row[0]
   dbh.do( "INSERT INTO ACCESS(FIRST_NAME, LAST_NAME, AGE, SEX, INCOME)
      VALUES ('A', 'B', 1, 2, 3)" )
   puts "Record has been created!"
   dbh.commit
rescue DBI::DatabaseError => e
   puts "An error occurred"
   puts "Error code:    #{e.err}"
   puts "Error message: #{e.errstr}"
ensure
   # disconnect from server
   dbh.disconnect if dbh
end