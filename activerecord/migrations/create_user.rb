require 'active_record'

ActiveRecord::Base.estabilish_connection(adapter: 'splite3', database: 'test.sqplite3')

ActiveRecord::Migration.create_table :users do |t|
  t.string :name
  t.string :email
  t.timestamp :created_at, :null => false
end

ActiveRecord::Base.connection_disconnect!
