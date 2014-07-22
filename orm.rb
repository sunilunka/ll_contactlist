require 'pg'

class Orm

  attr_accessor :table

  def initialize
    puts "establishing connection ..."
    conn = PG.connect(
      dbname: 'd4vutbk3po5k25',
      port: 5432,
      user: 'sdvhmghilcfxxd',
      host: 'ec2-54-83-201-54.compute-1.amazonaws.com',
      password: '5nvTHE573WGZsZaPP4XYI1G_01'
    )
 
    # Output all author records from the authors table
    puts "getting contacts ..."
    conn.exec( "SELECT * FROM contacts" ) do |results|
    # results is a collection (array) of records (hashes)... Nice!
      results.each do |contact|
        puts contact.inspect
      end
    end
  
    puts "Closing DB Connection..."
    conn.close

    puts "Connection Closed."

  end

end

  Orm.new

