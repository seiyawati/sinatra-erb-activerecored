require 'active_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'tweet.sqlite3')

ActiveRecord::Migration.create_table :tweets do |t|
  t.string :text
  t.timestamp :created_at, :null => false
end

ActiveRecord::Base.connection.disconnect!
