require 'active_record'
require './models/tweet'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'tweet.sqlite3')

Tweet.destroy_all

Tweet.create(text: "Hello World!")
Tweet.create(text: "Good Night!")
Tweet.create(text: "Sample App")
Tweet.create(text: "Test Data")

ActiveRecord::Base.connection.disconnect!
