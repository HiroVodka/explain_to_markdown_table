require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: "mysql2",
  host: "mysql",
  username: "root",
  password: nil,
  database: "mysql"
)

unless ActiveRecord::Base.connection.table_exists?("users")
  ActiveRecord::Migration.create_table :users do |t|
    t.string :name
    t.timestamps
  end
end

class User < ActiveRecord::Base
end
