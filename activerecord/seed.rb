require 'active_record'
require './models/user'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'test.sqlite3')

User.destroy_all

User.create(name: "seiya", email: "seiya@example.com", age: 20)
User.create(name: "humiya", email: "humiya@example.com", age: 21)
User.create(name: "satoshi", email: "satoshi@example.com", age: 22)
User.create(name: "tarou", email: "tarou@example.com", age: 23)
User.create(name: "ken", email: "ken@example.com", age: 24)
User.create(name: "kazuya", age: 25)

p User.count

ActiveRecord::Base.connection.disconnect!
