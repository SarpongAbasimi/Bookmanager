 require 'pg'

 class DbTestEnvSetUp
   def self.populating_database
    p 'Populating test database table.......'
    connection = PG.connect :dbname => 'bookmark_manager_test'
    connection.exec("INSERT INTO bookmarks (url) VALUES ('www.google.com')")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('www.youtube.com')")
   end

   def self.truncating_setting 
     p 'Truncating test database table.......'
     connection = PG.connect(dbname: 'bookmark_manager_test')
     connection.exec('TRUNCATE bookmarks;')
   end
end

