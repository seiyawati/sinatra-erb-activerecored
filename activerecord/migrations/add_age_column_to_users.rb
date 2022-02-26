require 'active_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'test.sqlite3')

ActiveRecord::Migration.add_column :users, :age, :integer

ActiveRecord::Base.connection.disconnect!
